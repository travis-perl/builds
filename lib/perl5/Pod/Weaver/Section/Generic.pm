package Pod::Weaver::Section::Generic;
{
  $Pod::Weaver::Section::Generic::VERSION = '4.006';
}
use Moose;
with 'Pod::Weaver::Role::Section';
# ABSTRACT: a generic section, found by lifting sections

use Moose::Autobox;


use Pod::Elemental::Element::Pod5::Region;
use Pod::Elemental::Selectors -all;


has required => (
  is  => 'ro',
  isa => 'Bool',
  default => 0,
);


has header => (
  is   => 'ro',
  isa  => 'Str',
  lazy => 1,
  default => sub { $_[0]->plugin_name },
);

has selector => (
  is  => 'ro',
  isa => 'CodeRef',
  lazy    => 1,
  default => sub {
    my ($self) = @_;
    return sub {
      return unless s_command(head1 => $_[0]);
      return unless $_[0]->content eq $self->header;
    };
  },
);

sub weave_section {
  my ($self, $document, $input) = @_;

  my $in_node = $input->{pod_document}->children;
  my @found;
  $in_node->each(sub {
    my ($i, $para) = @_;
    push @found, $i if $self->selector->($para);
  });

  confess "Couldn't find required Generic section for " . $self->header . " in file "
    . (defined $input->{filename} ? $input->{filename} : '') if $self->required and not @found;

  my @to_add;
  for my $i (reverse @found) {
    push @to_add, splice @{ $in_node }, $i, 1;
  }

  $document->children->push(@to_add);
}

__PACKAGE__->meta->make_immutable;
no Moose;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Pod::Weaver::Section::Generic - a generic section, found by lifting sections

=head1 VERSION

version 4.006

=head1 OVERVIEW

This section will find and include a located hunk of Pod.  In general, it will
find a C<=head1> command with a content of the plugin's name.

In other words, if your configuration include:

  [Generic]
  header = OVERVIEW

...then this weaver will look for "=head1 OVERVIEW" and include it at the
appropriate location in your output.

Since you'll probably want to use Generic several times, and that will require
giving each use a unique name, you can omit C<header> if you provide a
plugin name, and it will default to the plugin name.  In other words, the
configuration above could be specified just as:

  [Generic / OVERVIEW]

If the C<required> attribute is given, and true, then an exception will be
raised if this section can't be found.

=head1 ATTRIBUTES

=head2 required

A boolean value specifying whether this section is required to be present or not. Defaults
to false.

If it's enabled and the section can't be found an exception will be raised.

=head2 header

The name of this section. Defaults to the plugin name.

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
