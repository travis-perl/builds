package Dist::Zilla::Plugin::MakeMaker::Runner;
# ABSTRACT: Test and build dists with a Makefile.PL
$Dist::Zilla::Plugin::MakeMaker::Runner::VERSION = '5.019';
use Moose;
with(
  'Dist::Zilla::Role::BuildRunner',
  'Dist::Zilla::Role::TestRunner',
);

use namespace::autoclean;

use Config;

has 'make_path' => (
  isa => 'Str',
  is  => 'ro',
  default => $Config{make} || 'make',
);

sub build {
  my $self = shift;

  my $make = $self->make_path;

  my $makefile = $^O eq 'VMS' ? 'Descrip.MMS' : 'Makefile';

  return
    if -e $makefile and (stat 'Makefile.PL')[9] <= (stat $makefile)[9];

  system($^X => 'Makefile.PL') and die "error with Makefile.PL\n";
  system($make)                and die "error running $make\n";

  return;
}

sub test {
  my ($self, $target, $arg) = @_;

  my $make = $self->make_path;
  $self->build;

  my $job_count = $arg && exists $arg->{jobs}
                ? $arg->{jobs}
                : $self->default_jobs;

  my $jobs = "j$job_count";
  my $ho = "HARNESS_OPTIONS";
  local $ENV{$ho} = $ENV{$ho} ? "$ENV{$ho}:$jobs" : $jobs;

  system($make, 'test',
    ( $self->zilla->logger->get_debug ? 'TEST_VERBOSE=1' : () ),
  ) and die "error running $make test\n";

  return;
}

__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Plugin::MakeMaker::Runner - Test and build dists with a Makefile.PL

=head1 VERSION

version 5.019

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
