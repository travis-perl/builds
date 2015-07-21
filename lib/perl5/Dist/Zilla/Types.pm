package Dist::Zilla::Types;
# ABSTRACT: dzil-specific type library
$Dist::Zilla::Types::VERSION = '5.037';
use namespace::autoclean;

#pod =head1 OVERVIEW
#pod
#pod This library provides L<MooseX::Types> types for use by Dist::Zilla.  These
#pod types are not (yet?) for public consumption, and you should not rely on them.
#pod
#pod Dist::Zilla uses a number of types found in L<MooseX::Types::Perl>.  Maybe
#pod that's what you want.
#pod
#pod =cut

use MooseX::Types -declare => [qw(License OneZero YesNoStr ReleaseStatus)];
use MooseX::Types::Moose qw(Str Int);

subtype License, as class_type('Software::License');

subtype OneZero, as Str, where { $_ eq '0' or $_ eq '1' };

subtype YesNoStr, as Str, where { /\A(?:y|ye|yes)\Z/i or /\A(?:n|no)\Z/i };

subtype ReleaseStatus, as Str, where { /\A(?:stable|testing|unstable)\z/ };

coerce OneZero, from YesNoStr, via { /\Ay/i ? 1 : 0 };

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Types - dzil-specific type library

=head1 VERSION

version 5.037

=head1 OVERVIEW

This library provides L<MooseX::Types> types for use by Dist::Zilla.  These
types are not (yet?) for public consumption, and you should not rely on them.

Dist::Zilla uses a number of types found in L<MooseX::Types::Perl>.  Maybe
that's what you want.

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
