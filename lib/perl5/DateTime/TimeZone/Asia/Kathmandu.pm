# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/dGCdhCHqq1/asia.  Olson data version 2016f
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Asia::Kathmandu;
$DateTime::TimeZone::Asia::Kathmandu::VERSION = '2.01';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Asia::Kathmandu::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60557739524, #      utc_end 1919-12-31 18:18:44 (Wed)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60557760000, #    local_end 1920-01-01 00:00:00 (Thu)
20476,
0,
'LMT',
    ],
    [
60557739524, #    utc_start 1919-12-31 18:18:44 (Wed)
62640585000, #      utc_end 1985-12-31 18:30:00 (Tue)
60557759324, #  local_start 1919-12-31 23:48:44 (Wed)
62640604800, #    local_end 1986-01-01 00:00:00 (Wed)
19800,
0,
'IST',
    ],
    [
62640585000, #    utc_start 1985-12-31 18:30:00 (Tue)
DateTime::TimeZone::INFINITY, #      utc_end
62640605700, #  local_start 1986-01-01 00:15:00 (Wed)
DateTime::TimeZone::INFINITY, #    local_end
20700,
0,
'NPT',
    ],
];

sub olson_version {'2016f'}

sub has_dst_changes {0}

sub _max_year {2026}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

