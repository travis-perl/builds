package MooseX::MethodAttributes;
{
  $MooseX::MethodAttributes::VERSION = '0.29';
}
# git description: v0.28-17-g7c32d1f

BEGIN {
  $MooseX::MethodAttributes::AUTHORITY = 'cpan:FLORA';
}
# ABSTRACT: code attribute introspection

use Moose ();
use Moose::Exporter;
use Moose::Util::MetaRole;
use Moose::Util qw/find_meta does_role/;
# Ensure trait is registered
use MooseX::MethodAttributes::Role::Meta::Role ();


Moose::Exporter->setup_import_methods(
    also => 'Moose',
);

sub init_meta {
    my ($class, %options) = @_;

    my $for_class = $options{for_class};
    my $meta = find_meta($for_class);

    return $meta if $meta
        && does_role($meta, 'MooseX::MethodAttributes::Role::Meta::Class')
        && does_role($meta->method_metaclass, 'MooseX::MethodAttributes::Role::Meta::Method')
        && does_role($meta->wrapped_method_metaclass, 'MooseX::MethodAttributes::Role::Meta::Method::MaybeWrapped');

    $meta = Moose::Meta::Class->create( $for_class )
        unless $meta;

    $meta = Moose::Util::MetaRole::apply_metaroles(
        for             => $for_class,
        class_metaroles => {
            class  => ['MooseX::MethodAttributes::Role::Meta::Class'],
            method => ['MooseX::MethodAttributes::Role::Meta::Method'],
            wrapped_method => [
                'MooseX::MethodAttributes::Role::Meta::Method::MaybeWrapped'],
        },
    );

    Moose::Util::MetaRole::apply_base_class_roles(
        for_class => $for_class,
        roles     => ['MooseX::MethodAttributes::Role::AttrContainer'],
    );

    return $meta;
}

1;

__END__

=pod

=encoding UTF-8

=for :stopwords Florian Ragwitz Tomas Doran Dave Karman (t0m) Rolsky David Steinbrunner
Karen Etheridge Marcus Ramberg Peter E

=head1 NAME

MooseX::MethodAttributes - code attribute introspection

=head1 VERSION

version 0.29

=head1 SYNOPSIS

    package MyClass;

    use Moose;
    use MooseX::MethodAttributes;

    sub foo : Bar Baz('corge') { ... }

    my $attrs = MyClass->meta->get_method('foo')->attributes; # ["Bar", "Baz('corge')"]

=head1 DESCRIPTION

This module allows code attributes of methods to be introspected using Moose
meta method objects.

=for Pod::Coverage init_meta

=head1 AUTHORS

=over 4

=item *

Florian Ragwitz <rafl@debian.org>

=item *

Tomas Doran <bobtfish@bobtfish.net>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Florian Ragwitz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 CONTRIBUTORS

=over 4

=item *

Dave Rolsky <autarch@urth.org>

=item *

David Steinbrunner <dsteinbrunner@pobox.com>

=item *

Karen Etheridge <ether@cpan.org>

=item *

Marcus Ramberg <marcus@nordaaker.com>

=item *

Peter E Karman <pek@dewpoint.msi.umn.edu>

=item *

Tomas Doran (t0m) <bobtfish@bobtfish.net>

=back

=cut
