#
# This file is part of autobox-Junctions
#
# This software is Copyright (c) 2013 by Chris Weyl.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#
package autobox::Junctions;
BEGIN {
  $autobox::Junctions::AUTHORITY = 'cpan:RSRCHBOY';
}
{
  $autobox::Junctions::VERSION = '0.001';
}
# git description: 20530a8


# ABSTRACT: Autoboxified junction-style operators

use strict;
use warnings;

use parent 'autobox';

sub import {
    my $class = shift @_;

    $class->SUPER::import(
        ARRAY => 'autobox::Junctions::ARRAY',
        @_,
    );
}

{
    package autobox::Junctions::ARRAY;
BEGIN {
  $autobox::Junctions::ARRAY::AUTHORITY = 'cpan:RSRCHBOY';
}
{
  $autobox::Junctions::ARRAY::VERSION = '0.001';
}
# git description: 20530a8


    use strict;
    use warnings;

    use Syntax::Keyword::Junction ();

    sub all  { Syntax::Keyword::Junction::all( @{ $_[0] }) }
    sub any  { Syntax::Keyword::Junction::any( @{ $_[0] }) }
    sub none { Syntax::Keyword::Junction::none(@{ $_[0] }) }
    sub one  { Syntax::Keyword::Junction::one( @{ $_[0] }) }
}

!!42;

__END__

=pod

=encoding utf-8

=for :stopwords Chris Weyl autoboxified autoboxifying AUTOBOXED

=head1 NAME

autobox::Junctions - Autoboxified junction-style operators

=head1 VERSION

This document describes version 0.001 of autobox::Junctions - released October 03, 2013 as part of autobox-Junctions.

=head1 SYNOPSIS

    # somewhere above...
    use autobox::Junctions;

    # somewhere below...
    my @explodey = qw{ bing bang boom };
    warn "boom!\n"
        if @explody->any eq 'boom';

    my $still_explody = [ @explodey ];
    warn "not all explody\n"
        unless $still_explody->all eq 'boom';

    # now, bonus points...
    use autobox::Core;

    my $weapons = {
        mateu => 'bow & arrow',     # fearsome hunter
        ether => 'disarming smile', # Canadian
        jnap  => 'shotgun',         # upstate NY
    };

    warn 'mateu is armed!'
        if $weapons->keys->any eq 'mateu'

    warn '...but at least no one has a nuke'
        if $weapons->values->none eq 'nuke';

=head1 DESCRIPTION

This is a simple autoboxifying wrapper around L<Syntax::Keyword::Junction>,
that provides array and array references with the functions provided by that
package as methods for arrays:
L<any|Syntax::Keyword::Junction/any>,
L<all|Syntax::Keyword::Junction/all>, L<one|Syntax::Keyword::Junction/one>,
and L<none|Syntax::Keyword::Junction/none>.

=head1 AUTOBOXED METHODS

See: L<Syntax::Keyword::Junction/any>, LSyntax::Keyword::Junction/all>,
L<Syntax::Keyword::Junction/one>, and L<Syntax::Keyword::Junction/none>.

=head1 SEE ALSO

Please see those modules/websites for more information related to this module.

=over 4

=item *

L<Syntax::Keyword::Junction|Syntax::Keyword::Junction>

=back

=head1 SOURCE

The development version is on github at L<http://github.com/RsrchBoy/autobox-Junctions>
and may be cloned from L<git://github.com/RsrchBoy/autobox-Junctions.git>

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
https://github.com/RsrchBoy/autobox-Junctions/issues

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Chris Weyl <cweyl@alumni.drew.edu>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2013 by Chris Weyl.

This is free software, licensed under:

  The GNU Lesser General Public License, Version 2.1, February 1999

=cut
