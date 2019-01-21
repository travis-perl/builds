# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/L68fv1TlrY/antarctica.  Olson data version 2018i
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Antarctica::DumontDUrville;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.23';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Antarctica::DumontDUrville::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
61409836800, #      utc_end 1947-01-01 00:00:00 (Wed)
DateTime::TimeZone::NEG_INFINITY, #  local_start
61409836800, #    local_end 1947-01-01 00:00:00 (Wed)
0,
0,
'-00',
    ],
    [
61409836800, #    utc_start 1947-01-01 00:00:00 (Wed)
61568690400, #      utc_end 1952-01-13 14:00:00 (Sun)
61409872800, #  local_start 1947-01-01 10:00:00 (Wed)
61568726400, #    local_end 1952-01-14 00:00:00 (Mon)
36000,
0,
'+10',
    ],
    [
61568690400, #    utc_start 1952-01-13 14:00:00 (Sun)
61720185600, #      utc_end 1956-11-01 00:00:00 (Thu)
61568690400, #  local_start 1952-01-13 14:00:00 (Sun)
61720185600, #    local_end 1956-11-01 00:00:00 (Thu)
0,
0,
'-00',
    ],
    [
61720185600, #    utc_start 1956-11-01 00:00:00 (Thu)
DateTime::TimeZone::INFINITY, #      utc_end
61720221600, #  local_start 1956-11-01 10:00:00 (Thu)
DateTime::TimeZone::INFINITY, #    local_end
36000,
0,
'+10',
    ],
];

sub olson_version {'2018i'}

sub has_dst_changes {0}

sub _max_year {2028}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

