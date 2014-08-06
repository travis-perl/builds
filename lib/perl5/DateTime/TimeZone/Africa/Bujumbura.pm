# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/DKx24lslsN/africa.  Olson data version 2014e
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Africa::Bujumbura;
$DateTime::TimeZone::Africa::Bujumbura::VERSION = '1.72';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Africa::Bujumbura::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
59611154552, #      utc_end 1889-12-31 22:02:32 (Tue)
DateTime::TimeZone::NEG_INFINITY, #  local_start
59611161600, #    local_end 1890-01-01 00:00:00 (Wed)
7048,
0,
'LMT',
    ],
    [
59611154552, #    utc_start 1889-12-31 22:02:32 (Tue)
DateTime::TimeZone::INFINITY, #      utc_end
59611161752, #  local_start 1890-01-01 00:02:32 (Wed)
DateTime::TimeZone::INFINITY, #    local_end
7200,
0,
'CAT',
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

