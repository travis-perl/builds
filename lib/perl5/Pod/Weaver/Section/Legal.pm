package Pod::Weaver::Section::Legal;
{
  $Pod::Weaver::Section::Legal::VERSION = '4.006';
}
use Moose;
with 'Pod::Weaver::Role::Section';
# ABSTRACT: a section for the copyright and license

use Moose::Autobox;



has license_file => (
  is => 'ro',
  isa => 'Str',
  predicate => '_has_license_file',
);

sub weave_section {
  my ($self, $document, $input) = @_;

  return unless $input->{license};

  my $notice = $input->{license}->notice;
  chomp $notice;

  if ( $self->_has_license_file ) {
    $notice .= "\n\nThe full text of the license can be found in the\nF<";
    $notice .= $self->license_file . "> file included with this distribution.";
  }

  $document->children->push(
    Pod::Elemental::Element::Nested->new({
      command  => 'head1',
      content  => 'COPYRIGHT AND LICENSE',
      children => [
        Pod::Elemental::Element::Pod5::Ordinary->new({ content => $notice }),
      ],
    }),
  );
}

no Moose;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Pod::Weaver::Section::Legal - a section for the copyright and license

=head1 VERSION

version 4.006

=head1 OVERVIEW

This section plugin will produce a hunk of Pod giving the copyright and license
information for the document, like this:

  =head1 COPYRIGHT AND LICENSE

  This document is copyright (C) 1991, Ricardo Signes.

  This document is available under the blah blah blah.

This plugin will do nothing if no C<license> input parameter is available.  The
C<license> is expected to be a L<Software::License> object.

=head1 ATTRIBUTES

=head2 license_file

Specify the name of the license file and an extra line of text will be added
telling users to check the file for the full text of the license.

Defaults to none.

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
