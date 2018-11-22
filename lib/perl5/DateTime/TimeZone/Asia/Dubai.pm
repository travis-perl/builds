# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/NtPbGUL9sg/asia.  Olson data version 2018g
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Asia::Dubai;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.21';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Asia::Dubai::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60557746728, #      utc_end 1919-12-31 20:18:48 (Wed)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60557760000, #    local_end 1920-01-01 00:00:00 (Thu)
13272,
0,
'LMT',
    ],
    [
60557746728, #    utc_start 1919-12-31 20:18:48 (Wed)
DateTime::TimeZone::INFINITY, #      utc_end
60557761128, #  local_start 1920-01-01 00:18:48 (Thu)
DateTime::TimeZone::INFINITY, #    local_end
14400,
0,
'+04',
    ],
];

sub olson_version {'2018g'}

sub has_dst_changes {0}

sub _max_year {2028}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

