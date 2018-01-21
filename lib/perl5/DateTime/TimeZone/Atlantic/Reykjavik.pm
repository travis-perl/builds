# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/w7hiPKNICQ/europe.  Olson data version 2018b
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Atlantic::Reykjavik;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.16';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Atlantic::Reykjavik::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60179074080, #      utc_end 1908-01-01 01:28:00 (Wed)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60179068800, #    local_end 1908-01-01 00:00:00 (Wed)
-5280,
0,
'LMT',
    ],
    [
60179074080, #    utc_start 1908-01-01 01:28:00 (Wed)
60467472000, #      utc_end 1917-02-20 00:00:00 (Tue)
60179070480, #  local_start 1908-01-01 00:28:00 (Wed)
60467468400, #    local_end 1917-02-19 23:00:00 (Mon)
-3600,
0,
'-01',
    ],
    [
60467472000, #    utc_start 1917-02-20 00:00:00 (Tue)
60488470800, #      utc_end 1917-10-21 01:00:00 (Sun)
60467472000, #  local_start 1917-02-20 00:00:00 (Tue)
60488470800, #    local_end 1917-10-21 01:00:00 (Sun)
0,
1,
'+00',
    ],
    [
60488470800, #    utc_start 1917-10-21 01:00:00 (Sun)
60499008000, #      utc_end 1918-02-20 00:00:00 (Wed)
60488467200, #  local_start 1917-10-21 00:00:00 (Sun)
60499004400, #    local_end 1918-02-19 23:00:00 (Tue)
-3600,
0,
'-01',
    ],
    [
60499008000, #    utc_start 1918-02-20 00:00:00 (Wed)
60522253200, #      utc_end 1918-11-16 01:00:00 (Sat)
60499008000, #  local_start 1918-02-20 00:00:00 (Wed)
60522253200, #    local_end 1918-11-16 01:00:00 (Sat)
0,
1,
'+00',
    ],
    [
60522253200, #    utc_start 1918-11-16 01:00:00 (Sat)
60530544000, #      utc_end 1919-02-20 00:00:00 (Thu)
60522249600, #  local_start 1918-11-16 00:00:00 (Sat)
60530540400, #    local_end 1919-02-19 23:00:00 (Wed)
-3600,
0,
'-01',
    ],
    [
60530544000, #    utc_start 1919-02-20 00:00:00 (Thu)
60553789200, #      utc_end 1919-11-16 01:00:00 (Sun)
60530544000, #  local_start 1919-02-20 00:00:00 (Thu)
60553789200, #    local_end 1919-11-16 01:00:00 (Sun)
0,
1,
'+00',
    ],
    [
60553789200, #    utc_start 1919-11-16 01:00:00 (Sun)
60596121600, #      utc_end 1921-03-20 00:00:00 (Sun)
60553785600, #  local_start 1919-11-16 00:00:00 (Sun)
60596118000, #    local_end 1921-03-19 23:00:00 (Sat)
-3600,
0,
'-01',
    ],
    [
60596121600, #    utc_start 1921-03-20 00:00:00 (Sun)
60604333200, #      utc_end 1921-06-23 01:00:00 (Thu)
60596121600, #  local_start 1921-03-20 00:00:00 (Sun)
60604333200, #    local_end 1921-06-23 01:00:00 (Thu)
0,
1,
'+00',
    ],
    [
60604333200, #    utc_start 1921-06-23 01:00:00 (Thu)
61167657600, #      utc_end 1939-04-30 00:00:00 (Sun)
60604329600, #  local_start 1921-06-23 00:00:00 (Thu)
61167654000, #    local_end 1939-04-29 23:00:00 (Sat)
-3600,
0,
'-01',
    ],
    [
61167657600, #    utc_start 1939-04-30 00:00:00 (Sun)
61183389600, #      utc_end 1939-10-29 02:00:00 (Sun)
61167657600, #  local_start 1939-04-30 00:00:00 (Sun)
61183389600, #    local_end 1939-10-29 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61183389600, #    utc_start 1939-10-29 02:00:00 (Sun)
61193674800, #      utc_end 1940-02-25 03:00:00 (Sun)
61183386000, #  local_start 1939-10-29 01:00:00 (Sun)
61193671200, #    local_end 1940-02-25 02:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61193674800, #    utc_start 1940-02-25 03:00:00 (Sun)
61215444000, #      utc_end 1940-11-03 02:00:00 (Sun)
61193674800, #  local_start 1940-02-25 03:00:00 (Sun)
61215444000, #    local_end 1940-11-03 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61215444000, #    utc_start 1940-11-03 02:00:00 (Sun)
61225725600, #      utc_end 1941-03-02 02:00:00 (Sun)
61215440400, #  local_start 1940-11-03 01:00:00 (Sun)
61225722000, #    local_end 1941-03-02 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61225725600, #    utc_start 1941-03-02 02:00:00 (Sun)
61246893600, #      utc_end 1941-11-02 02:00:00 (Sun)
61225725600, #  local_start 1941-03-02 02:00:00 (Sun)
61246893600, #    local_end 1941-11-02 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61246893600, #    utc_start 1941-11-02 02:00:00 (Sun)
61257780000, #      utc_end 1942-03-08 02:00:00 (Sun)
61246890000, #  local_start 1941-11-02 01:00:00 (Sun)
61257776400, #    local_end 1942-03-08 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61257780000, #    utc_start 1942-03-08 02:00:00 (Sun)
61277738400, #      utc_end 1942-10-25 02:00:00 (Sun)
61257780000, #  local_start 1942-03-08 02:00:00 (Sun)
61277738400, #    local_end 1942-10-25 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61277738400, #    utc_start 1942-10-25 02:00:00 (Sun)
61289229600, #      utc_end 1943-03-07 02:00:00 (Sun)
61277734800, #  local_start 1942-10-25 01:00:00 (Sun)
61289226000, #    local_end 1943-03-07 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61289229600, #    utc_start 1943-03-07 02:00:00 (Sun)
61309188000, #      utc_end 1943-10-24 02:00:00 (Sun)
61289229600, #  local_start 1943-03-07 02:00:00 (Sun)
61309188000, #    local_end 1943-10-24 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61309188000, #    utc_start 1943-10-24 02:00:00 (Sun)
61320679200, #      utc_end 1944-03-05 02:00:00 (Sun)
61309184400, #  local_start 1943-10-24 01:00:00 (Sun)
61320675600, #    local_end 1944-03-05 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61320679200, #    utc_start 1944-03-05 02:00:00 (Sun)
61340637600, #      utc_end 1944-10-22 02:00:00 (Sun)
61320679200, #  local_start 1944-03-05 02:00:00 (Sun)
61340637600, #    local_end 1944-10-22 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61340637600, #    utc_start 1944-10-22 02:00:00 (Sun)
61352128800, #      utc_end 1945-03-04 02:00:00 (Sun)
61340634000, #  local_start 1944-10-22 01:00:00 (Sun)
61352125200, #    local_end 1945-03-04 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61352128800, #    utc_start 1945-03-04 02:00:00 (Sun)
61372692000, #      utc_end 1945-10-28 02:00:00 (Sun)
61352128800, #  local_start 1945-03-04 02:00:00 (Sun)
61372692000, #    local_end 1945-10-28 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61372692000, #    utc_start 1945-10-28 02:00:00 (Sun)
61383578400, #      utc_end 1946-03-03 02:00:00 (Sun)
61372688400, #  local_start 1945-10-28 01:00:00 (Sun)
61383574800, #    local_end 1946-03-03 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61383578400, #    utc_start 1946-03-03 02:00:00 (Sun)
61404141600, #      utc_end 1946-10-27 02:00:00 (Sun)
61383578400, #  local_start 1946-03-03 02:00:00 (Sun)
61404141600, #    local_end 1946-10-27 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61404141600, #    utc_start 1946-10-27 02:00:00 (Sun)
61418052000, #      utc_end 1947-04-06 02:00:00 (Sun)
61404138000, #  local_start 1946-10-27 01:00:00 (Sun)
61418048400, #    local_end 1947-04-06 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61418052000, #    utc_start 1947-04-06 02:00:00 (Sun)
61435591200, #      utc_end 1947-10-26 02:00:00 (Sun)
61418052000, #  local_start 1947-04-06 02:00:00 (Sun)
61435591200, #    local_end 1947-10-26 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61435591200, #    utc_start 1947-10-26 02:00:00 (Sun)
61449501600, #      utc_end 1948-04-04 02:00:00 (Sun)
61435587600, #  local_start 1947-10-26 01:00:00 (Sun)
61449498000, #    local_end 1948-04-04 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61449501600, #    utc_start 1948-04-04 02:00:00 (Sun)
61467040800, #      utc_end 1948-10-24 02:00:00 (Sun)
61449501600, #  local_start 1948-04-04 02:00:00 (Sun)
61467040800, #    local_end 1948-10-24 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61467040800, #    utc_start 1948-10-24 02:00:00 (Sun)
61480951200, #      utc_end 1949-04-03 02:00:00 (Sun)
61467037200, #  local_start 1948-10-24 01:00:00 (Sun)
61480947600, #    local_end 1949-04-03 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61480951200, #    utc_start 1949-04-03 02:00:00 (Sun)
61499095200, #      utc_end 1949-10-30 02:00:00 (Sun)
61480951200, #  local_start 1949-04-03 02:00:00 (Sun)
61499095200, #    local_end 1949-10-30 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61499095200, #    utc_start 1949-10-30 02:00:00 (Sun)
61512400800, #      utc_end 1950-04-02 02:00:00 (Sun)
61499091600, #  local_start 1949-10-30 01:00:00 (Sun)
61512397200, #    local_end 1950-04-02 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61512400800, #    utc_start 1950-04-02 02:00:00 (Sun)
61529940000, #      utc_end 1950-10-22 02:00:00 (Sun)
61512400800, #  local_start 1950-04-02 02:00:00 (Sun)
61529940000, #    local_end 1950-10-22 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61529940000, #    utc_start 1950-10-22 02:00:00 (Sun)
61543850400, #      utc_end 1951-04-01 02:00:00 (Sun)
61529936400, #  local_start 1950-10-22 01:00:00 (Sun)
61543846800, #    local_end 1951-04-01 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61543850400, #    utc_start 1951-04-01 02:00:00 (Sun)
61561994400, #      utc_end 1951-10-28 02:00:00 (Sun)
61543850400, #  local_start 1951-04-01 02:00:00 (Sun)
61561994400, #    local_end 1951-10-28 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61561994400, #    utc_start 1951-10-28 02:00:00 (Sun)
61575904800, #      utc_end 1952-04-06 02:00:00 (Sun)
61561990800, #  local_start 1951-10-28 01:00:00 (Sun)
61575901200, #    local_end 1952-04-06 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61575904800, #    utc_start 1952-04-06 02:00:00 (Sun)
61593444000, #      utc_end 1952-10-26 02:00:00 (Sun)
61575904800, #  local_start 1952-04-06 02:00:00 (Sun)
61593444000, #    local_end 1952-10-26 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61593444000, #    utc_start 1952-10-26 02:00:00 (Sun)
61607354400, #      utc_end 1953-04-05 02:00:00 (Sun)
61593440400, #  local_start 1952-10-26 01:00:00 (Sun)
61607350800, #    local_end 1953-04-05 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61607354400, #    utc_start 1953-04-05 02:00:00 (Sun)
61624893600, #      utc_end 1953-10-25 02:00:00 (Sun)
61607354400, #  local_start 1953-04-05 02:00:00 (Sun)
61624893600, #    local_end 1953-10-25 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61624893600, #    utc_start 1953-10-25 02:00:00 (Sun)
61638804000, #      utc_end 1954-04-04 02:00:00 (Sun)
61624890000, #  local_start 1953-10-25 01:00:00 (Sun)
61638800400, #    local_end 1954-04-04 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61638804000, #    utc_start 1954-04-04 02:00:00 (Sun)
61656343200, #      utc_end 1954-10-24 02:00:00 (Sun)
61638804000, #  local_start 1954-04-04 02:00:00 (Sun)
61656343200, #    local_end 1954-10-24 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61656343200, #    utc_start 1954-10-24 02:00:00 (Sun)
61670253600, #      utc_end 1955-04-03 02:00:00 (Sun)
61656339600, #  local_start 1954-10-24 01:00:00 (Sun)
61670250000, #    local_end 1955-04-03 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61670253600, #    utc_start 1955-04-03 02:00:00 (Sun)
61687792800, #      utc_end 1955-10-23 02:00:00 (Sun)
61670253600, #  local_start 1955-04-03 02:00:00 (Sun)
61687792800, #    local_end 1955-10-23 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61687792800, #    utc_start 1955-10-23 02:00:00 (Sun)
61701703200, #      utc_end 1956-04-01 02:00:00 (Sun)
61687789200, #  local_start 1955-10-23 01:00:00 (Sun)
61701699600, #    local_end 1956-04-01 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61701703200, #    utc_start 1956-04-01 02:00:00 (Sun)
61719847200, #      utc_end 1956-10-28 02:00:00 (Sun)
61701703200, #  local_start 1956-04-01 02:00:00 (Sun)
61719847200, #    local_end 1956-10-28 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61719847200, #    utc_start 1956-10-28 02:00:00 (Sun)
61733757600, #      utc_end 1957-04-07 02:00:00 (Sun)
61719843600, #  local_start 1956-10-28 01:00:00 (Sun)
61733754000, #    local_end 1957-04-07 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61733757600, #    utc_start 1957-04-07 02:00:00 (Sun)
61751296800, #      utc_end 1957-10-27 02:00:00 (Sun)
61733757600, #  local_start 1957-04-07 02:00:00 (Sun)
61751296800, #    local_end 1957-10-27 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61751296800, #    utc_start 1957-10-27 02:00:00 (Sun)
61765207200, #      utc_end 1958-04-06 02:00:00 (Sun)
61751293200, #  local_start 1957-10-27 01:00:00 (Sun)
61765203600, #    local_end 1958-04-06 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61765207200, #    utc_start 1958-04-06 02:00:00 (Sun)
61782746400, #      utc_end 1958-10-26 02:00:00 (Sun)
61765207200, #  local_start 1958-04-06 02:00:00 (Sun)
61782746400, #    local_end 1958-10-26 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61782746400, #    utc_start 1958-10-26 02:00:00 (Sun)
61796656800, #      utc_end 1959-04-05 02:00:00 (Sun)
61782742800, #  local_start 1958-10-26 01:00:00 (Sun)
61796653200, #    local_end 1959-04-05 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61796656800, #    utc_start 1959-04-05 02:00:00 (Sun)
61814196000, #      utc_end 1959-10-25 02:00:00 (Sun)
61796656800, #  local_start 1959-04-05 02:00:00 (Sun)
61814196000, #    local_end 1959-10-25 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61814196000, #    utc_start 1959-10-25 02:00:00 (Sun)
61828106400, #      utc_end 1960-04-03 02:00:00 (Sun)
61814192400, #  local_start 1959-10-25 01:00:00 (Sun)
61828102800, #    local_end 1960-04-03 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61828106400, #    utc_start 1960-04-03 02:00:00 (Sun)
61845645600, #      utc_end 1960-10-23 02:00:00 (Sun)
61828106400, #  local_start 1960-04-03 02:00:00 (Sun)
61845645600, #    local_end 1960-10-23 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61845645600, #    utc_start 1960-10-23 02:00:00 (Sun)
61859556000, #      utc_end 1961-04-02 02:00:00 (Sun)
61845642000, #  local_start 1960-10-23 01:00:00 (Sun)
61859552400, #    local_end 1961-04-02 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61859556000, #    utc_start 1961-04-02 02:00:00 (Sun)
61877095200, #      utc_end 1961-10-22 02:00:00 (Sun)
61859556000, #  local_start 1961-04-02 02:00:00 (Sun)
61877095200, #    local_end 1961-10-22 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61877095200, #    utc_start 1961-10-22 02:00:00 (Sun)
61891005600, #      utc_end 1962-04-01 02:00:00 (Sun)
61877091600, #  local_start 1961-10-22 01:00:00 (Sun)
61891002000, #    local_end 1962-04-01 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61891005600, #    utc_start 1962-04-01 02:00:00 (Sun)
61909149600, #      utc_end 1962-10-28 02:00:00 (Sun)
61891005600, #  local_start 1962-04-01 02:00:00 (Sun)
61909149600, #    local_end 1962-10-28 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61909149600, #    utc_start 1962-10-28 02:00:00 (Sun)
61923060000, #      utc_end 1963-04-07 02:00:00 (Sun)
61909146000, #  local_start 1962-10-28 01:00:00 (Sun)
61923056400, #    local_end 1963-04-07 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61923060000, #    utc_start 1963-04-07 02:00:00 (Sun)
61940599200, #      utc_end 1963-10-27 02:00:00 (Sun)
61923060000, #  local_start 1963-04-07 02:00:00 (Sun)
61940599200, #    local_end 1963-10-27 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61940599200, #    utc_start 1963-10-27 02:00:00 (Sun)
61954509600, #      utc_end 1964-04-05 02:00:00 (Sun)
61940595600, #  local_start 1963-10-27 01:00:00 (Sun)
61954506000, #    local_end 1964-04-05 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61954509600, #    utc_start 1964-04-05 02:00:00 (Sun)
61972048800, #      utc_end 1964-10-25 02:00:00 (Sun)
61954509600, #  local_start 1964-04-05 02:00:00 (Sun)
61972048800, #    local_end 1964-10-25 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
61972048800, #    utc_start 1964-10-25 02:00:00 (Sun)
61985959200, #      utc_end 1965-04-04 02:00:00 (Sun)
61972045200, #  local_start 1964-10-25 01:00:00 (Sun)
61985955600, #    local_end 1965-04-04 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
61985959200, #    utc_start 1965-04-04 02:00:00 (Sun)
62003498400, #      utc_end 1965-10-24 02:00:00 (Sun)
61985959200, #  local_start 1965-04-04 02:00:00 (Sun)
62003498400, #    local_end 1965-10-24 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
62003498400, #    utc_start 1965-10-24 02:00:00 (Sun)
62017408800, #      utc_end 1966-04-03 02:00:00 (Sun)
62003494800, #  local_start 1965-10-24 01:00:00 (Sun)
62017405200, #    local_end 1966-04-03 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
62017408800, #    utc_start 1966-04-03 02:00:00 (Sun)
62034948000, #      utc_end 1966-10-23 02:00:00 (Sun)
62017408800, #  local_start 1966-04-03 02:00:00 (Sun)
62034948000, #    local_end 1966-10-23 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
62034948000, #    utc_start 1966-10-23 02:00:00 (Sun)
62048858400, #      utc_end 1967-04-02 02:00:00 (Sun)
62034944400, #  local_start 1966-10-23 01:00:00 (Sun)
62048854800, #    local_end 1967-04-02 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
62048858400, #    utc_start 1967-04-02 02:00:00 (Sun)
62067002400, #      utc_end 1967-10-29 02:00:00 (Sun)
62048858400, #  local_start 1967-04-02 02:00:00 (Sun)
62067002400, #    local_end 1967-10-29 02:00:00 (Sun)
0,
1,
'+00',
    ],
    [
62067002400, #    utc_start 1967-10-29 02:00:00 (Sun)
62080912800, #      utc_end 1968-04-07 02:00:00 (Sun)
62066998800, #  local_start 1967-10-29 01:00:00 (Sun)
62080909200, #    local_end 1968-04-07 01:00:00 (Sun)
-3600,
0,
'-01',
    ],
    [
62080912800, #    utc_start 1968-04-07 02:00:00 (Sun)
DateTime::TimeZone::INFINITY, #      utc_end
62080912800, #  local_start 1968-04-07 02:00:00 (Sun)
DateTime::TimeZone::INFINITY, #    local_end
0,
0,
'GMT',
    ],
];

sub olson_version {'2018b'}

sub has_dst_changes {33}

sub _max_year {2028}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

