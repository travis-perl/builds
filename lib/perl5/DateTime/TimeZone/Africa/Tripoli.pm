# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from ../DateTime/data/Olson/2014e/africa.  Olson data version 2014e
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Africa::Tripoli;
$DateTime::TimeZone::Africa::Tripoli::VERSION = '1.71';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Africa::Tripoli::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60557756836, #      utc_end 1919-12-31 23:07:16 (Wed)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60557760000, #    local_end 1920-01-01 00:00:00 (Thu)
3164,
0,
'LMT',
    ],
    [
60557756836, #    utc_start 1919-12-31 23:07:16 (Wed)
61560781200, #      utc_end 1951-10-14 01:00:00 (Sun)
60557760436, #  local_start 1920-01-01 00:07:16 (Thu)
61560784800, #    local_end 1951-10-14 02:00:00 (Sun)
3600,
0,
'CET',
    ],
    [
61560781200, #    utc_start 1951-10-14 01:00:00 (Sun)
61567596000, #      utc_end 1951-12-31 22:00:00 (Mon)
61560788400, #  local_start 1951-10-14 03:00:00 (Sun)
61567603200, #    local_end 1952-01-01 00:00:00 (Tue)
7200,
1,
'CEST',
    ],
    [
61567596000, #    utc_start 1951-12-31 22:00:00 (Mon)
61623507600, #      utc_end 1953-10-09 01:00:00 (Fri)
61567599600, #  local_start 1951-12-31 23:00:00 (Mon)
61623511200, #    local_end 1953-10-09 02:00:00 (Fri)
3600,
0,
'CET',
    ],
    [
61623507600, #    utc_start 1953-10-09 01:00:00 (Fri)
61630754400, #      utc_end 1953-12-31 22:00:00 (Thu)
61623514800, #  local_start 1953-10-09 03:00:00 (Fri)
61630761600, #    local_end 1954-01-01 00:00:00 (Fri)
7200,
1,
'CEST',
    ],
    [
61630754400, #    utc_start 1953-12-31 22:00:00 (Thu)
61685794800, #      utc_end 1955-09-29 23:00:00 (Thu)
61630758000, #  local_start 1953-12-31 23:00:00 (Thu)
61685798400, #    local_end 1955-09-30 00:00:00 (Fri)
3600,
0,
'CET',
    ],
    [
61685794800, #    utc_start 1955-09-29 23:00:00 (Thu)
61693826400, #      utc_end 1955-12-31 22:00:00 (Sat)
61685802000, #  local_start 1955-09-30 01:00:00 (Fri)
61693833600, #    local_end 1956-01-01 00:00:00 (Sun)
7200,
1,
'CEST',
    ],
    [
61693826400, #    utc_start 1955-12-31 22:00:00 (Sat)
61788524400, #      utc_end 1958-12-31 23:00:00 (Wed)
61693830000, #  local_start 1955-12-31 23:00:00 (Sat)
61788528000, #    local_end 1959-01-01 00:00:00 (Thu)
3600,
0,
'CET',
    ],
    [
61788524400, #    utc_start 1958-12-31 23:00:00 (Wed)
62514367200, #      utc_end 1981-12-31 22:00:00 (Thu)
61788531600, #  local_start 1959-01-01 01:00:00 (Thu)
62514374400, #    local_end 1982-01-01 00:00:00 (Fri)
7200,
0,
'EET',
    ],
    [
62514367200, #    utc_start 1981-12-31 22:00:00 (Thu)
62522146800, #      utc_end 1982-03-31 23:00:00 (Wed)
62514370800, #  local_start 1981-12-31 23:00:00 (Thu)
62522150400, #    local_end 1982-04-01 00:00:00 (Thu)
3600,
0,
'CET',
    ],
    [
62522146800, #    utc_start 1982-03-31 23:00:00 (Wed)
62537954400, #      utc_end 1982-09-30 22:00:00 (Thu)
62522154000, #  local_start 1982-04-01 01:00:00 (Thu)
62537961600, #    local_end 1982-10-01 00:00:00 (Fri)
7200,
1,
'CEST',
    ],
    [
62537954400, #    utc_start 1982-09-30 22:00:00 (Thu)
62553682800, #      utc_end 1983-03-31 23:00:00 (Thu)
62537958000, #  local_start 1982-09-30 23:00:00 (Thu)
62553686400, #    local_end 1983-04-01 00:00:00 (Fri)
3600,
0,
'CET',
    ],
    [
62553682800, #    utc_start 1983-03-31 23:00:00 (Thu)
62569490400, #      utc_end 1983-09-30 22:00:00 (Fri)
62553690000, #  local_start 1983-04-01 01:00:00 (Fri)
62569497600, #    local_end 1983-10-01 00:00:00 (Sat)
7200,
1,
'CEST',
    ],
    [
62569490400, #    utc_start 1983-09-30 22:00:00 (Fri)
62585305200, #      utc_end 1984-03-31 23:00:00 (Sat)
62569494000, #  local_start 1983-09-30 23:00:00 (Fri)
62585308800, #    local_end 1984-04-01 00:00:00 (Sun)
3600,
0,
'CET',
    ],
    [
62585305200, #    utc_start 1984-03-31 23:00:00 (Sat)
62601112800, #      utc_end 1984-09-30 22:00:00 (Sun)
62585312400, #  local_start 1984-04-01 01:00:00 (Sun)
62601120000, #    local_end 1984-10-01 00:00:00 (Mon)
7200,
1,
'CEST',
    ],
    [
62601112800, #    utc_start 1984-09-30 22:00:00 (Sun)
62617273200, #      utc_end 1985-04-05 23:00:00 (Fri)
62601116400, #  local_start 1984-09-30 23:00:00 (Sun)
62617276800, #    local_end 1985-04-06 00:00:00 (Sat)
3600,
0,
'CET',
    ],
    [
62617273200, #    utc_start 1985-04-05 23:00:00 (Fri)
62632648800, #      utc_end 1985-09-30 22:00:00 (Mon)
62617280400, #  local_start 1985-04-06 01:00:00 (Sat)
62632656000, #    local_end 1985-10-01 00:00:00 (Tue)
7200,
1,
'CEST',
    ],
    [
62632648800, #    utc_start 1985-09-30 22:00:00 (Mon)
62648636400, #      utc_end 1986-04-03 23:00:00 (Thu)
62632652400, #  local_start 1985-09-30 23:00:00 (Mon)
62648640000, #    local_end 1986-04-04 00:00:00 (Fri)
3600,
0,
'CET',
    ],
    [
62648636400, #    utc_start 1986-04-03 23:00:00 (Thu)
62664357600, #      utc_end 1986-10-02 22:00:00 (Thu)
62648643600, #  local_start 1986-04-04 01:00:00 (Fri)
62664364800, #    local_end 1986-10-03 00:00:00 (Fri)
7200,
1,
'CEST',
    ],
    [
62664357600, #    utc_start 1986-10-02 22:00:00 (Thu)
62679913200, #      utc_end 1987-03-31 23:00:00 (Tue)
62664361200, #  local_start 1986-10-02 23:00:00 (Thu)
62679916800, #    local_end 1987-04-01 00:00:00 (Wed)
3600,
0,
'CET',
    ],
    [
62679913200, #    utc_start 1987-03-31 23:00:00 (Tue)
62695720800, #      utc_end 1987-09-30 22:00:00 (Wed)
62679920400, #  local_start 1987-04-01 01:00:00 (Wed)
62695728000, #    local_end 1987-10-01 00:00:00 (Thu)
7200,
1,
'CEST',
    ],
    [
62695720800, #    utc_start 1987-09-30 22:00:00 (Wed)
62711535600, #      utc_end 1988-03-31 23:00:00 (Thu)
62695724400, #  local_start 1987-09-30 23:00:00 (Wed)
62711539200, #    local_end 1988-04-01 00:00:00 (Fri)
3600,
0,
'CET',
    ],
    [
62711535600, #    utc_start 1988-03-31 23:00:00 (Thu)
62727343200, #      utc_end 1988-09-30 22:00:00 (Fri)
62711542800, #  local_start 1988-04-01 01:00:00 (Fri)
62727350400, #    local_end 1988-10-01 00:00:00 (Sat)
7200,
1,
'CEST',
    ],
    [
62727343200, #    utc_start 1988-09-30 22:00:00 (Fri)
62743071600, #      utc_end 1989-03-31 23:00:00 (Fri)
62727346800, #  local_start 1988-09-30 23:00:00 (Fri)
62743075200, #    local_end 1989-04-01 00:00:00 (Sat)
3600,
0,
'CET',
    ],
    [
62743071600, #    utc_start 1989-03-31 23:00:00 (Fri)
62758879200, #      utc_end 1989-09-30 22:00:00 (Sat)
62743078800, #  local_start 1989-04-01 01:00:00 (Sat)
62758886400, #    local_end 1989-10-01 00:00:00 (Sun)
7200,
1,
'CEST',
    ],
    [
62758879200, #    utc_start 1989-09-30 22:00:00 (Sat)
62777458800, #      utc_end 1990-05-03 23:00:00 (Thu)
62758882800, #  local_start 1989-09-30 23:00:00 (Sat)
62777462400, #    local_end 1990-05-04 00:00:00 (Fri)
3600,
0,
'CET',
    ],
    [
62777458800, #    utc_start 1990-05-03 23:00:00 (Thu)
62979717600, #      utc_end 1996-09-29 22:00:00 (Sun)
62777466000, #  local_start 1990-05-04 01:00:00 (Fri)
62979724800, #    local_end 1996-09-30 00:00:00 (Mon)
7200,
0,
'EET',
    ],
    [
62979717600, #    utc_start 1996-09-29 22:00:00 (Sun)
62995791600, #      utc_end 1997-04-03 23:00:00 (Thu)
62979721200, #  local_start 1996-09-29 23:00:00 (Sun)
62995795200, #    local_end 1997-04-04 00:00:00 (Fri)
3600,
0,
'CET',
    ],
    [
62995791600, #    utc_start 1997-04-03 23:00:00 (Thu)
63011599200, #      utc_end 1997-10-03 22:00:00 (Fri)
62995798800, #  local_start 1997-04-04 01:00:00 (Fri)
63011606400, #    local_end 1997-10-04 00:00:00 (Sat)
7200,
1,
'CEST',
    ],
    [
63011599200, #    utc_start 1997-10-03 22:00:00 (Fri)
63488188800, #      utc_end 2012-11-10 00:00:00 (Sat)
63011606400, #  local_start 1997-10-04 00:00:00 (Sat)
63488196000, #    local_end 2012-11-10 02:00:00 (Sat)
7200,
0,
'EET',
    ],
    [
63488188800, #    utc_start 2012-11-10 00:00:00 (Sat)
63500198400, #      utc_end 2013-03-29 00:00:00 (Fri)
63488192400, #  local_start 2012-11-10 01:00:00 (Sat)
63500202000, #    local_end 2013-03-29 01:00:00 (Fri)
3600,
0,
'CET',
    ],
    [
63500198400, #    utc_start 2013-03-29 00:00:00 (Fri)
63518342400, #      utc_end 2013-10-25 00:00:00 (Fri)
63500205600, #  local_start 2013-03-29 02:00:00 (Fri)
63518349600, #    local_end 2013-10-25 02:00:00 (Fri)
7200,
1,
'CEST',
    ],
    [
63518342400, #    utc_start 2013-10-25 00:00:00 (Fri)
DateTime::TimeZone::INFINITY, #      utc_end
63518349600, #  local_start 2013-10-25 02:00:00 (Fri)
DateTime::TimeZone::INFINITY, #    local_end
7200,
0,
'EET',
    ],
];

sub olson_version { '2014e' }

sub has_dst_changes { 13 }

sub _max_year { 2024 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}



1;

