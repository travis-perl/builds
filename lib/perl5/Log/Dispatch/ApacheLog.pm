package Log::Dispatch::ApacheLog;

use strict;
use warnings;

our $VERSION = '2.57';

use Log::Dispatch::Output;

use base qw( Log::Dispatch::Output );

use Params::Validate qw(validate);
Params::Validate::validation_options( allow_extra => 1 );

BEGIN {
    if ( $ENV{MOD_PERL} && $ENV{MOD_PERL} =~ /2\./ ) {
        require Apache2::Log;
    }
    else {
        require Apache::Log;
    }
}

sub new {
    my $proto = shift;
    my $class = ref $proto || $proto;

    my %p = validate( @_, { apache => { can => 'log' } } );

    my $self = bless {}, $class;

    $self->_basic_init(%p);
    $self->{apache_log} = $p{apache}->log;

    return $self;
}

{
    my %methods = (
        emergency => 'emerg',
        critical  => 'crit',
        warning   => 'warn',
    );

    sub log_message {
        my $self = shift;
        my %p    = @_;

        my $level = $self->_level_as_name( $p{level} );

        my $method = $methods{$level} || $level;

        $self->{apache_log}->$method( $p{message} );
    }
}

1;

# ABSTRACT: Object for logging to Apache::Log objects

__END__

=pod

=encoding UTF-8

=head1 NAME

Log::Dispatch::ApacheLog - Object for logging to Apache::Log objects

=head1 VERSION

version 2.57

=head1 SYNOPSIS

  use Log::Dispatch;

  my $log = Log::Dispatch->new(
      outputs => [
          [ 'ApacheLog', apache => $r ],
      ],
  );

  $log->emerg('Kaboom');

=head1 DESCRIPTION

This module allows you to pass messages to Apache's log object,
represented by the L<Apache::Log> class.

=head1 CONSTRUCTOR

The constructor takes the following parameters in addition to the standard
parameters documented in L<Log::Dispatch::Output>:

=over 4

=item * apache ($)

An object of either the L<Apache> or L<Apache::Server> classes. Required.

=back

=head1 SUPPORT

Bugs may be submitted through L<the RT bug tracker|http://rt.cpan.org/Public/Dist/Display.html?Name=Log-Dispatch>
(or L<bug-log-dispatch@rt.cpan.org|mailto:bug-log-dispatch@rt.cpan.org>).

I am also usually active on IRC as 'drolsky' on C<irc://irc.perl.org>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2016 by Dave Rolsky.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)

=cut
