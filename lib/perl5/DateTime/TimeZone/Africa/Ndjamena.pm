# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/dGCdhCHqq1/africa.  Olson data version 2016f
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Africa::Ndjamena;
$DateTime::TimeZone::Africa::Ndjamena::VERSION = '2.01';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Africa::Ndjamena::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60305295588, #      utc_end 1911-12-31 22:59:48 (Sun)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60305299200, #    local_end 1912-01-01 00:00:00 (Mon)
3612,
0,
'LMT',
    ],
    [
60305295588, #    utc_start 1911-12-31 22:59:48 (Sun)
62444386800, #      utc_end 1979-10-13 23:00:00 (Sat)
60305299188, #  local_start 1911-12-31 23:59:48 (Sun)
62444390400, #    local_end 1979-10-14 00:00:00 (Sun)
3600,
0,
'WAT',
    ],
    [
62444386800, #    utc_start 1979-10-13 23:00:00 (Sat)
62456997600, #      utc_end 1980-03-07 22:00:00 (Fri)
62444394000, #  local_start 1979-10-14 01:00:00 (Sun)
62457004800, #    local_end 1980-03-08 00:00:00 (Sat)
7200,
1,
'WAST',
    ],
    [
62456997600, #    utc_start 1980-03-07 22:00:00 (Fri)
DateTime::TimeZone::INFINITY, #      utc_end
62457001200, #  local_start 1980-03-07 23:00:00 (Fri)
DateTime::TimeZone::INFINITY, #    local_end
3600,
0,
'WAT',
    ],
];

sub olson_version {'2016f'}

sub has_dst_changes {1}

sub _max_year {2026}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

