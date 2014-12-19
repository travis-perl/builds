package MooseX::MethodAttributes::Inheritable;
{
  $MooseX::MethodAttributes::Inheritable::VERSION = '0.29';
}
BEGIN {
  $MooseX::MethodAttributes::Inheritable::AUTHORITY = 'cpan:FLORA';
}
# ABSTRACT: inheritable code attribute introspection


# Ensure trait is registered
use MooseX::MethodAttributes::Role::Meta::Role ();

use Moose;

use namespace::autoclean;

with 'MooseX::MethodAttributes::Role::AttrContainer::Inheritable';

__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=encoding UTF-8

=for :stopwords Florian Ragwitz Tomas Doran

=head1 NAME

MooseX::MethodAttributes::Inheritable - inheritable code attribute introspection

=head1 VERSION

version 0.29

=head1 SYNOPSIS

    package BaseClass;
    use base qw/MooseX::MethodAttributes::Inheritable/;

    package SubClass;
    use base qw/BaseClass/;

    sub foo : Bar {}

    my $attrs = SubClass->meta->get_method('foo')->attributes; # ["Bar"]

=head1 DESCRIPTION

This module does the same as C<MooseX::MethodAttributes>, except that classes
inheriting from other classes using it don't need to do anything special to get
their code attributes captured.

Note that instead of inheriting from this module, you can instead simply
compose (C<with>) the L<MooseX::MethodAttributes::Role::AttrContainer::Inheritable> role.

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

=cut
