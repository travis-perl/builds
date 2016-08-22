# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/dGCdhCHqq1/australasia.  Olson data version 2016f
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Pacific::Wake;
$DateTime::TimeZone::Pacific::Wake::VERSION = '2.01';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Pacific::Wake::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
59958190412, #      utc_end 1900-12-31 12:53:32 (Mon)
DateTime::TimeZone::NEG_INFINITY, #  local_start
59958230400, #    local_end 1901-01-01 00:00:00 (Tue)
39988,
0,
'LMT',
    ],
    [
59958190412, #    utc_start 1900-12-31 12:53:32 (Mon)
DateTime::TimeZone::INFINITY, #      utc_end
59958233612, #  local_start 1901-01-01 00:53:32 (Tue)
DateTime::TimeZone::INFINITY, #    local_end
43200,
0,
'WAKT',
    ],
];

sub olson_version {'2016f'}

sub has_dst_changes {0}

sub _max_year {2026}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

