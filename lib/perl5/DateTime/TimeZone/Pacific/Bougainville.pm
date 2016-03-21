# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/WGhNyr05ZZ/australasia.  Olson data version 2016b
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Pacific::Bougainville;
$DateTime::TimeZone::Pacific::Bougainville::VERSION = '1.96';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Pacific::Bougainville::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
59295505064, #      utc_end 1879-12-31 13:37:44 (Wed)
DateTime::TimeZone::NEG_INFINITY, #  local_start
59295542400, #    local_end 1880-01-01 00:00:00 (Thu)
37336,
0,
'LMT',
    ],
    [
59295505064, #    utc_start 1879-12-31 13:37:44 (Wed)
59768892688, #      utc_end 1894-12-31 14:11:28 (Mon)
59295540376, #  local_start 1879-12-31 23:26:16 (Wed)
59768928000, #    local_end 1895-01-01 00:00:00 (Tue)
35312,
0,
'PMMT',
    ],
    [
59768892688, #    utc_start 1894-12-31 14:11:28 (Mon)
61267672800, #      utc_end 1942-06-30 14:00:00 (Tue)
59768928688, #  local_start 1895-01-01 00:11:28 (Tue)
61267708800, #    local_end 1942-07-01 00:00:00 (Wed)
36000,
0,
'PGT',
    ],
    [
61267672800, #    utc_start 1942-06-30 14:00:00 (Tue)
61366777200, #      utc_end 1945-08-20 15:00:00 (Mon)
61267705200, #  local_start 1942-06-30 23:00:00 (Tue)
61366809600, #    local_end 1945-08-21 00:00:00 (Tue)
32400,
0,
'JST',
    ],
    [
61366777200, #    utc_start 1945-08-20 15:00:00 (Mon)
63555379200, #      utc_end 2014-12-27 16:00:00 (Sat)
61366813200, #  local_start 1945-08-21 01:00:00 (Tue)
63555415200, #    local_end 2014-12-28 02:00:00 (Sun)
36000,
0,
'PGT',
    ],
    [
63555379200, #    utc_start 2014-12-27 16:00:00 (Sat)
DateTime::TimeZone::INFINITY, #      utc_end
63555418800, #  local_start 2014-12-28 03:00:00 (Sun)
DateTime::TimeZone::INFINITY, #    local_end
39600,
0,
'BST',
    ],
];

sub olson_version {'2016b'}

sub has_dst_changes {0}

sub _max_year {2026}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

