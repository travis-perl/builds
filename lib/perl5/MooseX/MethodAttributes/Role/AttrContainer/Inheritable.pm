package MooseX::MethodAttributes::Role::AttrContainer::Inheritable;
{
  $MooseX::MethodAttributes::Role::AttrContainer::Inheritable::VERSION = '0.29';
}
BEGIN {
  $MooseX::MethodAttributes::Role::AttrContainer::Inheritable::AUTHORITY = 'cpan:FLORA';
}
# ABSTRACT: capture code attributes in the automatically initialized metaclass instance


use Moose::Role;
use MooseX::MethodAttributes ();

use namespace::autoclean;

with 'MooseX::MethodAttributes::Role::AttrContainer';

before MODIFY_CODE_ATTRIBUTES => sub {
    my ($class, $code, @attrs) = @_;
    return unless @attrs;
    MooseX::MethodAttributes->init_meta( for_class => $class );
};

1;

__END__

=pod

=encoding UTF-8

=for :stopwords Florian Ragwitz Tomas Doran

=head1 NAME

MooseX::MethodAttributes::Role::AttrContainer::Inheritable - capture code attributes in the automatically initialized metaclass instance

=head1 VERSION

version 0.29

=head1 DESCRIPTION

This role extends C<MooseX::MethodAttributes::Role::AttrContainer> with the
functionality of automatically initializing a metaclass for the caller and
applying the meta roles relevant for capturing method attributes.

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
