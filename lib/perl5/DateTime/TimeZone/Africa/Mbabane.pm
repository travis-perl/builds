# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/DKx24lslsN/africa.  Olson data version 2014e
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Africa::Mbabane;
$DateTime::TimeZone::Africa::Mbabane::VERSION = '1.72';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Africa::Mbabane::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60026392536, #      utc_end 1903-02-28 21:55:36 (Sat)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60026400000, #    local_end 1903-03-01 00:00:00 (Sun)
7464,
0,
'LMT',
    ],
    [
60026392536, #    utc_start 1903-02-28 21:55:36 (Sat)
DateTime::TimeZone::INFINITY, #      utc_end
60026399736, #  local_start 1903-02-28 23:55:36 (Sat)
DateTime::TimeZone::INFINITY, #    local_end
7200,
0,
'SAST',
    ],
];

sub olson_version { '2014e' }

sub has_dst_changes { 0 }

sub _max_year { 2024 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

