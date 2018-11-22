package Specio::Subs;

use strict;
use warnings;

our $VERSION = '0.43';

use Carp qw( croak );
use Eval::Closure qw( eval_closure );
use Module::Runtime qw( use_package_optimistically );
use Specio::Library::Perl;
use Specio::Registry qw( exportable_types_for_package );

my $counter = 0;

sub import {
    shift;
    my @libs = @_;

    my $caller = caller();

    my $ident = t('Identifier');

    use_package_optimistically($_) for @libs;

    for my $types ( map { exportable_types_for_package($_) } @libs ) {
        for my $name ( keys %{$types} ) {
            croak
                qq{Cannot use '$name' type to create a check sub. It results in an invalid Perl subroutine name}
                unless $ident->check( 'is_' . $name );

            _export_subs( $name, $types->{$name}, $caller );
        }
    }
}

sub _export_subs {
    my $name   = shift;
    my $type   = shift;
    my $caller = shift;

    _export_validation_subs( $name, $type, $caller );

    return unless $type->has_coercions;

    _export_coercion_subs( $name, $type, $caller );
}

sub _export_validation_subs {
    my $name   = shift;
    my $type   = shift;
    my $caller = shift;

    my $is_name     = 'is_' . $name;
    my $assert_name = 'assert_' . $name;
    if ( $type->can_be_inlined ) {
        _make_sub(
            $caller, $is_name,
            $type->inline_check('$_[0]')
        );
        _make_sub(
            $caller, $assert_name,
            $type->inline_assert('$_[0]')
        );
    }
    else {
        _install_sub(
            $caller, $is_name,
            sub { $type->value_is_valid( $_[0] ) }
        );
        _install_sub(
            $caller, $assert_name,
            sub { $type->validate_or_die( $_[0] ) }
        );
    }
}

sub _export_coercion_subs {
    my $name   = shift;
    my $type   = shift;
    my $caller = shift;

    my $to_name = 'to_' . $name;
    if ( $type->can_inline_coercion ) {
        _make_sub(
            $caller, $to_name,
            $type->inline_coercion('$_[0]')
        );
    }
    else {
        _install_sub(
            $caller, $to_name,
            sub { $type->coerce_value( $_[0] ) }
        );
    }

    my $force_name = 'force_' . $name;
    if ( $type->can_inline_coercion_and_check ) {
        _make_sub(
            $caller, $force_name,
            $type->inline_coercion_and_check('$_[0]')
        );
    }
    else {
        _install_sub(
            $caller, $force_name,
            sub {
                my $val = $type->coerce_value( $_[0] );
                $type->validate_or_die($val);
                return $val;
            }
        );
    }
}

sub _make_sub {
    my $caller   = shift;
    my $sub_name = shift;
    my $source   = shift;
    my $env      = shift;

    my $sub = eval_closure(
        source      => 'sub { ' . $source . ' }',
        environment => $env,
        description => $caller . '::'
            . $sub_name
            . ' generated by '
            . __PACKAGE__,
    );

    _install_sub( $caller, $sub_name, $sub );

    return;
}

my $sub_namer = do {
    eval {
        require Sub::Util;
        Sub::Util->VERSION(1.40);
        Sub::Util->can('set_subname');
    } or eval {
        require Sub::Name;
        Sub::Name->can('subname');
    }
        or sub { return $_[1] };
};

my %Installed;

sub _install_sub {
    my $caller   = shift;
    my $sub_name = shift;
    my $sub      = shift;

    my $fq_name = $caller . '::' . $sub_name;

    {
        ## no critic (TestingAndDebugging::ProhibitNoStrict)
        no strict 'refs';
        *{$fq_name} = $sub_namer->( $fq_name, $sub );
    }

    $Installed{$caller} ||= [];
    push @{ $Installed{$caller} }, $sub_name;

    return;
}

sub subs_installed_into {
    my $package = shift;

    return @{ $Installed{$package} || [] };
}

1;

# ABSTRACT: Make validation and coercion subs from Specio types

__END__

=pod

=encoding UTF-8

=head1 NAME

Specio::Subs - Make validation and coercion subs from Specio types

=head1 VERSION

version 0.43

=head1 SYNOPSIS

  use Specio::Subs qw( Specio::Library::Builtins Specio::Library::Perl My::Lib );

  if ( is_PackageName($var) ) { ... }

  assert_Str($var);

  my $person1 = to_Person($var);
  my $person2 = force_Person($var);

=head1 DESCRIPTION

This module generates a set of helpful validation and coercion subroutines for
all of the types defined in one or more libraries.

To use it, simply import C<Specio::Subs> passing a list of one or more library
names. This module will load those libraries as needed.

If any of the types in any libraries have names that do not work as part of a
Perl subroutine name, this module will throw an exception.

If you have L<Sub::Util> or L<Sub::Name> installed, one of those will be used
to name the generated subroutines.

=head1 "EXPORTS"

The following subs are created in the importing package:

=head2 is_$type($value)

This subroutine returns a boolean indicating whether or not the C<$value> is
valid for the type.

=head2 assert_$type($value)

This subroutine dies if the C<$value> is not valid for the type.

=head2 to_$type($value)

This subroutine attempts to coerce C<$value> into the given type. If it cannot
be coerced it returns the original C<$value>.

This is only created if the type has coercions.

=head2 force_$type($value)

This subroutine attempts to coerce C<$value> into the given type, and dies if
it cannot do so.

This is only created if the type has coercions.

=head1 ADDITIONAL API

=for Pod::Coverage subs_installed_into

This module has a subroutine named C<subs_installed_into>. It is not exported
but it can be called by its fully qualified name. It accepts a single
argument, a package name. It returns a list of subs that it generated and
installed in the given package, if any.

This exists to make it easy to write a type library that combines other
library and generates helper subs for export all at once.

=head1 SUPPORT

Bugs may be submitted at L<https://github.com/houseabsolute/Specio/issues>.

I am also usually active on IRC as 'autarch' on C<irc://irc.perl.org>.

=head1 SOURCE

The source code repository for Specio can be found at L<https://github.com/houseabsolute/Specio>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 - 2018 by Dave Rolsky.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)

The full text of the license can be found in the
F<LICENSE> file included with this distribution.

=cut
