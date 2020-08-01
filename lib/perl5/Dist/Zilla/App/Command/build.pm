use strict;
use warnings;
package Dist::Zilla::App::Command::build 6.015;
# ABSTRACT: build your dist

use Dist::Zilla::App -command;

#pod =head1 SYNOPSIS
#pod
#pod   dzil build [ --trial ] [ --tgz | --no-tgz ] [ --in /path/to/build/dir ]
#pod
#pod =head1 DESCRIPTION
#pod
#pod This command is a very thin layer over the Dist::Zilla C<build> method, which
#pod does all the things required to build your distribution.  By default, it will
#pod also archive your distribution and leave you with a complete, ready-to-release
#pod distribution tarball.
#pod
#pod To go a bit further in depth, the C<build> command will do two things:
#pod
#pod =over
#pod
#pod =item
#pod
#pod Generate a directory containing your module, C<Foo-0.100>. This directory is
#pod complete. You could create a gzipped tarball from this directory and upload it
#pod directly to C<PAUSE> if you so desired. You could C<cd> into this directory and
#pod test your module on Perl installations where you don't have C<Dist::Zilla>, for
#pod example.
#pod
#pod This is a default behavior of the C<build> command. You can alter where it puts
#pod the directory with C<--in /path/to/build/dir>.
#pod
#pod =item
#pod
#pod Generate a gzipped tarball of your module, C<Foo-0.100.tar.gz>. This file
#pod could be uploaded directly to C<PAUSE> to make a release of your module if you
#pod wanted. Or, you can test your module: C<cpanm --test-only Foo-0.100.tar.gz>.
#pod This is the same thing you would get if you compressed the directory described
#pod above.
#pod
#pod The gzipped tarball is generated by default, but if you don't want it to be
#pod generated, you can pass the C<--no-tgz> option. In that case, it would only
#pod generate the directory described above.
#pod
#pod =back
#pod
#pod Once you're done testing or publishing your build, you can clean up everything
#pod with a C<dzil clean>.
#pod
#pod =cut

sub abstract { 'build your dist' }

#pod =head1 EXAMPLE
#pod
#pod   $ dzil build
#pod   $ dzil build --no-tgz
#pod   $ dzil build --in /path/to/build/dir
#pod
#pod =cut

sub opt_spec {
  [ 'trial'  => 'build a trial release that PAUSE will not index'      ],
  [ 'tgz!'   => 'build a tarball (default behavior)', { default => 1 } ],
  [ 'in=s'   => 'the directory in which to build the distribution'     ]
}

#pod =head1 OPTIONS
#pod
#pod =head2 --trial
#pod
#pod This will build a trial distribution.  Among other things, it will generally
#pod mean that the built tarball's basename ends in F<-TRIAL>.
#pod
#pod =head2 --tgz | --no-tgz
#pod
#pod Builds a .tar.gz in your project directory after building the distribution.
#pod
#pod --tgz behaviour is by default, use --no-tgz to disable building an archive.
#pod
#pod =head2 --in
#pod
#pod Specifies the directory into which the distribution should be built.  If
#pod necessary, the directory will be created.  An archive will not be created.
#pod
#pod =cut

sub execute {
  my ($self, $opt, $args) = @_;

  if ($opt->in) {
    require Path::Tiny;
    die qq{using "--in ." would destroy your working directory!\n}
      if Path::Tiny::path($opt->in)->absolute eq Path::Tiny::path('.')->absolute;

    $self->zilla->build_in($opt->in);
  } else {
    my $method = $opt->tgz ? 'build_archive' : 'build';
    my $zilla;
    {
      # isolate changes to RELEASE_STATUS to zilla construction
      local $ENV{RELEASE_STATUS} = $ENV{RELEASE_STATUS};
      $ENV{RELEASE_STATUS} = 'testing' if $opt->trial;
      $zilla  = $self->zilla;
    }
    $zilla->$method;
  }

  $self->zilla->log('built in ' . $self->zilla->built_in);
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::App::Command::build - build your dist

=head1 VERSION

version 6.015

=head1 SYNOPSIS

  dzil build [ --trial ] [ --tgz | --no-tgz ] [ --in /path/to/build/dir ]

=head1 DESCRIPTION

This command is a very thin layer over the Dist::Zilla C<build> method, which
does all the things required to build your distribution.  By default, it will
also archive your distribution and leave you with a complete, ready-to-release
distribution tarball.

To go a bit further in depth, the C<build> command will do two things:

=over

=item

Generate a directory containing your module, C<Foo-0.100>. This directory is
complete. You could create a gzipped tarball from this directory and upload it
directly to C<PAUSE> if you so desired. You could C<cd> into this directory and
test your module on Perl installations where you don't have C<Dist::Zilla>, for
example.

This is a default behavior of the C<build> command. You can alter where it puts
the directory with C<--in /path/to/build/dir>.

=item

Generate a gzipped tarball of your module, C<Foo-0.100.tar.gz>. This file
could be uploaded directly to C<PAUSE> to make a release of your module if you
wanted. Or, you can test your module: C<cpanm --test-only Foo-0.100.tar.gz>.
This is the same thing you would get if you compressed the directory described
above.

The gzipped tarball is generated by default, but if you don't want it to be
generated, you can pass the C<--no-tgz> option. In that case, it would only
generate the directory described above.

=back

Once you're done testing or publishing your build, you can clean up everything
with a C<dzil clean>.

=head1 EXAMPLE

  $ dzil build
  $ dzil build --no-tgz
  $ dzil build --in /path/to/build/dir

=head1 OPTIONS

=head2 --trial

This will build a trial distribution.  Among other things, it will generally
mean that the built tarball's basename ends in F<-TRIAL>.

=head2 --tgz | --no-tgz

Builds a .tar.gz in your project directory after building the distribution.

--tgz behaviour is by default, use --no-tgz to disable building an archive.

=head2 --in

Specifies the directory into which the distribution should be built.  If
necessary, the directory will be created.  An archive will not be created.

=head1 AUTHOR

Ricardo SIGNES 😏 <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2020 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
