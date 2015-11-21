package DateTime::Locale::Util;

use strict;
use warnings;

use Exporter qw( import );

our $VERSION = '1.01';

our @EXPORT_OK = 'parse_locale_code';

sub parse_locale_code {
    ## no critic (RegularExpressions::ProhibitCaptureWithoutTest)
    $_[0] =~ /
        ([a-z]+)                 # language
        (?: -([A-Z][a-z]+) )?    # script - Title Case - optional
        (?: -([A-Z]+|\d\d\d) )?  # territory - ALL CAPS or 3 numbers - optional
        (?: -([A-Z]+) )?         # variant - ALL CAPS - optional
    /x;

    return ( $1, $2, $3, $4 );
}

1;

# ABSTRACT: Utility code for DateTime::Locale

__END__

=pod

=head1 NAME

DateTime::Locale::Util - Utility code for DateTime::Locale

=head1 VERSION

version 1.01

=head1 DESCRIPTION

There are no user-facing parts in this module.

=encoding UTF-8

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Dave Rolsky.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
