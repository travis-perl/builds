package Pod::Weaver::Section::Bugs;
{
  $Pod::Weaver::Section::Bugs::VERSION = '4.006';
}
use Moose;
use Text::Wrap ();
with 'Pod::Weaver::Role::Section';
# ABSTRACT: a section for bugtracker info

use Moose::Autobox;


sub weave_section {
  my ($self, $document, $input) = @_;

  return unless exists $input->{distmeta}{resources}{bugtracker};
  my $bugtracker = $input->{distmeta}{resources}{bugtracker};
  my ($web,$mailto) = @{$bugtracker}{qw/web mailto/};
  return unless defined $web || defined $mailto;

  my $text = "Please report any bugs or feature requests ";

  if (defined $web) {
    $text .= "on the bugtracker website $web";
    $text .= defined $mailto ? " or " : "\n";
  }

  if (defined $mailto) {
    $text .= "by email to $mailto\.\n";
  }

  $text = Text::Wrap::wrap(q{}, q{}, $text);

  $text .= <<'HERE';

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.
HERE

  $document->children->push(
    Pod::Elemental::Element::Nested->new({
      command  => 'head1',
      content  => 'BUGS',
      children => [
        Pod::Elemental::Element::Pod5::Ordinary->new({ content => $text }),
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

Pod::Weaver::Section::Bugs - a section for bugtracker info

=head1 VERSION

version 4.006

=head1 OVERVIEW

This section plugin will produce a hunk of Pod giving bug reporting
information for the document, like this:

  =head1 BUGS

  Please report any bugs or feature requests on the bugtracker website
  http://rt.cpan.org/Dist/Display.html?Queue=Pod-Weaver

  When submitting a bug or request, please include a test-file or a
  patch to an existing test-file that illustrates the bug or desired
  feature.

This plugin requires a C<distmeta> parameter containing a hash reference of
L<CPAN::Meta::Spec> distribution metadata and at least one of one of the
parameters C<web> or C<mailto> defined in
C<< $meta->{resources}{bugtracker} >>.

=head2 Using Pod::Weaver::Section::Bugs with Dist::Zilla

When the PodWeaver plugin is used, the C<distmeta> parameter comes from the
dist's distmeta data.  Since this section is skipped when no bugtracker data is
in the distmeta, you'll need to make sure it's there.  A number of plugins set
this data up automatically.  To manually configure your bugtracker data, you
can add something like the following to C<dist.ini>:

  [MetaResources]
  bugtracker.web = http://rt.cpan.org/NoAuth/Bugs.html?Dist=Pod-Weaver-Example
  bugtracker.mailto = bug-pod-weaver-example@rt.cpan.org

  ; Perhaps add repository stuff here:
  repository.url =
  repository.web =
  repository.type =

  [PodWeaver]

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
