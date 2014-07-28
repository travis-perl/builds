use 5.008;    # utf8
use strict;
use warnings;
use utf8;

package Dist::Zilla::Role::Bootstrap;

our $VERSION = '1.000002';

# ABSTRACT: Shared logic for bootstrap things.

our $AUTHORITY = 'cpan:KENTNL'; # AUTHORITY

use Moose::Role qw( with has around requires );
use List::UtilsBy qw( max_by nmax_by );
use MooseX::AttributeShortcuts 0.015;    #Min version for builder => sub {}
use version qw();






































with 'Dist::Zilla::Role::Plugin';

around 'dump_config' => sub {
  my ( $orig, $self, @args ) = @_;
  my $config    = $self->$orig(@args);
  my $localconf = {};
  for my $attribute (qw( try_built try_built_method fallback distname )) {
    my $pred = 'has_' . $attribute;
    if ( $self->can($pred) ) {
      next unless $self->$pred();
    }
    if ( $self->can($attribute) ) {
      $localconf->{$attribute} = $self->$attribute();
    }
  }

  $config->{ q{} . __PACKAGE__ } = $localconf;
  return $config;
};















has distname => ( isa => 'Str', is => ro =>, lazy => 1, builder => sub { $_[0]->zilla->name; }, );





has _cwd => (
  is      => ro =>,
  lazy    => 1,
  builder => sub {
    require Path::Tiny;
    return Path::Tiny::path( $_[0]->zilla->root );
  },
);
















has try_built => (
  isa     => 'Bool',
  is      => ro =>,
  lazy    => 1,
  builder => sub { return },
);















has fallback => (
  isa     => 'Bool',
  is      => ro =>,
  lazy    => 1,
  builder => sub { return 1 },
);



















has try_built_method => (
  isa     => 'Str',
  is      => ro =>,
  lazy    => 1,
  builder => sub { return 'mtime' },
);









sub _pick_latest_mtime {
  my ( undef, @candidates ) = @_;
  return max_by { $_->stat->mtime } @candidates;
}











sub _get_candidate_version {
  my ( $self, $candidate ) = @_;
  my $distname = $self->distname;
  if ( $candidate->basename =~ /\A\Q$distname\E-(.+\z)/msx ) {
    my $version = $1;
    $version =~ s/-TRIAL\z//msx;
    return version->parse($version);
  }

}









sub _pick_latest_parseversion {
  my ( $self, @candidates ) = @_;
  return max_by { $self->_get_candidate_version($_) } @candidates;
}

my (%methods) = (
  mtime        => _pick_latest_mtime        =>,
  parseversion => _pick_latest_parseversion =>,
);









sub _pick_candidate {
  my ( $self, @candidates ) = @_;
  my $method = $self->try_built_method;
  if ( not exists $methods{$method} ) {
    require Carp;
    Carp::croak("No such candidate picking method $method");
  }
  $method = $methods{$method};
  return $self->$method(@candidates);
}











has _bootstrap_root => (
  is      => ro =>,
  lazy    => 1,
  builder => sub {
    my ($self) = @_;
    if ( not $self->try_built ) {
      return $self->_cwd;
    }
    my $distname = $self->distname;

    my (@candidates) = grep { $_->basename =~ /\A\Q$distname\E-/msx } grep { $_->is_dir } $self->_cwd->children;

    if ( 1 == scalar @candidates ) {
      return $candidates[0];
    }
    if ( scalar @candidates < 1 ) {
      if ( not $self->fallback ) {
        $self->log( [ 'candidates for bootstrap (%s) == 0, and fallback disabled. not bootstrapping', 0 + @candidates ] );
        return;
      }
      else {
        $self->log( [ 'candidates for bootstrap (%s) == 0, fallback to boostrapping <distname>/', 0 + @candidates ] );
        return $self->_cwd;
      }
    }

    $self->log_debug( [ '>1 candidates, picking one by method %s', $self->try_built_method ] );
    return $self->_pick_candidate(@candidates);

  },
);









sub _add_inc {
  my ( undef, $import ) = @_;
  if ( not ref $import ) {
    require lib;
    return lib->import($import);
  }
  require Carp;
  return Carp::croak('At this time, _add_inc(arg) only supports scalar values of arg');
}













requires 'bootstrap';

around plugin_from_config => sub {
  my ( $orig, $plugin_class, $name, $payload, $section ) = @_;

  my $instance = $plugin_class->$orig( $name, $payload, $section );

  $instance->bootstrap;

  return $instance;
};

no Moose::Role;

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Role::Bootstrap - Shared logic for bootstrap things.

=head1 VERSION

version 1.000002

=head1 SYNOPSIS

For consuming plugins:

    use Moose;
    with 'Dist::Zilla::Role::Bootstrap';

    sub bootstrap {
        my $bootstrap_root = $_[0]->_bootstrap_root;
        # Do the actual bootstrap work here
        $_[0]->_add_inc('./some/path/here');
    }

For users of plugins:

    [Some::Plugin::Name]
    try_built = 0 ; # use / as the root to bootstrap
    try_built = 1 ; # try to use /Dist-Name-.*/ instead of /

    fallback  = 0 ; # don't bootstrap at all if /Dist-Name-.*/ matches != 1 things
    fallback  = 1 ; # fallback to / if /Dist-Name-.*/ matches != 1 things

=head1 REQUIRED METHODS

=head2 C<bootstrap>

Any user specified C<bootstrap> method will be invoked during C<plugin_from_config>.

This is B<AFTER> C<< ->new >>, B<AFTER> C<< ->BUILD >>, and B<AFTER> C<dzil>'s internal C<plugin_from_config> steps.

This occurs within the C<register_component> phase of the plug-in loading and configuration.

This also occurs B<BEFORE> C<Dist::Zilla> attaches the plug-in into the plug-in stash.

=head1 ATTRIBUTES

=head2 C<distname>

The name of the distribution.

This value is vivified by asking C<< zilla->name >>.

Usually this value is populated by C<dist.ini> in the property C<name>

However, occasionally, this value is discovered by a C<plugin>.

In such a case, that plugin cannot be bootstrapped, because that plugin B<MUST> be loaded prior to bootstrap.

=head2 C<try_built>

This attribute controls how the consuming C<plugin> behaves.

=over 4

=item * false B<(default)> : bootstrapping is only done to C<PROJECTROOT/lib>

=item * true : bootstrap attempts to try C<< PROJECTROOT/<distname>-<version>/lib >>

=back

=head2 C<fallback>

This attribute is for use in conjunction with C<try_built>

=over 4

=item * C<false> : When C<< PROJECTROOT/<distname>-<version> >> does not exist, don't perform any bootstrapping

=item * C<true> B<(default)> : When C<< PROJECTROOT/<distname>-<version> >> does not exist, bootstrap to C<< PROJECTROOT/lib >>

=back

=head2 C<try_built_method>

This attribute controls how C<try_built> behaves when multiple directories exist that match C<< PROJECTROOT/<distname>-.* >>

Two valid options at this time:

=over 4

=item * C<mtime> B<(default)> : Pick the directory with the most recent C<mtime>

=item * C<parseversion> : Attempt to parse versions on all candidate directories and use the one with the largest version.

=back

Prior to C<0.2.0> this property did not exist, and default behavior was to assume C<0 Candidates> and C<2 or more Candidates> were the same problem.

=head1 PRIVATE ATTRIBUTES

=head2 C<_cwd>

=head2 C<_bootstrap_root>

Internal: This is the real legwork, and resolves the base directory using the bootstrap resolution protocol.

It should always return a project root of some kind, whether it be a source tree, or built source tree.

It can also return C<undef> if discovery concludes that no bootstrap can or should be performed.

=head1 PRIVATE METHODS

=head2 C<_pick_latest_mtime>

"Latest" C<mtime> candidate selector

    my $directory = $self->_pick_latest_mtime(@directory_objects)

=head2 C<_get_candidate_version>

Attempt to resolve a version from a directory name

    my $version = $self->_get_candidate_version($directory_object)

B<NOTE:> At this time, the presence of C<-TRIAL> is simply stripped and ignored

=head2 C<_pick_latest_parseversion>

"Latest" C<version> candidate selector

    my $directory = $self->_pick_latest_parseversion(@directory_objects)

=head2 C<_pick_candidate>

Pick a directory from a list of candidates using the method described by C<try_built_method>

    my $directory = $self->_pick_candidate( @directory_objects );

=head2 C<_add_inc>

Internal: Used to perform the final step of injecting library paths into C<@INC>

    $self->_add_inc("$libraryPath");

=begin MetaPOD::JSON v1.1.0

{
    "namespace":"Dist::Zilla::Role::Bootstrap",
    "interface":"role",
    "does":"Dist::Zilla::Role::Plugin"
}


=end MetaPOD::JSON

=head1 AUTHOR

Kent Fredric <kentfredric@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
