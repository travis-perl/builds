# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/PG8ljYXUN8/southamerica.  Olson data version 2019c
#
# Do not edit this file directly.
#
package DateTime::TimeZone::America::Curacao;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.38';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::America::Curacao::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60308944547, #      utc_end 1912-02-12 04:35:47 (Mon)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60308928000, #    local_end 1912-02-12 00:00:00 (Mon)
-16547,
0,
'LMT',
    ],
    [
60308944547, #    utc_start 1912-02-12 04:35:47 (Mon)
61977933000, #      utc_end 1965-01-01 04:30:00 (Fri)
60308928347, #  local_start 1912-02-12 00:05:47 (Mon)
61977916800, #    local_end 1965-01-01 00:00:00 (Fri)
-16200,
0,
'-0430',
    ],
    [
61977933000, #    utc_start 1965-01-01 04:30:00 (Fri)
DateTime::TimeZone::INFINITY, #      utc_end
61977918600, #  local_start 1965-01-01 00:30:00 (Fri)
DateTime::TimeZone::INFINITY, #    local_end
-14400,
0,
'AST',
    ],
];

sub olson_version {'2019c'}

sub has_dst_changes {0}

sub _max_year {2029}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

