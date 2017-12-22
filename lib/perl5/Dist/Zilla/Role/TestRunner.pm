package Dist::Zilla::Role::TestRunner 6.010;
# ABSTRACT: something used as a delegating agent to 'dzil test'

use Moose::Role;
with 'Dist::Zilla::Role::Plugin';

use namespace::autoclean;

#pod =head1 DESCRIPTION
#pod
#pod Plugins implementing this role have their C<test> method called when
#pod testing.  It's passed the root directory of the build test dir and an
#pod optional hash reference of arguments.  Valid arguments include:
#pod
#pod =for :list
#pod * jobs -- if parallel testing is supported, this indicates how many to run at once
#pod
#pod =method test
#pod
#pod This method should throw an exception on failure.
#pod
#pod =cut

requires 'test';

#pod =attr default_jobs
#pod
#pod This attribute is the default value that should be used as the C<jobs> argument
#pod to the C<test> method.
#pod
#pod =cut

has default_jobs => (
  is      => 'ro',
  isa     => 'Int', # non-negative
  default => 1,
);

around dump_config => sub {
  my ($orig, $self) = @_;
  my $config = $self->$orig;

  $config->{'' . __PACKAGE__} = { default_jobs => $self->default_jobs };

  return $config;
};

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Role::TestRunner - something used as a delegating agent to 'dzil test'

=head1 VERSION

version 6.010

=head1 DESCRIPTION

Plugins implementing this role have their C<test> method called when
testing.  It's passed the root directory of the build test dir and an
optional hash reference of arguments.  Valid arguments include:

=over 4

=item *

jobs -- if parallel testing is supported, this indicates how many to run at once

=back

=head1 ATTRIBUTES

=head2 default_jobs

This attribute is the default value that should be used as the C<jobs> argument
to the C<test> method.

=head1 METHODS

=head2 test

This method should throw an exception on failure.

=head1 AUTHOR

Ricardo SIGNES 😏 <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
