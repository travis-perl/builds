use strict;
use warnings;
package MooseX::Daemonize::WithPidFile;
# ABSTRACT: A Role with the core daemonization and pidfile management

our $VERSION = '0.20';

use MooseX::Getopt; # to load the Getopt metaclass
use Moose::Role;
use namespace::autoclean;

use MooseX::Daemonize::Pid::File;

with 'MooseX::Daemonize::Core';

requires 'init_pidfile';

has pidfile => (
    # NOTE:
    # this should always be accessible
    # from the command line IMO
    # - SL
    metaclass => 'Getopt',
    isa       => 'MooseX::Daemonize::Pid::File',
    is        => 'rw',
    lazy      => 1,
    coerce    => 1,
    predicate => 'has_pidfile',
    builder   => 'init_pidfile',
);

after 'daemonize' => sub {
    my $self = shift;
    # NOTE:
    # make sure that we do not have
    # any bad PID values stashed around
    # - SL
    $self->pidfile->clear_pid;
    if ($self->is_daemon) {
        $self->pidfile->write;
    }
};

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

MooseX::Daemonize::WithPidFile - A Role with the core daemonization and pidfile management

=head1 VERSION

version 0.20

=head1 SYNOPSIS

  package My::Daemon;
  use Moose;

  with 'MooseX::Daemonize::WithPidFile';

  sub start {
      my $self = shift;
      # daemonize me ...
      $self->daemonize; # << this will write the pidfile for you
      # return from the parent,...
      return unless $self->is_daemon;
      # but continue on in the child (daemon)
  }

=head1 DESCRIPTION

This is a slightly extended basic daemonization Role, it provides
Pidfile management along with the core daemonization features
found in L<MooseX::Daemonize::Core>.

=head1 ATTRIBUTES

=over

=item I<pidfile (is => rw, isa => MooseX::Daemonize::Pid::File)>

This attribute holds the L<MooseX::Daemonize::Pid::File> object used
to manage the Pidfile. It will initialize the object using the
C<init_pidfile> method (which is required by this role).

=back

=head1 REQUIRED METHODS

=over 4

=item I<init_pidfile>

This method is used to build the I<pidfile> attribute's object. It should
return a L<MooseX::Daemonize::Pid::File> object.

=item B<has_pidfile>

This is a predicate method to tell you if your I<pidfile> attribute has
been initialized yet.

=back

=head1 METHODS

=over 4

=item B<daemonize>

This adds an C<after> method modifier to the C<daemonize> method (from
L<MooseX::Daemonize::Core>) and handles writing your Pidfile for you.

=item B<meta>

The C<meta()> method from L<Class::MOP::Class>

=back

=head1 DEPENDENCIES

L<Moose::Role>, L<MooseX::Getopt> and L<MooseX::Daemonize::Pid::File>

=head1 BUGS AND LIMITATIONS

Please report any bugs or feature requests to
C<bug-MooseX-Daemonize@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.

=head1 AUTHORS

=over 4

=item *

Stevan Little <stevan.little@iinteractive.com>

=item *

Chris Prather <chris@prather.org>

=back

=head1 COPYRIGHT AND LICENCE

Copyright (c) 2007-2011, Chris Prather C<< <perigrin@cpan.org> >>. All rights
reserved.

Portions heavily borrowed from L<Proc::Daemon> which is copyright Earl Hood.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

=cut
