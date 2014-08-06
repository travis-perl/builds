# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/DKx24lslsN/antarctica.  Olson data version 2014e
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Antarctica::Casey;
$DateTime::TimeZone::Antarctica::Casey::VERSION = '1.72';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Antarctica::Casey::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
62104147200, #      utc_end 1969-01-01 00:00:00 (Wed)
DateTime::TimeZone::NEG_INFINITY, #  local_start
62104147200, #    local_end 1969-01-01 00:00:00 (Wed)
0,
0,
'zzz',
    ],
    [
62104147200, #    utc_start 1969-01-01 00:00:00 (Wed)
63391485600, #      utc_end 2009-10-17 18:00:00 (Sat)
62104176000, #  local_start 1969-01-01 08:00:00 (Wed)
63391514400, #    local_end 2009-10-18 02:00:00 (Sun)
28800,
0,
'WST',
    ],
    [
63391485600, #    utc_start 2009-10-17 18:00:00 (Sat)
63403398000, #      utc_end 2010-03-04 15:00:00 (Thu)
63391525200, #  local_start 2009-10-18 05:00:00 (Sun)
63403437600, #    local_end 2010-03-05 02:00:00 (Fri)
39600,
0,
'CAST',
    ],
    [
63403398000, #    utc_start 2010-03-04 15:00:00 (Thu)
63455421600, #      utc_end 2011-10-27 18:00:00 (Thu)
63403426800, #  local_start 2010-03-04 23:00:00 (Thu)
63455450400, #    local_end 2011-10-28 02:00:00 (Fri)
28800,
0,
'WST',
    ],
    [
63455421600, #    utc_start 2011-10-27 18:00:00 (Thu)
63465526800, #      utc_end 2012-02-21 17:00:00 (Tue)
63455461200, #  local_start 2011-10-28 05:00:00 (Fri)
63465566400, #    local_end 2012-02-22 04:00:00 (Wed)
39600,
0,
'CAST',
    ],
    [
63465526800, #    utc_start 2012-02-21 17:00:00 (Tue)
DateTime::TimeZone::INFINITY, #      utc_end
63465555600, #  local_start 2012-02-22 01:00:00 (Wed)
DateTime::TimeZone::INFINITY, #    local_end
28800,
0,
'WST',
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

