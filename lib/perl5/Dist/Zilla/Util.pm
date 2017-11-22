use strict;
use warnings;
package Dist::Zilla::Util 6.010;
# ABSTRACT: random snippets of code that Dist::Zilla wants

use Carp ();
use Encode ();

{
  package
    Dist::Zilla::Util::PEA;
  @Dist::Zilla::Util::PEA::ISA = ('Pod::Eventual');
  sub _new  {
    # Load Pod::Eventual only when used (and not yet loaded)
    unless (exists $INC{'Pod/Eventual.pm'}) {
      require Pod::Eventual;
      Pod::Eventual->VERSION(0.091480); # better nonpod/blank events
    }

    bless {} => shift;
  }
  sub handle_nonpod {
    my ($self, $event) = @_;
    return if $self->{abstract};
    return $self->{abstract} = $1
      if $event->{content}=~ /^\s*#+\s*ABSTRACT:[ \t]*(\S.*)$/m;
    return;
  }
  sub handle_event {
    my ($self, $event) = @_;
    return if $self->{abstract};
    if (
      ! $self->{in_name}
      and $event->{type} eq 'command'
      and $event->{command} eq 'head1'
      and $event->{content} =~ /^NAME\b/
    ) {
      $self->{in_name} = 1;
      return;
    }

    return unless $self->{in_name};

    if (
      $event->{type} eq 'text'
      and $event->{content} =~ /^(?:\S+\s+)+?-+\s+(.+)\n$/s
    ) {
      $self->{abstract} = $1;
      $self->{abstract} =~ s/\s+/\x20/g;
    }
  }
}

#pod =method abstract_from_file
#pod
#pod This method, I<which is likely to change or go away>, tries to guess the
#pod abstract of a given file, assuming that it's Perl code.  It looks for a POD
#pod C<=head1> section called "NAME" or a comment beginning with C<ABSTRACT:>.
#pod
#pod =cut

sub abstract_from_file {
  my ($self, $file) = @_;
  my $e = Dist::Zilla::Util::PEA->_new;

  my $chars = $file->content;
  my $bytes = Encode::encode('UTF-8', $chars, Encode::FB_CROAK);

  $e->read_string($bytes);

  return $e->{abstract};
}

#pod =method expand_config_package_name
#pod
#pod   my $pkg_name = Dist::Zilla::Util->expand_config_package_name($string);
#pod
#pod This method, I<which is likely to change or go away>, rewrites the given string
#pod into a package name.
#pod
#pod Prefixes are rewritten as follows:
#pod
#pod =for :list
#pod * C<=> becomes nothing
#pod * C<@> becomes C<Dist::Zilla::PluginBundle::>
#pod * C<%> becomes C<Dist::Zilla::Stash::>
#pod * otherwise, C<Dist::Zilla::Plugin::> is prepended
#pod
#pod =cut

use String::RewritePrefix 0.006 rewrite => {
  -as => '_expand_config_package_name',
  prefixes => {
    '=' => '',
    '@' => 'Dist::Zilla::PluginBundle::',
    '%' => 'Dist::Zilla::Stash::',
    ''  => 'Dist::Zilla::Plugin::',
  },
};
sub expand_config_package_name {
  shift; goto &_expand_config_package_name
}

sub _global_config_root {
  require Dist::Zilla::Path;
  return Dist::Zilla::Path::path($ENV{DZIL_GLOBAL_CONFIG_ROOT}) if $ENV{DZIL_GLOBAL_CONFIG_ROOT};

  require File::HomeDir;
  my $homedir = File::HomeDir->my_home
    or Carp::croak("couldn't determine home directory");

  return Dist::Zilla::Path::path($homedir)->child('.dzil');
}

sub _assert_loaded_class_version_ok {
  my ($self, $pkg, $version) = @_;

  require CPAN::Meta::Requirements;
  my $req = CPAN::Meta::Requirements->from_string_hash({
    $pkg => $version,
  });

  my $have_version = $pkg->VERSION;
  unless ($req->accepts_module($pkg => $have_version)) {
    die( sprintf
      "%s version (%s) does not match required version: %s\n",
      $pkg,
      $have_version // 'undef',
      $version,
    );
  }
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Util - random snippets of code that Dist::Zilla wants

=head1 VERSION

version 6.010

=head1 METHODS

=head2 abstract_from_file

This method, I<which is likely to change or go away>, tries to guess the
abstract of a given file, assuming that it's Perl code.  It looks for a POD
C<=head1> section called "NAME" or a comment beginning with C<ABSTRACT:>.

=head2 expand_config_package_name

  my $pkg_name = Dist::Zilla::Util->expand_config_package_name($string);

This method, I<which is likely to change or go away>, rewrites the given string
into a package name.

Prefixes are rewritten as follows:

=over 4

=item *

C<=> becomes nothing

=item *

C<@> becomes C<Dist::Zilla::PluginBundle::>

=item *

C<%> becomes C<Dist::Zilla::Stash::>

=item *

otherwise, C<Dist::Zilla::Plugin::> is prepended

=back

=head1 AUTHOR

Ricardo SIGNES 😏 <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
