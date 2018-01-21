package Dist::Zilla::PluginBundle::Filter 6.010;
# ABSTRACT: use another bundle, with some plugins removed

use Moose;
with 'Dist::Zilla::Role::PluginBundle';

use namespace::autoclean;

use List::Util 1.33 qw(any);
use Class::Load qw(try_load_class);
use Dist::Zilla::Util;

#pod =head1 SYNOPSIS
#pod
#pod In your F<dist.ini>:
#pod
#pod   [@Filter]
#pod   -bundle = @Basic
#pod   -version = 5.031
#pod   -remove = ShareDir
#pod   -remove = UploadToCPAN
#pod   option = for_basic
#pod
#pod =head1 DESCRIPTION
#pod
#pod This plugin bundle actually wraps and modifies another plugin bundle.  It
#pod includes all the configuration for the bundle named in the C<-bundle> attribute,
#pod but removes all the entries whose package is given in the C<-remove> attributes.
#pod
#pod A minimum required version of the bundle can be specified with the C<-version> 
#pod attribute.
#pod
#pod Options not prefixed with C<-> will be passed to the bundle to be filtered.
#pod
#pod B<NOTE:> When you filter a bundle you B<SHOULD NOT> include it directly in
#pod your C<dist.ini> file. This plugin will take care of including it for you.
#pod
#pod =head1 SEE ALSO
#pod
#pod Core Dist::Zilla plugins: L<@Basic|Dist::Zilla::PluginBundle::Basic>.
#pod
#pod Dist::Zilla roles: L<PluginBundle|Dist::Zilla::Role::PluginBundle>.
#pod
#pod =cut

sub mvp_multivalue_args { qw(remove -remove) }

sub bundle_config {
  my ($self, $section) = @_;
  my $class = (ref $self) || $self;

  my $config = {};

  my $has_filter_args = any { /^-/ } keys %{ $section->{payload} };
  for my $key (keys %{ $section->{payload} }) {
    my $val = $section->{payload}->{$key};
    my $target = $has_filter_args && ($key !~ /^-/)
      ? 'bundle'
      : 'filter';
    $key =~ s/^-// if $target eq 'filter';
    $config->{$target}->{$key} = $val;
  }

  Carp::croak("no bundle given for bundle filter")
    unless my $bundle = $config->{filter}->{bundle};

  my $pkg = Dist::Zilla::Util->expand_config_package_name($bundle);

  my $load_opts = {};
  if( my $v = $config->{filter}->{version} ){
    $load_opts->{'-version'} = $v;
  }

  unless (try_load_class($pkg, $load_opts)) {
    # XXX Naughty! -- rjbs, 2013-07-23
    Config::MVP::Section->missing_package($pkg, $bundle);
  }

  my @plugins = $pkg->bundle_config({
    name    => $section->{name}, # not 100% sure about this -- rjbs, 2010-03-06
    package => $pkg,
    payload => $config->{bundle} || {},
  });

  return @plugins unless my $remove = $config->{filter}->{remove};

  for my $i (reverse 0 .. $#plugins) {
    splice @plugins, $i, 1 if any(sub {
      $plugins[$i][1] eq Dist::Zilla::Util->expand_config_package_name($_)
    }, @$remove);
  }

  return @plugins;
}

__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::PluginBundle::Filter - use another bundle, with some plugins removed

=head1 VERSION

version 6.010

=head1 SYNOPSIS

In your F<dist.ini>:

  [@Filter]
  -bundle = @Basic
  -version = 5.031
  -remove = ShareDir
  -remove = UploadToCPAN
  option = for_basic

=head1 DESCRIPTION

This plugin bundle actually wraps and modifies another plugin bundle.  It
includes all the configuration for the bundle named in the C<-bundle> attribute,
but removes all the entries whose package is given in the C<-remove> attributes.

A minimum required version of the bundle can be specified with the C<-version> 
attribute.

Options not prefixed with C<-> will be passed to the bundle to be filtered.

B<NOTE:> When you filter a bundle you B<SHOULD NOT> include it directly in
your C<dist.ini> file. This plugin will take care of including it for you.

=head1 SEE ALSO

Core Dist::Zilla plugins: L<@Basic|Dist::Zilla::PluginBundle::Basic>.

Dist::Zilla roles: L<PluginBundle|Dist::Zilla::Role::PluginBundle>.

=head1 AUTHOR

Ricardo SIGNES 😏 <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
