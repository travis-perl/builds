# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/GSrE_1Qfw9/africa.  Olson data version 2014f
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Africa::Addis_Ababa;
$DateTime::TimeZone::Africa::Addis_Ababa::VERSION = '1.73';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Africa::Addis_Ababa::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
58980000312, #      utc_end 1869-12-31 21:25:12 (Fri)
DateTime::TimeZone::NEG_INFINITY, #  local_start
58980009600, #    local_end 1870-01-01 00:00:00 (Sat)
9288,
0,
'LMT',
    ],
    [
58980000312, #    utc_start 1869-12-31 21:25:12 (Fri)
61073472280, #      utc_end 1936-05-04 21:24:40 (Mon)
58980009632, #  local_start 1870-01-01 00:00:32 (Sat)
61073481600, #    local_end 1936-05-05 00:00:00 (Tue)
9320,
0,
'ADMT',
    ],
    [
61073472280, #    utc_start 1936-05-04 21:24:40 (Mon)
DateTime::TimeZone::INFINITY, #      utc_end
61073483080, #  local_start 1936-05-05 00:24:40 (Tue)
DateTime::TimeZone::INFINITY, #    local_end
10800,
0,
'EAT',
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

