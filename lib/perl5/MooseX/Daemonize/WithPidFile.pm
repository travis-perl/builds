use strict;
use warnings;
package MooseX::Daemonize::WithPidFile;
BEGIN {
  $MooseX::Daemonize::WithPidFile::AUTHORITY = 'cpan:PERIGRIN';
}
$MooseX::Daemonize::WithPidFile::VERSION = '0.19';
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

=head1 NAME

MooseX::Daemonize::WithPidFile - A Role with the core daemonization and pidfile management

=head1 VERSION

version 0.19

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

=head1 INCOMPATIBILITIES

None reported.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<bug-acme-dahut-call@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.

=head1 AUTHOR

Stevan Little  C<< <stevan.little@iinteractive.com> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2007-2011, Chris Prather C<< <perigrin@cpan.org> >>. All rights
reserved.

Portions heavily borrowed from L<Proc::Daemon> which is copyright Earl Hood.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.

=cut
