# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/M7TZl06VNc/asia.  Olson data version 2021a
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Asia::Macau;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.47';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Asia::Macau::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60078990350, #      utc_end 1904-10-29 16:25:50 (Sat)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60079017600, #    local_end 1904-10-30 00:00:00 (Sun)
27250,
0,
'LMT',
    ],
    [
60078990350, #    utc_start 1904-10-29 16:25:50 (Sat)
61251174000, #      utc_end 1941-12-21 15:00:00 (Sun)
60079019150, #  local_start 1904-10-30 00:25:50 (Sun)
61251202800, #    local_end 1941-12-21 23:00:00 (Sun)
28800,
0,
'CST',
    ],
    [
61251174000, #    utc_start 1941-12-21 15:00:00 (Sun)
61262402400, #      utc_end 1942-04-30 14:00:00 (Thu)
61251206400, #  local_start 1941-12-22 00:00:00 (Mon)
61262434800, #    local_end 1942-04-30 23:00:00 (Thu)
32400,
0,
'+09',
    ],
    [
61262402400, #    utc_start 1942-04-30 14:00:00 (Thu)
61279765200, #      utc_end 1942-11-17 13:00:00 (Tue)
61262438400, #  local_start 1942-05-01 00:00:00 (Fri)
61279801200, #    local_end 1942-11-17 23:00:00 (Tue)
36000,
1,
'+10',
    ],
    [
61279765200, #    utc_start 1942-11-17 13:00:00 (Tue)
61293938400, #      utc_end 1943-04-30 14:00:00 (Fri)
61279797600, #  local_start 1942-11-17 22:00:00 (Tue)
61293970800, #    local_end 1943-04-30 23:00:00 (Fri)
32400,
0,
'+09',
    ],
    [
61293938400, #    utc_start 1943-04-30 14:00:00 (Fri)
61307154000, #      utc_end 1943-09-30 13:00:00 (Thu)
61293974400, #  local_start 1943-05-01 00:00:00 (Sat)
61307190000, #    local_end 1943-09-30 23:00:00 (Thu)
36000,
1,
'+10',
    ],
    [
61307154000, #    utc_start 1943-09-30 13:00:00 (Thu)
61370319600, #      utc_end 1945-09-30 15:00:00 (Sun)
61307186400, #  local_start 1943-09-30 22:00:00 (Thu)
61370352000, #    local_end 1945-10-01 00:00:00 (Mon)
32400,
0,
'+09',
    ],
    [
61370319600, #    utc_start 1945-09-30 15:00:00 (Sun)
61388636400, #      utc_end 1946-04-30 15:00:00 (Tue)
61370348400, #  local_start 1945-09-30 23:00:00 (Sun)
61388665200, #    local_end 1946-04-30 23:00:00 (Tue)
28800,
0,
'CST',
    ],
    [
61388636400, #    utc_start 1946-04-30 15:00:00 (Tue)
61401855600, #      utc_end 1946-09-30 15:00:00 (Mon)
61388668800, #  local_start 1946-05-01 00:00:00 (Wed)
61401888000, #    local_end 1946-10-01 00:00:00 (Tue)
32400,
1,
'CDT',
    ],
    [
61401855600, #    utc_start 1946-09-30 15:00:00 (Mon)
61419222000, #      utc_end 1947-04-19 15:00:00 (Sat)
61401884400, #  local_start 1946-09-30 23:00:00 (Mon)
61419250800, #    local_end 1947-04-19 23:00:00 (Sat)
28800,
0,
'CST',
    ],
    [
61419222000, #    utc_start 1947-04-19 15:00:00 (Sat)
61438662000, #      utc_end 1947-11-30 15:00:00 (Sun)
61419254400, #  local_start 1947-04-20 00:00:00 (Sun)
61438694400, #    local_end 1947-12-01 00:00:00 (Mon)
32400,
1,
'CDT',
    ],
    [
61438662000, #    utc_start 1947-11-30 15:00:00 (Sun)
61451967600, #      utc_end 1948-05-02 15:00:00 (Sun)
61438690800, #  local_start 1947-11-30 23:00:00 (Sun)
61451996400, #    local_end 1948-05-02 23:00:00 (Sun)
28800,
0,
'CST',
    ],
    [
61451967600, #    utc_start 1948-05-02 15:00:00 (Sun)
61467692400, #      utc_end 1948-10-31 15:00:00 (Sun)
61452000000, #  local_start 1948-05-03 00:00:00 (Mon)
61467724800, #    local_end 1948-11-01 00:00:00 (Mon)
32400,
1,
'CDT',
    ],
    [
61467692400, #    utc_start 1948-10-31 15:00:00 (Sun)
61480911600, #      utc_end 1949-04-02 15:00:00 (Sat)
61467721200, #  local_start 1948-10-31 23:00:00 (Sun)
61480940400, #    local_end 1949-04-02 23:00:00 (Sat)
28800,
0,
'CST',
    ],
    [
61480911600, #    utc_start 1949-04-02 15:00:00 (Sat)
61499055600, #      utc_end 1949-10-29 15:00:00 (Sat)
61480944000, #  local_start 1949-04-03 00:00:00 (Sun)
61499088000, #    local_end 1949-10-30 00:00:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61499055600, #    utc_start 1949-10-29 15:00:00 (Sat)
61512361200, #      utc_end 1950-04-01 15:00:00 (Sat)
61499084400, #  local_start 1949-10-29 23:00:00 (Sat)
61512390000, #    local_end 1950-04-01 23:00:00 (Sat)
28800,
0,
'CST',
    ],
    [
61512361200, #    utc_start 1950-04-01 15:00:00 (Sat)
61530505200, #      utc_end 1950-10-28 15:00:00 (Sat)
61512393600, #  local_start 1950-04-02 00:00:00 (Sun)
61530537600, #    local_end 1950-10-29 00:00:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61530505200, #    utc_start 1950-10-28 15:00:00 (Sat)
61543810800, #      utc_end 1951-03-31 15:00:00 (Sat)
61530534000, #  local_start 1950-10-28 23:00:00 (Sat)
61543839600, #    local_end 1951-03-31 23:00:00 (Sat)
28800,
0,
'CST',
    ],
    [
61543810800, #    utc_start 1951-03-31 15:00:00 (Sat)
61562041200, #      utc_end 1951-10-28 15:00:00 (Sun)
61543843200, #  local_start 1951-04-01 00:00:00 (Sun)
61562073600, #    local_end 1951-10-29 00:00:00 (Mon)
32400,
1,
'CDT',
    ],
    [
61562041200, #    utc_start 1951-10-28 15:00:00 (Sun)
61575865200, #      utc_end 1952-04-05 15:00:00 (Sat)
61562070000, #  local_start 1951-10-28 23:00:00 (Sun)
61575894000, #    local_end 1952-04-05 23:00:00 (Sat)
28800,
0,
'CST',
    ],
    [
61575865200, #    utc_start 1952-04-05 15:00:00 (Sat)
61594009200, #      utc_end 1952-11-01 15:00:00 (Sat)
61575897600, #  local_start 1952-04-06 00:00:00 (Sun)
61594041600, #    local_end 1952-11-02 00:00:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61594009200, #    utc_start 1952-11-01 15:00:00 (Sat)
61607314800, #      utc_end 1953-04-04 15:00:00 (Sat)
61594038000, #  local_start 1952-11-01 23:00:00 (Sat)
61607343600, #    local_end 1953-04-04 23:00:00 (Sat)
28800,
0,
'CST',
    ],
    [
61607314800, #    utc_start 1953-04-04 15:00:00 (Sat)
61625458800, #      utc_end 1953-10-31 15:00:00 (Sat)
61607347200, #  local_start 1953-04-05 00:00:00 (Sun)
61625491200, #    local_end 1953-11-01 00:00:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61625458800, #    utc_start 1953-10-31 15:00:00 (Sat)
61637554800, #      utc_end 1954-03-20 15:00:00 (Sat)
61625487600, #  local_start 1953-10-31 23:00:00 (Sat)
61637583600, #    local_end 1954-03-20 23:00:00 (Sat)
28800,
0,
'CST',
    ],
    [
61637554800, #    utc_start 1954-03-20 15:00:00 (Sat)
61656908400, #      utc_end 1954-10-30 15:00:00 (Sat)
61637587200, #  local_start 1954-03-21 00:00:00 (Sun)
61656940800, #    local_end 1954-10-31 00:00:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61656908400, #    utc_start 1954-10-30 15:00:00 (Sat)
61669004400, #      utc_end 1955-03-19 15:00:00 (Sat)
61656937200, #  local_start 1954-10-30 23:00:00 (Sat)
61669033200, #    local_end 1955-03-19 23:00:00 (Sat)
28800,
0,
'CST',
    ],
    [
61669004400, #    utc_start 1955-03-19 15:00:00 (Sat)
61688962800, #      utc_end 1955-11-05 15:00:00 (Sat)
61669036800, #  local_start 1955-03-20 00:00:00 (Sun)
61688995200, #    local_end 1955-11-06 00:00:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61688962800, #    utc_start 1955-11-05 15:00:00 (Sat)
61700454000, #      utc_end 1956-03-17 15:00:00 (Sat)
61688991600, #  local_start 1955-11-05 23:00:00 (Sat)
61700482800, #    local_end 1956-03-17 23:00:00 (Sat)
28800,
0,
'CST',
    ],
    [
61700454000, #    utc_start 1956-03-17 15:00:00 (Sat)
61720425000, #      utc_end 1956-11-03 18:30:00 (Sat)
61700486400, #  local_start 1956-03-18 00:00:00 (Sun)
61720457400, #    local_end 1956-11-04 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61720425000, #    utc_start 1956-11-03 18:30:00 (Sat)
61732524600, #      utc_end 1957-03-23 19:30:00 (Sat)
61720453800, #  local_start 1956-11-04 02:30:00 (Sun)
61732553400, #    local_end 1957-03-24 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
61732524600, #    utc_start 1957-03-23 19:30:00 (Sat)
61751874600, #      utc_end 1957-11-02 18:30:00 (Sat)
61732557000, #  local_start 1957-03-24 04:30:00 (Sun)
61751907000, #    local_end 1957-11-03 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61751874600, #    utc_start 1957-11-02 18:30:00 (Sat)
61763974200, #      utc_end 1958-03-22 19:30:00 (Sat)
61751903400, #  local_start 1957-11-03 02:30:00 (Sun)
61764003000, #    local_end 1958-03-23 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
61763974200, #    utc_start 1958-03-22 19:30:00 (Sat)
61783324200, #      utc_end 1958-11-01 18:30:00 (Sat)
61764006600, #  local_start 1958-03-23 04:30:00 (Sun)
61783356600, #    local_end 1958-11-02 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61783324200, #    utc_start 1958-11-01 18:30:00 (Sat)
61795423800, #      utc_end 1959-03-21 19:30:00 (Sat)
61783353000, #  local_start 1958-11-02 02:30:00 (Sun)
61795452600, #    local_end 1959-03-22 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
61795423800, #    utc_start 1959-03-21 19:30:00 (Sat)
61814773800, #      utc_end 1959-10-31 18:30:00 (Sat)
61795456200, #  local_start 1959-03-22 04:30:00 (Sun)
61814806200, #    local_end 1959-11-01 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61814773800, #    utc_start 1959-10-31 18:30:00 (Sat)
61826873400, #      utc_end 1960-03-19 19:30:00 (Sat)
61814802600, #  local_start 1959-11-01 02:30:00 (Sun)
61826902200, #    local_end 1960-03-20 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
61826873400, #    utc_start 1960-03-19 19:30:00 (Sat)
61846828200, #      utc_end 1960-11-05 18:30:00 (Sat)
61826905800, #  local_start 1960-03-20 04:30:00 (Sun)
61846860600, #    local_end 1960-11-06 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61846828200, #    utc_start 1960-11-05 18:30:00 (Sat)
61858323000, #      utc_end 1961-03-18 19:30:00 (Sat)
61846857000, #  local_start 1960-11-06 02:30:00 (Sun)
61858351800, #    local_end 1961-03-19 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
61858323000, #    utc_start 1961-03-18 19:30:00 (Sat)
61878277800, #      utc_end 1961-11-04 18:30:00 (Sat)
61858355400, #  local_start 1961-03-19 04:30:00 (Sun)
61878310200, #    local_end 1961-11-05 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61878277800, #    utc_start 1961-11-04 18:30:00 (Sat)
61889772600, #      utc_end 1962-03-17 19:30:00 (Sat)
61878306600, #  local_start 1961-11-05 02:30:00 (Sun)
61889801400, #    local_end 1962-03-18 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
61889772600, #    utc_start 1962-03-17 19:30:00 (Sat)
61909727400, #      utc_end 1962-11-03 18:30:00 (Sat)
61889805000, #  local_start 1962-03-18 04:30:00 (Sun)
61909759800, #    local_end 1962-11-04 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61909727400, #    utc_start 1962-11-03 18:30:00 (Sat)
61921827000, #      utc_end 1963-03-23 19:30:00 (Sat)
61909756200, #  local_start 1962-11-04 02:30:00 (Sun)
61921855800, #    local_end 1963-03-24 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
61921827000, #    utc_start 1963-03-23 19:30:00 (Sat)
61941177000, #      utc_end 1963-11-02 18:30:00 (Sat)
61921859400, #  local_start 1963-03-24 04:30:00 (Sun)
61941209400, #    local_end 1963-11-03 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61941177000, #    utc_start 1963-11-02 18:30:00 (Sat)
61953276600, #      utc_end 1964-03-21 19:30:00 (Sat)
61941205800, #  local_start 1963-11-03 02:30:00 (Sun)
61953305400, #    local_end 1964-03-22 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
61953276600, #    utc_start 1964-03-21 19:30:00 (Sat)
61972626600, #      utc_end 1964-10-31 18:30:00 (Sat)
61953309000, #  local_start 1964-03-22 04:30:00 (Sun)
61972659000, #    local_end 1964-11-01 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
61972626600, #    utc_start 1964-10-31 18:30:00 (Sat)
61987145400, #      utc_end 1965-04-17 19:30:00 (Sat)
61972655400, #  local_start 1964-11-01 02:30:00 (Sun)
61987174200, #    local_end 1965-04-18 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
61987145400, #    utc_start 1965-04-17 19:30:00 (Sat)
62002863000, #      utc_end 1965-10-16 17:30:00 (Sat)
61987177800, #  local_start 1965-04-18 04:30:00 (Sun)
62002895400, #    local_end 1965-10-17 02:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62002863000, #    utc_start 1965-10-16 17:30:00 (Sat)
62018595000, #      utc_end 1966-04-16 19:30:00 (Sat)
62002891800, #  local_start 1965-10-17 01:30:00 (Sun)
62018623800, #    local_end 1966-04-17 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62018595000, #    utc_start 1966-04-16 19:30:00 (Sat)
62034312600, #      utc_end 1966-10-15 17:30:00 (Sat)
62018627400, #  local_start 1966-04-17 04:30:00 (Sun)
62034345000, #    local_end 1966-10-16 02:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62034312600, #    utc_start 1966-10-15 17:30:00 (Sat)
62050044600, #      utc_end 1967-04-15 19:30:00 (Sat)
62034341400, #  local_start 1966-10-16 01:30:00 (Sun)
62050073400, #    local_end 1967-04-16 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62050044600, #    utc_start 1967-04-15 19:30:00 (Sat)
62066370600, #      utc_end 1967-10-21 18:30:00 (Sat)
62050077000, #  local_start 1967-04-16 04:30:00 (Sun)
62066403000, #    local_end 1967-10-22 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62066370600, #    utc_start 1967-10-21 18:30:00 (Sat)
62082099000, #      utc_end 1968-04-20 19:30:00 (Sat)
62066399400, #  local_start 1967-10-22 02:30:00 (Sun)
62082127800, #    local_end 1968-04-21 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62082099000, #    utc_start 1968-04-20 19:30:00 (Sat)
62097820200, #      utc_end 1968-10-19 18:30:00 (Sat)
62082131400, #  local_start 1968-04-21 04:30:00 (Sun)
62097852600, #    local_end 1968-10-20 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62097820200, #    utc_start 1968-10-19 18:30:00 (Sat)
62113548600, #      utc_end 1969-04-19 19:30:00 (Sat)
62097849000, #  local_start 1968-10-20 02:30:00 (Sun)
62113577400, #    local_end 1969-04-20 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62113548600, #    utc_start 1969-04-19 19:30:00 (Sat)
62129269800, #      utc_end 1969-10-18 18:30:00 (Sat)
62113581000, #  local_start 1969-04-20 04:30:00 (Sun)
62129302200, #    local_end 1969-10-19 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62129269800, #    utc_start 1969-10-18 18:30:00 (Sat)
62144998200, #      utc_end 1970-04-18 19:30:00 (Sat)
62129298600, #  local_start 1969-10-19 02:30:00 (Sun)
62145027000, #    local_end 1970-04-19 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62144998200, #    utc_start 1970-04-18 19:30:00 (Sat)
62160719400, #      utc_end 1970-10-17 18:30:00 (Sat)
62145030600, #  local_start 1970-04-19 04:30:00 (Sun)
62160751800, #    local_end 1970-10-18 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62160719400, #    utc_start 1970-10-17 18:30:00 (Sat)
62176447800, #      utc_end 1971-04-17 19:30:00 (Sat)
62160748200, #  local_start 1970-10-18 02:30:00 (Sun)
62176476600, #    local_end 1971-04-18 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62176447800, #    utc_start 1971-04-17 19:30:00 (Sat)
62192169000, #      utc_end 1971-10-16 18:30:00 (Sat)
62176480200, #  local_start 1971-04-18 04:30:00 (Sun)
62192201400, #    local_end 1971-10-17 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62192169000, #    utc_start 1971-10-16 18:30:00 (Sat)
62207897400, #      utc_end 1972-04-15 19:30:00 (Sat)
62192197800, #  local_start 1971-10-17 02:30:00 (Sun)
62207926200, #    local_end 1972-04-16 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62207897400, #    utc_start 1972-04-15 19:30:00 (Sat)
62224223400, #      utc_end 1972-10-21 18:30:00 (Sat)
62207929800, #  local_start 1972-04-16 04:30:00 (Sun)
62224255800, #    local_end 1972-10-22 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62224223400, #    utc_start 1972-10-21 18:30:00 (Sat)
62239951800, #      utc_end 1973-04-21 19:30:00 (Sat)
62224252200, #  local_start 1972-10-22 02:30:00 (Sun)
62239980600, #    local_end 1973-04-22 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62239951800, #    utc_start 1973-04-21 19:30:00 (Sat)
62255673000, #      utc_end 1973-10-20 18:30:00 (Sat)
62239984200, #  local_start 1973-04-22 04:30:00 (Sun)
62255705400, #    local_end 1973-10-21 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62255673000, #    utc_start 1973-10-20 18:30:00 (Sat)
62261724600, #      utc_end 1973-12-29 19:30:00 (Sat)
62255701800, #  local_start 1973-10-21 02:30:00 (Sun)
62261753400, #    local_end 1973-12-30 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62261724600, #    utc_start 1973-12-29 19:30:00 (Sat)
62287122600, #      utc_end 1974-10-19 18:30:00 (Sat)
62261757000, #  local_start 1973-12-30 04:30:00 (Sun)
62287155000, #    local_end 1974-10-20 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62287122600, #    utc_start 1974-10-19 18:30:00 (Sat)
62302851000, #      utc_end 1975-04-19 19:30:00 (Sat)
62287151400, #  local_start 1974-10-20 02:30:00 (Sun)
62302879800, #    local_end 1975-04-20 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62302851000, #    utc_start 1975-04-19 19:30:00 (Sat)
62318572200, #      utc_end 1975-10-18 18:30:00 (Sat)
62302883400, #  local_start 1975-04-20 04:30:00 (Sun)
62318604600, #    local_end 1975-10-19 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62318572200, #    utc_start 1975-10-18 18:30:00 (Sat)
62334300600, #      utc_end 1976-04-17 19:30:00 (Sat)
62318601000, #  local_start 1975-10-19 02:30:00 (Sun)
62334329400, #    local_end 1976-04-18 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62334300600, #    utc_start 1976-04-17 19:30:00 (Sat)
62350021800, #      utc_end 1976-10-16 18:30:00 (Sat)
62334333000, #  local_start 1976-04-18 04:30:00 (Sun)
62350054200, #    local_end 1976-10-17 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62350021800, #    utc_start 1976-10-16 18:30:00 (Sat)
62431068600, #      utc_end 1979-05-12 19:30:00 (Sat)
62350050600, #  local_start 1976-10-17 02:30:00 (Sun)
62431097400, #    local_end 1979-05-13 03:30:00 (Sun)
28800,
0,
'CST',
    ],
    [
62431068600, #    utc_start 1979-05-12 19:30:00 (Sat)
62444975400, #      utc_end 1979-10-20 18:30:00 (Sat)
62431101000, #  local_start 1979-05-13 04:30:00 (Sun)
62445007800, #    local_end 1979-10-21 03:30:00 (Sun)
32400,
1,
'CDT',
    ],
    [
62444975400, #    utc_start 1979-10-20 18:30:00 (Sat)
DateTime::TimeZone::INFINITY, #      utc_end
62445004200, #  local_start 1979-10-21 02:30:00 (Sun)
DateTime::TimeZone::INFINITY, #    local_end
28800,
0,
'CST',
    ],
];

sub olson_version {'2021a'}

sub has_dst_changes {34}

sub _max_year {2031}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}



1;

