package MooseX::MethodAttributes::Role::Meta::Method::MaybeWrapped;
{
  $MooseX::MethodAttributes::Role::Meta::Method::MaybeWrapped::VERSION = '0.29';
}
BEGIN {
  $MooseX::MethodAttributes::Role::Meta::Method::MaybeWrapped::AUTHORITY = 'cpan:FLORA';
}
# ABSTRACT: proxy attributes of wrapped methods if their metaclass supports it

use Moose::Role;
use Moose::Util qw/does_role/;
use MooseX::MethodAttributes::Role::Meta::Method::Wrapped;

use namespace::autoclean;

override wrap => sub {
    my $self = super;
    my $original_method = $self->get_original_method;
    if (
        does_role($original_method, 'MooseX::MethodAttributes::Role::Meta::Method')
        || does_role($original_method, 'MooseX::MethodAttributes::Role::Meta::Method::Wrapped')
    ) {
        MooseX::MethodAttributes::Role::Meta::Method::Wrapped->meta->apply($self);
    }
    return $self;
};

1;

__END__

=pod

=encoding UTF-8

=for :stopwords Florian Ragwitz Tomas Doran Dave Karman (t0m) Rolsky David Steinbrunner
Karen Etheridge Marcus Ramberg Peter E

=head1 NAME

MooseX::MethodAttributes::Role::Meta::Method::MaybeWrapped - proxy attributes of wrapped methods if their metaclass supports it

=head1 VERSION

version 0.29

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
