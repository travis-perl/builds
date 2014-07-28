use strict;
use warnings;
package Pod::Weaver::PluginBundle::Default;
{
  $Pod::Weaver::PluginBundle::Default::VERSION = '4.006';
}
# ABSTRACT: a bundle for the most commonly-needed prep work for a pod document


use namespace::autoclean;

use Pod::Weaver::Config::Assembler;
sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
  return (
    [ '@Default/CorePrep',        _exp('@CorePrep'), {} ],
    [ '@Default/SingleEncoding',  _exp('-SingleEncoding'), {} ],
    [ '@Default/Name',            _exp('Name'),      {} ],
    [ '@Default/Version',         _exp('Version'),   {} ],

    [ '@Default/prelude',   _exp('Region'),    { region_name => 'prelude'  } ],
    [ 'SYNOPSIS',           _exp('Generic'),   {} ],
    [ 'DESCRIPTION',        _exp('Generic'),   {} ],
    [ 'OVERVIEW',           _exp('Generic'),   {} ],

    [ 'ATTRIBUTES',         _exp('Collect'),   { command => 'attr'   } ],
    [ 'METHODS',            _exp('Collect'),   { command => 'method' } ],
    [ 'FUNCTIONS',          _exp('Collect'),   { command => 'func'   } ],

    [ '@Default/Leftovers', _exp('Leftovers'), {} ],

    [ '@Default/postlude',  _exp('Region'),    { region_name => 'postlude' } ],

    [ '@Default/Authors',   _exp('Authors'),   {} ],
    [ '@Default/Legal',     _exp('Legal'),     {} ],
  )
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Pod::Weaver::PluginBundle::Default - a bundle for the most commonly-needed prep work for a pod document

=head1 VERSION

version 4.006

=head1 OVERVIEW

This is the bundle used by default (specifically by Pod::Weaver's
C<new_with_default_config> method).  It may change over time, but should remain
fairly conservative and straightforward.

It is nearly equivalent to the following:

  [@CorePrep]
  
  [-SingleEncoding]

  [Name]
  [Version]

  [Region  / prelude]

  [Generic / SYNOPSIS]
  [Generic / DESCRIPTION]
  [Generic / OVERVIEW]

  [Collect / ATTRIBUTES]
  command = attr

  [Collect / METHODS]
  command = method

  [Collect / FUNCTIONS]
  command = func

  [Leftovers]

  [Region  / postlude]

  [Authors]
  [Legal]

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
