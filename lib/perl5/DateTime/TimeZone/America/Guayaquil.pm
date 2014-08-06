# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/DKx24lslsN/southamerica.  Olson data version 2014e
#
# Do not edit this file directly.
#
package DateTime::TimeZone::America::Guayaquil;
$DateTime::TimeZone::America::Guayaquil::VERSION = '1.72';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::America::Guayaquil::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
59611180760, #      utc_end 1890-01-01 05:19:20 (Wed)
DateTime::TimeZone::NEG_INFINITY, #  local_start
59611161600, #    local_end 1890-01-01 00:00:00 (Wed)
-19160,
0,
'LMT',
    ],
    [
59611180760, #    utc_start 1890-01-01 05:19:20 (Wed)
60904934040, #      utc_end 1931-01-01 05:14:00 (Thu)
59611161920, #  local_start 1890-01-01 00:05:20 (Wed)
60904915200, #    local_end 1931-01-01 00:00:00 (Thu)
-18840,
0,
'QMT',
    ],
    [
60904934040, #    utc_start 1931-01-01 05:14:00 (Thu)
DateTime::TimeZone::INFINITY, #      utc_end
60904916040, #  local_start 1931-01-01 00:14:00 (Thu)
DateTime::TimeZone::INFINITY, #    local_end
-18000,
0,
'ECT',
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

