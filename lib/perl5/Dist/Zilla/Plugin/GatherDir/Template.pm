package Dist::Zilla::Plugin::GatherDir::Template;
# ABSTRACT: gather all the files in a directory and use them as templates
$Dist::Zilla::Plugin::GatherDir::Template::VERSION = '5.040';
use Moose;
extends 'Dist::Zilla::Plugin::GatherDir';
with 'Dist::Zilla::Role::TextTemplate';

use namespace::autoclean;

use autodie;
use Dist::Zilla::File::FromCode;
use Path::Tiny;

#pod =head1 DESCRIPTION
#pod
#pod This is a subclass of the L<GatherDir|Dist::Zilla::Plugin::GatherDir>
#pod plugin.  It works just like its parent class, except that each
#pod gathered file is processed through L<Text::Template>.
#pod
#pod The variables C<$plugin> and C<$dist> will be provided to the
#pod template, set to the GatherDir::Template plugin and the Dist::Zilla
#pod object, respectively.
#pod
#pod It is meant to be used when minting dists with C<dzil new>, but could be used
#pod in building existing dists, too.
#pod
#pod =cut

sub _file_from_filename {
  my ($self, $filename) = @_;

  my $template = path($filename)->slurp_utf8;

  my @stat = stat $filename or $self->log_fatal("$filename does not exist!");

  return Dist::Zilla::File::FromCode->new({
    name => $filename,
    mode => ($stat[2] & 0755) | 0200, # kill world-writeability, make sure owner-writable.
    code => sub {
      my ($file_obj) = @_;
      $self->fill_in_string(
        $template,
        {
          dist   => \($self->zilla),
          plugin => \($self),
        },
      );
    },
  });
}

__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Plugin::GatherDir::Template - gather all the files in a directory and use them as templates

=head1 VERSION

version 5.040

=head1 DESCRIPTION

This is a subclass of the L<GatherDir|Dist::Zilla::Plugin::GatherDir>
plugin.  It works just like its parent class, except that each
gathered file is processed through L<Text::Template>.

The variables C<$plugin> and C<$dist> will be provided to the
template, set to the GatherDir::Template plugin and the Dist::Zilla
object, respectively.

It is meant to be used when minting dists with C<dzil new>, but could be used
in building existing dists, too.

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
