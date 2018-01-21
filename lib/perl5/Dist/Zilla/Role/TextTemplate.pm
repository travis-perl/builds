package Dist::Zilla::Role::TextTemplate 6.010;
# ABSTRACT: something that renders a Text::Template template string

use Moose::Role;

use namespace::autoclean;

#pod =head1 DESCRIPTION
#pod
#pod Plugins implementing TextTemplate may call their own C<L</fill_in_string>>
#pod method to render templates using L<Text::Template|Text::Template>.
#pod
#pod =cut

use Text::Template;

#pod =attr delim
#pod
#pod This attribute (which can't easily be set!) is a two-element array reference
#pod returning the Text::Template delimiters to use.  It defaults to C<{{> and
#pod C<}}>.
#pod
#pod =cut

# XXX: Later, add a way to set this in config. -- rjbs, 2008-06-02
has delim => (
  is   => 'ro',
  isa  => 'ArrayRef',
  lazy => 1,
  init_arg => undef,
  default  => sub { [ qw(  {{  }}  ) ] },
);

#pod =method fill_in_string
#pod
#pod   my $rendered = $plugin->fill_in_string($template, \%stash, \%arg);
#pod
#pod This uses Text::Template to fill in the given template using the variables
#pod given in the C<%stash>.  The stash becomes the HASH argument to Text::Template,
#pod so scalars must be scalar references rather than plain scalars.
#pod
#pod C<%arg> is dereferenced and passed in as extra arguments to Text::Template's
#pod C<new> routine.
#pod
#pod =cut

sub fill_in_string {
  my ($self, $string, $stash, $arg) = @_;

  $self->log_fatal("Cannot use undef as a template string")
    unless defined $string;

  my $tmpl = Text::Template->new(
    TYPE       => 'STRING',
    SOURCE     => $string,
    DELIMITERS => $self->delim,
    BROKEN     => sub { my %hash = @_; die $hash{error}; },
    %$arg,
  );

  $self->log_fatal("Could not create a Text::Template object from:\n$string")
    unless $tmpl;

  my $content = $tmpl->fill_in(%$arg, HASH => $stash);

  $self->log_fatal("Filling in the template returned undef for:\n$string")
    unless defined $content;

  return $content;
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Role::TextTemplate - something that renders a Text::Template template string

=head1 VERSION

version 6.010

=head1 DESCRIPTION

Plugins implementing TextTemplate may call their own C<L</fill_in_string>>
method to render templates using L<Text::Template|Text::Template>.

=head1 ATTRIBUTES

=head2 delim

This attribute (which can't easily be set!) is a two-element array reference
returning the Text::Template delimiters to use.  It defaults to C<{{> and
C<}}>.

=head1 METHODS

=head2 fill_in_string

  my $rendered = $plugin->fill_in_string($template, \%stash, \%arg);

This uses Text::Template to fill in the given template using the variables
given in the C<%stash>.  The stash becomes the HASH argument to Text::Template,
so scalars must be scalar references rather than plain scalars.

C<%arg> is dereferenced and passed in as extra arguments to Text::Template's
C<new> routine.

=head1 AUTHOR

Ricardo SIGNES 😏 <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
