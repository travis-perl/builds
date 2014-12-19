use strict;
use warnings;
package Getopt::Long::Descriptive::Usage;
# ABSTRACT: the usage description for GLD
$Getopt::Long::Descriptive::Usage::VERSION = '0.098';
use List::Util qw(max);

#pod =head1 SYNOPSIS
#pod
#pod   use Getopt::Long::Descriptive;
#pod   my ($opt, $usage) = describe_options( ... );
#pod
#pod   $usage->text; # complete usage message
#pod
#pod   $usage->die;  # die with usage message
#pod
#pod =head1 DESCRIPTION
#pod
#pod This document only describes the methods of the Usage object.  For information
#pod on how to use L<Getopt::Long::Descriptive>, consult its documentation.
#pod
#pod =head1 METHODS
#pod
#pod =head2 new
#pod
#pod   my $usage = Getopt::Long::Descriptive::Usage->new(\%arg);
#pod
#pod You B<really> don't need to call this.  GLD will do it for you.
#pod
#pod Valid arguments are:
#pod
#pod   options     - an arrayref of options
#pod   leader_text - the text that leads the usage; this may go away!
#pod
#pod =cut

sub new {
  my ($class, $arg) = @_;

  my @to_copy = qw(options leader_text show_defaults);

  my %copy;
  @copy{ @to_copy } = @$arg{ @to_copy };

  bless \%copy => $class;
}

#pod =head2 text
#pod
#pod This returns the full text of the usage message.
#pod
#pod =cut

sub text {
  my ($self) = @_;

  return join qq{\n}, $self->leader_text, $self->option_text;
}

#pod =head2 leader_text
#pod
#pod This returns the text that comes at the beginning of the usage message.
#pod
#pod =cut

sub leader_text { $_[0]->{leader_text} }

#pod =head2 option_text
#pod
#pod This returns the text describing the available options.
#pod
#pod =cut

sub option_text {
  my ($self) = @_;

  my @options  = @{ $self->{options} || [] };
  my $string   = q{};

  # a spec can grow up to 4 characters in usage output:
  # '-' on short option, ' ' between short and long, '--' on long
  my @specs = map { $_->{spec} } grep { $_->{desc} ne 'spacer' } @options;
  my $length   = (max(map { length } @specs) || 0) + 4;
  my $spec_fmt = "\t%-${length}s";

  while (@options) {
    my $opt  = shift @options;
    my $spec = $opt->{spec};
    my $desc = $opt->{desc};
    if ($desc eq 'spacer') {
      $string .= sprintf "$spec_fmt\n", $opt->{spec};
      next;
    }

    $spec = Getopt::Long::Descriptive->_strip_assignment($spec);
    $spec = join " ", reverse map { length > 1 ? "--$_" : "-$_" }
                              split /\|/, $spec;

    my @desc = $self->_split_description($length, $desc);

    # add default value if it exists
    if (exists $opt->{constraint}->{default} and $self->{show_defaults}) {
      my $dflt = $opt->{constraint}->{default};
      $dflt = ! defined $dflt ? '(undef)'
            : ! length  $dflt ? '(empty string)'
            :                   $dflt;
      push @desc, "(default value: $dflt)";
    }

    $string .= sprintf "$spec_fmt  %s\n", $spec, shift @desc;
    for my $line (@desc) {
        $string .= "\t";
        $string .= q{ } x ( $length + 2 );
        $string .= "$line\n";
    }
  }

  return $string;
}

sub _split_description {
  my ($self, $length, $desc) = @_;

  # 8 for a tab, 2 for the space between option & desc;
  my $max_length = 78 - ( $length + 8 + 2 );

  return $desc if length $desc <= $max_length;

  my @lines;
  while (length $desc > $max_length) {
    my $idx = rindex( substr( $desc, 0, $max_length ), q{ }, );
    last unless $idx >= 0;
    push @lines, substr($desc, 0, $idx);
    substr($desc, 0, $idx + 1) = q{};
  }
  push @lines, $desc;

  return @lines;
}

#pod =head2 warn
#pod
#pod This warns with the usage message.
#pod
#pod =cut

sub warn { warn shift->text }

#pod =head2 die
#pod
#pod This throws the usage message as an exception.
#pod
#pod   $usage_obj->die(\%arg);
#pod
#pod Some arguments can be provided 
#pod
#pod   pre_text  - text to be prepended to the usage message
#pod   post_text - text to be appended to the usage message
#pod
#pod The C<pre_text> and C<post_text> arguments are concatenated with the usage
#pod message with no line breaks, so supply this if you need them.
#pod
#pod =cut

sub die  {
  my $self = shift;
  my $arg  = shift || {};

  die(
    join q{}, grep { defined } $arg->{pre_text}, $self->text, $arg->{post_text}
  );
}

use overload (
  q{""} => "text",

  # This is only needed because Usage used to be a blessed coderef that worked
  # this way.  Later we can toss a warning in here. -- rjbs, 2009-08-19
  '&{}' => sub {
    my ($self) = @_;
    Carp::cluck("use of __PACKAGE__ objects as a code ref is deprecated");
    return sub { return $_[0] ? $self->text : $self->warn; };
  }
);

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Getopt::Long::Descriptive::Usage - the usage description for GLD

=head1 VERSION

version 0.098

=head1 SYNOPSIS

  use Getopt::Long::Descriptive;
  my ($opt, $usage) = describe_options( ... );

  $usage->text; # complete usage message

  $usage->die;  # die with usage message

=head1 DESCRIPTION

This document only describes the methods of the Usage object.  For information
on how to use L<Getopt::Long::Descriptive>, consult its documentation.

=head1 METHODS

=head2 new

  my $usage = Getopt::Long::Descriptive::Usage->new(\%arg);

You B<really> don't need to call this.  GLD will do it for you.

Valid arguments are:

  options     - an arrayref of options
  leader_text - the text that leads the usage; this may go away!

=head2 text

This returns the full text of the usage message.

=head2 leader_text

This returns the text that comes at the beginning of the usage message.

=head2 option_text

This returns the text describing the available options.

=head2 warn

This warns with the usage message.

=head2 die

This throws the usage message as an exception.

  $usage_obj->die(\%arg);

Some arguments can be provided 

  pre_text  - text to be prepended to the usage message
  post_text - text to be appended to the usage message

The C<pre_text> and C<post_text> arguments are concatenated with the usage
message with no line breaks, so supply this if you need them.

=head1 AUTHORS

=over 4

=item *

Hans Dieter Pearcey <hdp@cpan.org>

=item *

Ricardo Signes <rjbs@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2005 by Hans Dieter Pearcey.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
