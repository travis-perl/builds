package Dist::Zilla::Stash::Rights;
# ABSTRACT: a stash of your default licensing terms
$Dist::Zilla::Stash::Rights::VERSION = '5.020';
use Moose;
with 'Dist::Zilla::Role::Stash';

use namespace::autoclean;

has license_class => (
  is  => 'ro',
  isa => 'Str',
  required => 1,
);

has copyright_holder => (
  is  => 'ro',
  isa => 'Str',
  required => 1,
);

has copyright_year => (
  is  => 'ro',
  isa => 'Int',
);

__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Stash::Rights - a stash of your default licensing terms

=head1 VERSION

version 5.020

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
