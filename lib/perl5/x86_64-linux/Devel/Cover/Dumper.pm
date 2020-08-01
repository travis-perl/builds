# This file is part of Devel::Cover.

# This software is free.  It is licensed under the same terms as Perl itself.

# The latest version of this software should be available from my homepage:
# http://www.pjcj.net

# Author of this file: Olivier Mengué

package  # Private module
   Devel::Cover::Dumper;

use strict qw( vars subs );  # no refs
use warnings;

our $VERSION = '1.36'; # VERSION

sub import {
    my $caller = caller;
    if (defined &{"${caller}::Dumper"} && \&{"${caller}::Dumper"} != \&Dumper) {
        require Carp;
        Carp::croak("Data::Dumper previously imported.  " .
                    "Use Devel::Cover::Dumper instead.");
    }
    *{"${caller}::Dumper"} = \&Dumper;
}

sub Dumper {
    require Data::Dumper;
    local $Data::Dumper::Indent   = 1;
    local $Data::Dumper::Sortkeys = 1;
    Data::Dumper::Dumper(@_);
}

1

__END__

=encoding utf8

=head1 NAME

Devel::Cover::Dumper - Internal module for debugging purposes

=head1 VERSION

version 1.36

=head1 SYNOPSIS

 use Devel::Cover::Dumper;

 print Dumper $x;

=head1 DESCRIPTION

Wrapper around Data::Dumper::Dumper.

=head1 SEE ALSO

 Devel::Cover

=head1 METHODS

=head1 BUGS

Huh?

=head1 LICENCE

Copyright 2012, Olivier Mengué

This software is free.  It is licensed under the same terms as Perl itself.

The latest version of this software should be available from my homepage:
http://www.pjcj.net

=cut
