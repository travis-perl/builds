package Dist::Zilla::Plugin::PkgVersion 6.010;
# ABSTRACT: add a $VERSION to your packages

use Moose;
with(
  'Dist::Zilla::Role::FileMunger',
  'Dist::Zilla::Role::FileFinderUser' => {
    default_finders => [ ':InstallModules', ':ExecFiles' ],
  },
  'Dist::Zilla::Role::PPI',
);

use namespace::autoclean;

#pod =head1 SYNOPSIS
#pod
#pod in dist.ini
#pod
#pod   [PkgVersion]
#pod
#pod =head1 DESCRIPTION
#pod
#pod This plugin will add lines like the following to each package in each Perl
#pod module or program (more or less) within the distribution:
#pod
#pod   $MyModule::VERSION = '0.001';
#pod
#pod or
#pod
#pod   { our $VERSION = '0.001'; }
#pod
#pod ...where 0.001 is the version of the dist, and MyModule is the name of the
#pod package being given a version.  (In other words, it always uses fully-qualified
#pod names to assign versions.)
#pod
#pod It will skip any package declaration that includes a newline between the
#pod C<package> keyword and the package name, like:
#pod
#pod   package
#pod     Foo::Bar;
#pod
#pod This sort of declaration is also ignored by the CPAN toolchain, and is
#pod typically used when doing monkey patching or other tricky things.
#pod
#pod =attr die_on_existing_version
#pod
#pod If true, then when PkgVersion sees an existing C<$VERSION> assignment, it will
#pod throw an exception rather than skip the file.  This attribute defaults to
#pod false.
#pod
#pod =attr die_on_line_insertion
#pod
#pod By default, PkgVersion looks for a blank line after each C<package> statement.
#pod If it finds one, it inserts the C<$VERSION> assignment on that line.  If it
#pod doesn't, it will insert a new line, which means the shipped copy of the module
#pod will have different line numbers (off by one) than the source.  If
#pod C<die_on_line_insertion> is true, PkgVersion will raise an exception rather
#pod than insert a new line.
#pod
#pod =attr use_package
#pod
#pod This option, if true, will not insert an assignment to C<$VERSION> but will
#pod replace the existing C<package> declaration with one that includes a version
#pod like:
#pod
#pod   package Module::Name 0.001;
#pod
#pod =attr use_our
#pod
#pod The idea here was to insert C<< { our $VERSION = '0.001'; } >> instead of C<<
#pod $Module::Name::VERSION = '0.001'; >>.  It turns out that this causes problems
#pod with some analyzers.  Use of this feature is deprecated.
#pod
#pod Something else will replace it in the future.
#pod
#pod =attr use_begin
#pod
#pod If true, the version assignment is wrapped in a BEGIN block.  This may help in
#pod rare cases, such as when DynaLoader has to be called at BEGIN time, and
#pod requires VERSION.  This option should be needed rarely.
#pod
#pod Also note that assigning to C<$VERSION> before the module has finished
#pod compiling can lead to confused behavior with attempts to determine whether a
#pod module was successfully loaded on perl v5.8.
#pod
#pod =attr finder
#pod
#pod =for stopwords FileFinder
#pod
#pod This is the name of a L<FileFinder|Dist::Zilla::Role::FileFinder> for finding
#pod modules to edit.  The default value is C<:InstallModules> and C<:ExecFiles>;
#pod this option can be used more than once.
#pod
#pod Other predefined finders are listed in
#pod L<Dist::Zilla::Role::FileFinderUser/default_finders>.
#pod You can define your own with the
#pod L<[FileFinder::ByName]|Dist::Zilla::Plugin::FileFinder::ByName> and
#pod L<[FileFinder::Filter]|Dist::Zilla::Plugin::FileFinder::Filter> plugins.
#pod
#pod =cut

sub BUILD {
  my ($self) = @_;
  $self->log("use_our option to PkgVersion is deprecated and will be removed")
    if $self->use_our;

  if ($self->use_package && ($self->use_our || $self->use_begin)) {
    $self->log_fatal("use_package and (use_our or use_begin) are not compatible");
  }
}

sub munge_files {
  my ($self) = @_;

  $self->munge_file($_) for @{ $self->found_files };
}

sub munge_file {
  my ($self, $file) = @_;

  if ($file->is_bytes) {
    $self->log_debug($file->name . " has 'bytes' encoding, skipping...");
    return;
  }

  if ($file->name =~ /\.pod$/) {
    $self->log_debug($file->name . " is a pod file, skipping...");
    return;
  }

  return $self->munge_perl($file);
}

has die_on_existing_version => (
  is  => 'ro',
  isa => 'Bool',
  default => 0,
);

has die_on_line_insertion => (
  is  => 'ro',
  isa => 'Bool',
  default => 0,
);

has use_package => (
  is  => 'ro',
  isa => 'Bool',
  default => 0,
);

has use_our => (
  is  => 'ro',
  isa => 'Bool',
  default => 0,
);

has use_begin => (
  is  => 'ro',
  isa => 'Bool',
  default => 0,
);

sub munge_perl {
  my ($self, $file) = @_;

  my $version = $self->zilla->version;

  require version;
  Carp::croak("invalid characters in version")
    unless version::is_lax($version);

  my $document = $self->ppi_document_for_file($file);

  my $package_stmts = $document->find('PPI::Statement::Package');
  unless ($package_stmts) {
    $self->log_debug([ 'skipping %s: no package statement found', $file->name ]);
    return;
  }

  if ($self->document_assigns_to_variable($document, '$VERSION')) {
    if ($self->die_on_existing_version) {
      $self->log_fatal([ 'existing assignment to $VERSION in %s', $file->name ]);
    }

    $self->log([ 'skipping %s: assigns to $VERSION', $file->name ]);
    return;
  }

  my %seen_pkg;

  my $munged = 0;
  STATEMENT: for my $stmt (@$package_stmts) {
    my $package = $stmt->namespace;
    if ($seen_pkg{ $package }++) {
      $self->log([ 'skipping package re-declaration for %s', $package ]);
      next;
    }

    if ($stmt->content =~ /package\s*(?:#.*)?\n\s*\Q$package/) {
      $self->log([ 'skipping private package %s in %s', $package, $file->name ]);
      next;
    }

    $self->log("non-ASCII package name is likely to cause problems")
      if $package =~ /\P{ASCII}/;

    $self->log("non-ASCII version is likely to cause problems")
      if $version =~ /\P{ASCII}/;

    if ($self->use_package) {
      my $perl = sprintf 'package %s %s;', $package, $version;
      $perl .= ' # TRIAL' if $self->zilla->is_trial;

      my $newstmt = PPI::Token::Unknown->new($perl);
      Carp::carp("error inserting version in " . $file->name)
        unless $stmt->parent->__replace_child($stmt, $newstmt);
      $munged = 1;
      next STATEMENT;
    }

    # the \x20 hack is here so that when we scan *this* document we don't find
    # an assignment to version; it shouldn't be needed, but it's been annoying
    # enough in the past that I'm keeping it here until tests are better
    my $trial = $self->zilla->is_trial ? ' # TRIAL' : '';
    my $perl = $self->use_our
        ? "{ our \$VERSION\x20=\x20'$version'; }$trial"
        : "\$$package\::VERSION\x20=\x20'$version';$trial";

    $self->use_begin
      and $perl = "BEGIN { $perl }";

    $self->log_debug([
      'adding $VERSION assignment to %s in %s',
      $package,
      $file->name,
    ]);

    my $blank;

    {
      my $curr = $stmt;
      while (1) {
        # avoid bogus locations due to insert_after
        $document->flush_locations if $munged;
        my $curr_line_number = $curr->line_number + 1;
        my $find = $document->find(sub {
          my $line = $_[1]->line_number;
          return $line > $curr_line_number ? undef : $line == $curr_line_number;
        });

        last unless $find and @$find == 1;

        if ($find->[0]->isa('PPI::Token::Comment')) {
          $curr = $find->[0];
          next;
        }

        if ("$find->[0]" =~ /\A\s*\z/) {
          $blank = $find->[0];
        }

        last;
      }
    }

    $perl = $blank ? "$perl\n" : "\n$perl";

    my $clean_version = $version =~ tr/_//dr;
    $perl .= (
      $self->use_our
        ? "\n\$VERSION\x20=\x20'$clean_version';"
        : "\n\$$package\::VERSION\x20=\x20'$clean_version';"
      ) if $version ne $clean_version;

    # Why can't I use PPI::Token::Unknown? -- rjbs, 2014-01-11
    my $bogus_token = PPI::Token::Comment->new($perl);

    if ($blank) {
      Carp::carp("error inserting version in " . $file->name)
        unless $blank->insert_after($bogus_token);
      $blank->delete;
    } else {
      my $method = $self->die_on_line_insertion ? 'log_fatal' : 'log';
      $self->$method([
        'no blank line for $VERSION after package %s statement in %s line %s',
        $stmt->namespace,
        $file->name,
        $stmt->line_number,
      ]);

      Carp::carp("error inserting version in " . $file->name)
        unless $stmt->insert_after($bogus_token);
    }

    $munged = 1;
  }

  # the document is no longer correct; it must be reparsed before it can be
  # used again, so we can't just save_ppi_document_to_file
  # Maybe we want a way to clear the cache for the old form, though...
  # -- rjbs, 2016-04-24
  $file->content($document->serialize) if $munged;
  return;
}

__PACKAGE__->meta->make_immutable;
1;

#pod =head1 SEE ALSO
#pod
#pod Core Dist::Zilla plugins:
#pod L<PodVersion|Dist::Zilla::Plugin::PodVersion>,
#pod L<AutoVersion|Dist::Zilla::Plugin::AutoVersion>,
#pod L<NextRelease|Dist::Zilla::Plugin::NextRelease>.
#pod
#pod Other Dist::Zilla plugins:
#pod L<OurPkgVersion|Dist::Zilla::Plugin::OurPkgVersion> inserts version
#pod numbers using C<our $VERSION = '...';> and without changing line numbers
#pod
#pod =cut

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Plugin::PkgVersion - add a $VERSION to your packages

=head1 VERSION

version 6.010

=head1 SYNOPSIS

in dist.ini

  [PkgVersion]

=head1 DESCRIPTION

This plugin will add lines like the following to each package in each Perl
module or program (more or less) within the distribution:

  $MyModule::VERSION = '0.001';

or

  { our $VERSION = '0.001'; }

...where 0.001 is the version of the dist, and MyModule is the name of the
package being given a version.  (In other words, it always uses fully-qualified
names to assign versions.)

It will skip any package declaration that includes a newline between the
C<package> keyword and the package name, like:

  package
    Foo::Bar;

This sort of declaration is also ignored by the CPAN toolchain, and is
typically used when doing monkey patching or other tricky things.

=head1 ATTRIBUTES

=head2 die_on_existing_version

If true, then when PkgVersion sees an existing C<$VERSION> assignment, it will
throw an exception rather than skip the file.  This attribute defaults to
false.

=head2 die_on_line_insertion

By default, PkgVersion looks for a blank line after each C<package> statement.
If it finds one, it inserts the C<$VERSION> assignment on that line.  If it
doesn't, it will insert a new line, which means the shipped copy of the module
will have different line numbers (off by one) than the source.  If
C<die_on_line_insertion> is true, PkgVersion will raise an exception rather
than insert a new line.

=head2 use_package

This option, if true, will not insert an assignment to C<$VERSION> but will
replace the existing C<package> declaration with one that includes a version
like:

  package Module::Name 0.001;

=head2 use_our

The idea here was to insert C<< { our $VERSION = '0.001'; } >> instead of C<<
$Module::Name::VERSION = '0.001'; >>.  It turns out that this causes problems
with some analyzers.  Use of this feature is deprecated.

Something else will replace it in the future.

=head2 use_begin

If true, the version assignment is wrapped in a BEGIN block.  This may help in
rare cases, such as when DynaLoader has to be called at BEGIN time, and
requires VERSION.  This option should be needed rarely.

Also note that assigning to C<$VERSION> before the module has finished
compiling can lead to confused behavior with attempts to determine whether a
module was successfully loaded on perl v5.8.

=head2 finder

=for stopwords FileFinder

This is the name of a L<FileFinder|Dist::Zilla::Role::FileFinder> for finding
modules to edit.  The default value is C<:InstallModules> and C<:ExecFiles>;
this option can be used more than once.

Other predefined finders are listed in
L<Dist::Zilla::Role::FileFinderUser/default_finders>.
You can define your own with the
L<[FileFinder::ByName]|Dist::Zilla::Plugin::FileFinder::ByName> and
L<[FileFinder::Filter]|Dist::Zilla::Plugin::FileFinder::Filter> plugins.

=head1 SEE ALSO

Core Dist::Zilla plugins:
L<PodVersion|Dist::Zilla::Plugin::PodVersion>,
L<AutoVersion|Dist::Zilla::Plugin::AutoVersion>,
L<NextRelease|Dist::Zilla::Plugin::NextRelease>.

Other Dist::Zilla plugins:
L<OurPkgVersion|Dist::Zilla::Plugin::OurPkgVersion> inserts version
numbers using C<our $VERSION = '...';> and without changing line numbers

=head1 AUTHOR

Ricardo SIGNES 😏 <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
