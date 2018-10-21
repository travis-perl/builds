# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/f8NtrOTQO6/australasia.  Olson data version 2018f
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Pacific::Nauru;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.20';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Pacific::Nauru::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60590551940, #      utc_end 1921-01-14 12:52:20 (Fri)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60590592000, #    local_end 1921-01-15 00:00:00 (Sat)
40060,
0,
'LMT',
    ],
    [
60590551940, #    utc_start 1921-01-14 12:52:20 (Fri)
61258336200, #      utc_end 1942-03-14 12:30:00 (Sat)
60590593340, #  local_start 1921-01-15 00:22:20 (Sat)
61258377600, #    local_end 1942-03-15 00:00:00 (Sun)
41400,
0,
'+1130',
    ],
    [
61258336200, #    utc_start 1942-03-14 12:30:00 (Sat)
61334722800, #      utc_end 1944-08-14 15:00:00 (Mon)
61258368600, #  local_start 1942-03-14 21:30:00 (Sat)
61334755200, #    local_end 1944-08-15 00:00:00 (Tue)
32400,
0,
'+09',
    ],
    [
61334722800, #    utc_start 1944-08-14 15:00:00 (Mon)
62430006600, #      utc_end 1979-04-30 12:30:00 (Mon)
61334764200, #  local_start 1944-08-15 02:30:00 (Tue)
62430048000, #    local_end 1979-05-01 00:00:00 (Tue)
41400,
0,
'+1130',
    ],
    [
62430006600, #    utc_start 1979-04-30 12:30:00 (Mon)
DateTime::TimeZone::INFINITY, #      utc_end
62430049800, #  local_start 1979-05-01 00:30:00 (Tue)
DateTime::TimeZone::INFINITY, #    local_end
43200,
0,
'+12',
    ],
];

sub olson_version {'2018f'}

sub has_dst_changes {0}

sub _max_year {2028}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

