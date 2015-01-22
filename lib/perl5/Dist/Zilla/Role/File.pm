package Dist::Zilla::Role::File;
# ABSTRACT: something that can act like a file
$Dist::Zilla::Role::File::VERSION = '5.031';
use Moose::Role;

use Moose::Util::TypeConstraints;
use Try::Tiny;

use namespace::autoclean;

with 'Dist::Zilla::Role::StubBuild';

#pod =head1 DESCRIPTION
#pod
#pod This role describes a file that may be written into the shipped distribution.
#pod
#pod =attr name
#pod
#pod This is the name of the file to be written out.
#pod
#pod =cut

has name => (
  is   => 'rw',
  isa  => 'Str', # Path::Class::File?
  required => 1,
);

#pod =attr added_by
#pod
#pod This is a list of strings describing when and why the file was added
#pod to the distribution and when it was updated (its content, filename, or other attributes).  It will
#pod generally be updated by a plugin implementing the
#pod L<FileMunger|Dist::Zilla::Role::FileMunger> role.  Its accessor will return
#pod the list of strings, concatenated with C<'; '>.
#pod
#pod =cut

has added_by => (
  isa => 'ArrayRef[Str]',
  lazy => 1,
  default => sub { [] },
  traits => ['Array'],
  init_arg => undef,
  handles => {
    _push_added_by => 'push',
    added_by => [ join => '; ' ],
  },
);

around name => sub {
  my $orig = shift;
  my $self = shift;
  if (@_) {
    my ($pkg, $line) = $self->_caller_of('name');
    $self->_push_added_by(sprintf("filename set by %s (%s line %s)", $self->_caller_plugin_name, $pkg, $line));
  }
  return $self->$orig(@_);
};

sub _caller_of {
  my ($self, $function) = @_;

  for (my $level = 1; $level < 50; ++$level)
  {
    my @frame = caller($level);
    last if not defined $frame[0];
    return ( (caller($level))[0,2] ) if $frame[3] =~ m/::${function}$/;
  }
  return 'unknown', '0';
}

sub _caller_plugin_name {
  my $self = shift;

  for (my $level = 1; $level < 50; ++$level)
  {
    my @frame = caller($level);
    last if not defined $frame[0];
    return $1 if $frame[0] =~ m/^Dist::Zilla::Plugin::(.+)$/;
  }
  return 'unknown';
}

#pod =attr mode
#pod
#pod This is the mode with which the file should be written out.  It's an integer
#pod with the usual C<chmod> semantics.  It defaults to 0644.
#pod
#pod =cut

my $safe_file_mode = subtype(
  as 'Int',
  where   { not( $_ & 0002) },
  message { "file mode would be world-writeable" }
);

has mode => (
  is      => 'rw',
  isa     => $safe_file_mode,
  default => 0644,
);

requires 'encoding';
requires 'content';
requires 'encoded_content';

#pod =method is_bytes
#pod
#pod Returns true if the C<encoding> is bytes.  When true, accessing
#pod C<content> will be an error.
#pod
#pod =cut

sub is_bytes {
    my ($self) = @_;
    return $self->encoding eq 'bytes';
}

sub _encode {
  my ($self, $text) = @_;
  my $enc = $self->encoding;
  if ( $self->is_bytes ) {
    return $text; # XXX hope you were right that it really was bytes
  }
  else {
    require Encode;
    my $bytes =
      try { Encode::encode($enc, $text, Encode::FB_CROAK()) }
      catch { $self->_throw("encode $enc" => $_) };
    return $bytes;
  }
}

sub _decode {
  my ($self, $bytes) = @_;
  my $enc = $self->encoding;
  if ( $self->is_bytes ) {
    $self->_throw(decode => "Can't decode text from 'bytes' encoding");
  }
  else {
    require Encode;
    my $text =
      try { Encode::decode($enc, $bytes, Encode::FB_CROAK()) }
      catch { $self->_throw("decode $enc" => $_) };
    return $text;
  }
}

sub _throw {
  my ($self, $op, $msg) = @_;
  my ($name, $added_by) = map {; $self->$_ } qw/name added_by/;
  confess(
    "Could not $op $name; $added_by; error was: $msg; maybe you need the [Encoding] plugin to specify an encoding"
  );
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Role::File - something that can act like a file

=head1 VERSION

version 5.031

=head1 DESCRIPTION

This role describes a file that may be written into the shipped distribution.

=head1 ATTRIBUTES

=head2 name

This is the name of the file to be written out.

=head2 added_by

This is a list of strings describing when and why the file was added
to the distribution and when it was updated (its content, filename, or other attributes).  It will
generally be updated by a plugin implementing the
L<FileMunger|Dist::Zilla::Role::FileMunger> role.  Its accessor will return
the list of strings, concatenated with C<'; '>.

=head2 mode

This is the mode with which the file should be written out.  It's an integer
with the usual C<chmod> semantics.  It defaults to 0644.

=head1 METHODS

=head2 is_bytes

Returns true if the C<encoding> is bytes.  When true, accessing
C<content> will be an error.

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
