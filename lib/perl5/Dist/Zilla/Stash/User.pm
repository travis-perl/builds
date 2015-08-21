package Dist::Zilla::Stash::User;
# ABSTRACT: a stash of user name and email
$Dist::Zilla::Stash::User::VERSION = '5.039';
use Moose;

use namespace::autoclean;

has name => (
  is  => 'ro',
  isa => 'Str',
  required => 1,
);

has email => (
  is  => 'ro',
  isa => 'Str',
  required => 1,
);

sub authors {
  my ($self) = @_;
  return [ sprintf "%s <%s>", $self->name, $self->email ];
}

with 'Dist::Zilla::Role::Stash::Authors';
__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Stash::User - a stash of user name and email

=head1 VERSION

version 5.039

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
