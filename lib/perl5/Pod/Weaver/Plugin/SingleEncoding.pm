package Pod::Weaver::Plugin::SingleEncoding;
{
  $Pod::Weaver::Plugin::SingleEncoding::VERSION = '4.006';
}
use Moose;
with(
  'Pod::Weaver::Role::Dialect',
  'Pod::Weaver::Role::Finalizer',
);
# ABSTRACT: ensure that there is exactly one =encoding of known value

use namespace::autoclean;
use Moose::Autobox;

use Pod::Elemental::Selectors -all;


has encoding => (
  reader => 'encoding',
  writer => '_set_encoding',
  isa    => 'Str',
  lazy   => 1,
  default   => 'UTF-8',
  predicate => '_has_encoding',
);

sub translate_dialect {
  my ($self, $document) = @_;

  my $want;
  $want = $self->encoding if $self->_has_encoding;

  my $childs = $document->children;
  my $is_enc = s_command([ qw(encoding) ]);

  for (reverse 0 .. $#$childs) {
    next unless $is_enc->( $childs->[ $_ ] );
    my $have = $childs->[$_]->content;
    $have =~ s/\s+\z//;

    if (defined $want) {
      my $ok = lc $have eq lc $want
            || lc $have eq 'utf8' && lc $want eq 'utf-8';
      confess "expected only $want encoding but found $have" unless $ok;
    } else {
      $have = 'UTF-8' if lc $have eq 'utf8';
      $self->_set_encoding($have);
      $want = $have;
    }

    splice @$childs, $_, 1;
  }

  return;
}

sub finalize_document {
  my ($self, $document, $input) = @_;

  my $encoding = Pod::Elemental::Element::Pod5::Command->new({
    command => 'encoding',
    content => $self->encoding,
  });

  my $childs = $document->children;
  my $is_pod = s_command([ qw(pod) ]); # ??
  for (0 .. $#$childs) {
    next if $is_pod->( $childs->[ $_ ] );
    splice @$childs, $_, 0, $encoding;
    last;
  }

  return;
}

no Moose;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Pod::Weaver::Plugin::SingleEncoding - ensure that there is exactly one =encoding of known value

=head1 VERSION

version 4.006

=head1 OVERVIEW

The SingleEncoding plugin is a Dialect and a Finalizer.

During dialect translation, it will look for C<=encoding> directives.  If it
finds them, it will ensure that they all agree on one encoding and remove them.

During document finalization, it will insert an C<=encoding> directive at the
top of the output, using the encoding previously detected.  If no encoding was
detected, the plugin's C<encoding> attribute will be used instead.  That
defaults to UTF-8.

If you want to reject any C<=encoding> directive that doesn't match your
expectations, set the C<encoding> attribute by hand.

No actual validation of the encoding is done.  Pod::Weaver, after all, deals in
text rather than bytes.

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
