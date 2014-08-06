# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/DKx24lslsN/africa.  Olson data version 2014e
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Africa::Luanda;
$DateTime::TimeZone::Africa::Luanda::VERSION = '1.72';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Africa::Luanda::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
59674230424, #      utc_end 1891-12-31 23:07:04 (Thu)
DateTime::TimeZone::NEG_INFINITY, #  local_start
59674233600, #    local_end 1892-01-01 00:00:00 (Fri)
3176,
0,
'LMT',
    ],
    [
59674230424, #    utc_start 1891-12-31 23:07:04 (Thu)
60286288076, #      utc_end 1911-05-25 23:07:56 (Thu)
59674233548, #  local_start 1891-12-31 23:59:08 (Thu)
60286291200, #    local_end 1911-05-26 00:00:00 (Fri)
3124,
0,
'AOT',
    ],
    [
60286288076, #    utc_start 1911-05-25 23:07:56 (Thu)
DateTime::TimeZone::INFINITY, #      utc_end
60286291676, #  local_start 1911-05-26 00:07:56 (Fri)
DateTime::TimeZone::INFINITY, #    local_end
3600,
0,
'WAT',
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

