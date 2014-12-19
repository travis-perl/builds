use strict;
use warnings;
package MooseX::Daemonize::Pid;
BEGIN {
  $MooseX::Daemonize::Pid::AUTHORITY = 'cpan:PERIGRIN';
}
$MooseX::Daemonize::Pid::VERSION = '0.19';
use Moose;
use Moose::Util::TypeConstraints;
use namespace::autoclean;

coerce 'MooseX::Daemonize::Pid'
    => from 'Int'
        => via { MooseX::Daemonize::Pid->new( pid => $_ ) };


has 'pid' => (
    is        => 'rw',
    isa       => 'Int',
    lazy      => 1,
    clearer   => 'clear_pid',
    predicate => 'has_pid',
    default   => sub { $$ }
);

sub is_running { kill(0, (shift)->pid) ? 1 : 0 }

1;

__END__

=pod

=head1 NAME

MooseX::Daemonize::Pid - PID management for MooseX::Daemonize

=head1 VERSION

version 0.19

=head1 DESCRIPTION

This is a very basic Pid management object, it doesn't do all that
much, and mostly just serves as a base class for L<MooseX::Daemonize::Pid::File>.

=head1 ATTRIBUTES

=over 4

=item I<pid Int>

=back

=head1 METHODS

=over 4

=item B<clear_pid>

This will clear the value of the I<pid> attribute. It is useful for making sure
that the parent process does not have a bad value stored in it.

=item B<has_pid>

This is a predicate method to tell you if your I<pid> attribute has
been initialized yet.

=item B<is_running>

This checks to see if the I<pid> is running.

=item meta()

The C<meta()> method from L<Class::MOP::Class>

=back

=head1 DEPENDENCIES

Obviously L<Moose>

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
