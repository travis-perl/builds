# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/GSrE_1Qfw9/africa.  Olson data version 2014f
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Africa::Brazzaville;
$DateTime::TimeZone::Africa::Brazzaville::VERSION = '1.73';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Africa::Brazzaville::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60305295532, #      utc_end 1911-12-31 22:58:52 (Sun)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60305299200, #    local_end 1912-01-01 00:00:00 (Mon)
3668,
0,
'LMT',
    ],
    [
60305295532, #    utc_start 1911-12-31 22:58:52 (Sun)
DateTime::TimeZone::INFINITY, #      utc_end
60305299132, #  local_start 1911-12-31 23:58:52 (Sun)
DateTime::TimeZone::INFINITY, #    local_end
3600,
0,
'WAT',
    ],
];

sub olson_version { '2014f' }

sub has_dst_changes { 0 }

sub _max_year { 2024 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

