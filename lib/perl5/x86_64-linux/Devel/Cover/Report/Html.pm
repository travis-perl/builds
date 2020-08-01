# Copyright 2001-2019, Paul Johnson (paul@pjcj.net)

# This software is free.  It is licensed under the same terms as Perl itself.

# The latest version of this software should be available from my homepage:
# http://www.pjcj.net

package Devel::Cover::Report::Html;

use strict;
use warnings;

our $VERSION = '1.36'; # VERSION

use base "Devel::Cover::Report::Html_minimal";

1;

__END__

=head1 NAME

Devel::Cover::Report::Html - HTML backend for Devel::Cover

=head1 VERSION

version 1.36

=head1 SYNOPSIS

 cover -report html

=head1 DESCRIPTION

This module provides a HTML reporting mechanism for coverage data.  It
is designed to be called from the C<cover> program.  This is an empty
class derived from the default HTML output module,
Devel::Cover::Report::Html_minimal.

=head1 SEE ALSO

 Devel::Cover

=head1 BUGS

Huh?

=head1 LICENCE

Copyright 2001-2019, Paul Johnson (paul@pjcj.net)

This software is free.  It is licensed under the same terms as Perl itself.

The latest version of this software should be available from my homepage:
http://www.pjcj.net

=cut
