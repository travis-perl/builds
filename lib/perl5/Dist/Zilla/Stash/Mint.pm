package Dist::Zilla::Stash::Mint;
# ABSTRACT: a stash of your default minting provider/profile
$Dist::Zilla::Stash::Mint::VERSION = '5.047';
use Moose;
with 'Dist::Zilla::Role::Stash';

use namespace::autoclean;

has provider => (
  is  => 'ro',
  isa => 'Str',
  required => 0,
  default => 'Default',
);

has profile => (
  is  => 'ro',
  isa => 'Str',
  required => 0,
  default => 'default',
);

__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Stash::Mint - a stash of your default minting provider/profile

=head1 VERSION

version 5.047

=head1 AUTHOR

Ricardo SIGNES 🎃 <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
