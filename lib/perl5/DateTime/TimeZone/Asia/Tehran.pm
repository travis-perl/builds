# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.08) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from /tmp/NtPbGUL9sg/asia.  Olson data version 2018g
#
# Do not edit this file directly.
#
package DateTime::TimeZone::Asia::Tehran;

use strict;
use warnings;
use namespace::autoclean;

our $VERSION = '2.21';

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::Asia::Tehran::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60431517256, #      utc_end 1915-12-31 20:34:16 (Fri)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60431529600, #    local_end 1916-01-01 00:00:00 (Sat)
12344,
0,
'LMT',
    ],
    [
60431517256, #    utc_start 1915-12-31 20:34:16 (Fri)
61378288456, #      utc_end 1945-12-31 20:34:16 (Mon)
60431529600, #  local_start 1916-01-01 00:00:00 (Sat)
61378300800, #    local_end 1946-01-01 00:00:00 (Tue)
12344,
0,
'TMT',
    ],
    [
61378288456, #    utc_start 1945-12-31 20:34:16 (Mon)
62382861000, #      utc_end 1977-10-31 20:30:00 (Mon)
61378301056, #  local_start 1946-01-01 00:04:16 (Tue)
62382873600, #    local_end 1977-11-01 00:00:00 (Tue)
12600,
0,
'+0330',
    ],
    [
62382861000, #    utc_start 1977-10-31 20:30:00 (Mon)
62394955200, #      utc_end 1978-03-20 20:00:00 (Mon)
62382875400, #  local_start 1977-11-01 00:30:00 (Tue)
62394969600, #    local_end 1978-03-21 00:00:00 (Tue)
14400,
0,
'+04',
    ],
    [
62394955200, #    utc_start 1978-03-20 20:00:00 (Mon)
62413441200, #      utc_end 1978-10-20 19:00:00 (Fri)
62394973200, #  local_start 1978-03-21 01:00:00 (Tue)
62413459200, #    local_end 1978-10-21 00:00:00 (Sat)
18000,
1,
'+05',
    ],
    [
62413441200, #    utc_start 1978-10-20 19:00:00 (Fri)
62419665600, #      utc_end 1978-12-31 20:00:00 (Sun)
62413455600, #  local_start 1978-10-20 23:00:00 (Fri)
62419680000, #    local_end 1979-01-01 00:00:00 (Mon)
14400,
0,
'+04',
    ],
    [
62419665600, #    utc_start 1978-12-31 20:00:00 (Sun)
62426493000, #      utc_end 1979-03-20 20:30:00 (Tue)
62419678200, #  local_start 1978-12-31 23:30:00 (Sun)
62426505600, #    local_end 1979-03-21 00:00:00 (Wed)
12600,
0,
'+0330',
    ],
    [
62426493000, #    utc_start 1979-03-20 20:30:00 (Tue)
62442214200, #      utc_end 1979-09-18 19:30:00 (Tue)
62426509200, #  local_start 1979-03-21 01:00:00 (Wed)
62442230400, #    local_end 1979-09-19 00:00:00 (Wed)
16200,
1,
'+0430',
    ],
    [
62442214200, #    utc_start 1979-09-18 19:30:00 (Tue)
62458115400, #      utc_end 1980-03-20 20:30:00 (Thu)
62442226800, #  local_start 1979-09-18 23:00:00 (Tue)
62458128000, #    local_end 1980-03-21 00:00:00 (Fri)
12600,
0,
'+0330',
    ],
    [
62458115400, #    utc_start 1980-03-20 20:30:00 (Thu)
62474182200, #      utc_end 1980-09-22 19:30:00 (Mon)
62458131600, #  local_start 1980-03-21 01:00:00 (Fri)
62474198400, #    local_end 1980-09-23 00:00:00 (Tue)
16200,
1,
'+0430',
    ],
    [
62474182200, #    utc_start 1980-09-22 19:30:00 (Mon)
62808899400, #      utc_end 1991-05-02 20:30:00 (Thu)
62474194800, #  local_start 1980-09-22 23:00:00 (Mon)
62808912000, #    local_end 1991-05-03 00:00:00 (Fri)
12600,
0,
'+0330',
    ],
    [
62808899400, #    utc_start 1991-05-02 20:30:00 (Thu)
62821164600, #      utc_end 1991-09-21 19:30:00 (Sat)
62808915600, #  local_start 1991-05-03 01:00:00 (Fri)
62821180800, #    local_end 1991-09-22 00:00:00 (Sun)
16200,
1,
'+0430',
    ],
    [
62821164600, #    utc_start 1991-09-21 19:30:00 (Sat)
62836893000, #      utc_end 1992-03-21 20:30:00 (Sat)
62821177200, #  local_start 1991-09-21 23:00:00 (Sat)
62836905600, #    local_end 1992-03-22 00:00:00 (Sun)
12600,
0,
'+0330',
    ],
    [
62836893000, #    utc_start 1992-03-21 20:30:00 (Sat)
62852787000, #      utc_end 1992-09-21 19:30:00 (Mon)
62836909200, #  local_start 1992-03-22 01:00:00 (Sun)
62852803200, #    local_end 1992-09-22 00:00:00 (Tue)
16200,
1,
'+0430',
    ],
    [
62852787000, #    utc_start 1992-09-21 19:30:00 (Mon)
62868429000, #      utc_end 1993-03-21 20:30:00 (Sun)
62852799600, #  local_start 1992-09-21 23:00:00 (Mon)
62868441600, #    local_end 1993-03-22 00:00:00 (Mon)
12600,
0,
'+0330',
    ],
    [
62868429000, #    utc_start 1993-03-21 20:30:00 (Sun)
62884323000, #      utc_end 1993-09-21 19:30:00 (Tue)
62868445200, #  local_start 1993-03-22 01:00:00 (Mon)
62884339200, #    local_end 1993-09-22 00:00:00 (Wed)
16200,
1,
'+0430',
    ],
    [
62884323000, #    utc_start 1993-09-21 19:30:00 (Tue)
62899965000, #      utc_end 1994-03-21 20:30:00 (Mon)
62884335600, #  local_start 1993-09-21 23:00:00 (Tue)
62899977600, #    local_end 1994-03-22 00:00:00 (Tue)
12600,
0,
'+0330',
    ],
    [
62899965000, #    utc_start 1994-03-21 20:30:00 (Mon)
62915859000, #      utc_end 1994-09-21 19:30:00 (Wed)
62899981200, #  local_start 1994-03-22 01:00:00 (Tue)
62915875200, #    local_end 1994-09-22 00:00:00 (Thu)
16200,
1,
'+0430',
    ],
    [
62915859000, #    utc_start 1994-09-21 19:30:00 (Wed)
62931501000, #      utc_end 1995-03-21 20:30:00 (Tue)
62915871600, #  local_start 1994-09-21 23:00:00 (Wed)
62931513600, #    local_end 1995-03-22 00:00:00 (Wed)
12600,
0,
'+0330',
    ],
    [
62931501000, #    utc_start 1995-03-21 20:30:00 (Tue)
62947395000, #      utc_end 1995-09-21 19:30:00 (Thu)
62931517200, #  local_start 1995-03-22 01:00:00 (Wed)
62947411200, #    local_end 1995-09-22 00:00:00 (Fri)
16200,
1,
'+0430',
    ],
    [
62947395000, #    utc_start 1995-09-21 19:30:00 (Thu)
62963037000, #      utc_end 1996-03-20 20:30:00 (Wed)
62947407600, #  local_start 1995-09-21 23:00:00 (Thu)
62963049600, #    local_end 1996-03-21 00:00:00 (Thu)
12600,
0,
'+0330',
    ],
    [
62963037000, #    utc_start 1996-03-20 20:30:00 (Wed)
62978931000, #      utc_end 1996-09-20 19:30:00 (Fri)
62963053200, #  local_start 1996-03-21 01:00:00 (Thu)
62978947200, #    local_end 1996-09-21 00:00:00 (Sat)
16200,
1,
'+0430',
    ],
    [
62978931000, #    utc_start 1996-09-20 19:30:00 (Fri)
62994659400, #      utc_end 1997-03-21 20:30:00 (Fri)
62978943600, #  local_start 1996-09-20 23:00:00 (Fri)
62994672000, #    local_end 1997-03-22 00:00:00 (Sat)
12600,
0,
'+0330',
    ],
    [
62994659400, #    utc_start 1997-03-21 20:30:00 (Fri)
63010553400, #      utc_end 1997-09-21 19:30:00 (Sun)
62994675600, #  local_start 1997-03-22 01:00:00 (Sat)
63010569600, #    local_end 1997-09-22 00:00:00 (Mon)
16200,
1,
'+0430',
    ],
    [
63010553400, #    utc_start 1997-09-21 19:30:00 (Sun)
63026195400, #      utc_end 1998-03-21 20:30:00 (Sat)
63010566000, #  local_start 1997-09-21 23:00:00 (Sun)
63026208000, #    local_end 1998-03-22 00:00:00 (Sun)
12600,
0,
'+0330',
    ],
    [
63026195400, #    utc_start 1998-03-21 20:30:00 (Sat)
63042089400, #      utc_end 1998-09-21 19:30:00 (Mon)
63026211600, #  local_start 1998-03-22 01:00:00 (Sun)
63042105600, #    local_end 1998-09-22 00:00:00 (Tue)
16200,
1,
'+0430',
    ],
    [
63042089400, #    utc_start 1998-09-21 19:30:00 (Mon)
63057731400, #      utc_end 1999-03-21 20:30:00 (Sun)
63042102000, #  local_start 1998-09-21 23:00:00 (Mon)
63057744000, #    local_end 1999-03-22 00:00:00 (Mon)
12600,
0,
'+0330',
    ],
    [
63057731400, #    utc_start 1999-03-21 20:30:00 (Sun)
63073625400, #      utc_end 1999-09-21 19:30:00 (Tue)
63057747600, #  local_start 1999-03-22 01:00:00 (Mon)
63073641600, #    local_end 1999-09-22 00:00:00 (Wed)
16200,
1,
'+0430',
    ],
    [
63073625400, #    utc_start 1999-09-21 19:30:00 (Tue)
63089267400, #      utc_end 2000-03-20 20:30:00 (Mon)
63073638000, #  local_start 1999-09-21 23:00:00 (Tue)
63089280000, #    local_end 2000-03-21 00:00:00 (Tue)
12600,
0,
'+0330',
    ],
    [
63089267400, #    utc_start 2000-03-20 20:30:00 (Mon)
63105161400, #      utc_end 2000-09-20 19:30:00 (Wed)
63089283600, #  local_start 2000-03-21 01:00:00 (Tue)
63105177600, #    local_end 2000-09-21 00:00:00 (Thu)
16200,
1,
'+0430',
    ],
    [
63105161400, #    utc_start 2000-09-20 19:30:00 (Wed)
63120889800, #      utc_end 2001-03-21 20:30:00 (Wed)
63105174000, #  local_start 2000-09-20 23:00:00 (Wed)
63120902400, #    local_end 2001-03-22 00:00:00 (Thu)
12600,
0,
'+0330',
    ],
    [
63120889800, #    utc_start 2001-03-21 20:30:00 (Wed)
63136783800, #      utc_end 2001-09-21 19:30:00 (Fri)
63120906000, #  local_start 2001-03-22 01:00:00 (Thu)
63136800000, #    local_end 2001-09-22 00:00:00 (Sat)
16200,
1,
'+0430',
    ],
    [
63136783800, #    utc_start 2001-09-21 19:30:00 (Fri)
63152425800, #      utc_end 2002-03-21 20:30:00 (Thu)
63136796400, #  local_start 2001-09-21 23:00:00 (Fri)
63152438400, #    local_end 2002-03-22 00:00:00 (Fri)
12600,
0,
'+0330',
    ],
    [
63152425800, #    utc_start 2002-03-21 20:30:00 (Thu)
63168319800, #      utc_end 2002-09-21 19:30:00 (Sat)
63152442000, #  local_start 2002-03-22 01:00:00 (Fri)
63168336000, #    local_end 2002-09-22 00:00:00 (Sun)
16200,
1,
'+0430',
    ],
    [
63168319800, #    utc_start 2002-09-21 19:30:00 (Sat)
63183961800, #      utc_end 2003-03-21 20:30:00 (Fri)
63168332400, #  local_start 2002-09-21 23:00:00 (Sat)
63183974400, #    local_end 2003-03-22 00:00:00 (Sat)
12600,
0,
'+0330',
    ],
    [
63183961800, #    utc_start 2003-03-21 20:30:00 (Fri)
63199855800, #      utc_end 2003-09-21 19:30:00 (Sun)
63183978000, #  local_start 2003-03-22 01:00:00 (Sat)
63199872000, #    local_end 2003-09-22 00:00:00 (Mon)
16200,
1,
'+0430',
    ],
    [
63199855800, #    utc_start 2003-09-21 19:30:00 (Sun)
63215497800, #      utc_end 2004-03-20 20:30:00 (Sat)
63199868400, #  local_start 2003-09-21 23:00:00 (Sun)
63215510400, #    local_end 2004-03-21 00:00:00 (Sun)
12600,
0,
'+0330',
    ],
    [
63215497800, #    utc_start 2004-03-20 20:30:00 (Sat)
63231391800, #      utc_end 2004-09-20 19:30:00 (Mon)
63215514000, #  local_start 2004-03-21 01:00:00 (Sun)
63231408000, #    local_end 2004-09-21 00:00:00 (Tue)
16200,
1,
'+0430',
    ],
    [
63231391800, #    utc_start 2004-09-20 19:30:00 (Mon)
63247120200, #      utc_end 2005-03-21 20:30:00 (Mon)
63231404400, #  local_start 2004-09-20 23:00:00 (Mon)
63247132800, #    local_end 2005-03-22 00:00:00 (Tue)
12600,
0,
'+0330',
    ],
    [
63247120200, #    utc_start 2005-03-21 20:30:00 (Mon)
63263014200, #      utc_end 2005-09-21 19:30:00 (Wed)
63247136400, #  local_start 2005-03-22 01:00:00 (Tue)
63263030400, #    local_end 2005-09-22 00:00:00 (Thu)
16200,
1,
'+0430',
    ],
    [
63263014200, #    utc_start 2005-09-21 19:30:00 (Wed)
63341728200, #      utc_end 2008-03-20 20:30:00 (Thu)
63263026800, #  local_start 2005-09-21 23:00:00 (Wed)
63341740800, #    local_end 2008-03-21 00:00:00 (Fri)
12600,
0,
'+0330',
    ],
    [
63341728200, #    utc_start 2008-03-20 20:30:00 (Thu)
63357622200, #      utc_end 2008-09-20 19:30:00 (Sat)
63341744400, #  local_start 2008-03-21 01:00:00 (Fri)
63357638400, #    local_end 2008-09-21 00:00:00 (Sun)
16200,
1,
'+0430',
    ],
    [
63357622200, #    utc_start 2008-09-20 19:30:00 (Sat)
63373350600, #      utc_end 2009-03-21 20:30:00 (Sat)
63357634800, #  local_start 2008-09-20 23:00:00 (Sat)
63373363200, #    local_end 2009-03-22 00:00:00 (Sun)
12600,
0,
'+0330',
    ],
    [
63373350600, #    utc_start 2009-03-21 20:30:00 (Sat)
63389244600, #      utc_end 2009-09-21 19:30:00 (Mon)
63373366800, #  local_start 2009-03-22 01:00:00 (Sun)
63389260800, #    local_end 2009-09-22 00:00:00 (Tue)
16200,
1,
'+0430',
    ],
    [
63389244600, #    utc_start 2009-09-21 19:30:00 (Mon)
63404886600, #      utc_end 2010-03-21 20:30:00 (Sun)
63389257200, #  local_start 2009-09-21 23:00:00 (Mon)
63404899200, #    local_end 2010-03-22 00:00:00 (Mon)
12600,
0,
'+0330',
    ],
    [
63404886600, #    utc_start 2010-03-21 20:30:00 (Sun)
63420780600, #      utc_end 2010-09-21 19:30:00 (Tue)
63404902800, #  local_start 2010-03-22 01:00:00 (Mon)
63420796800, #    local_end 2010-09-22 00:00:00 (Wed)
16200,
1,
'+0430',
    ],
    [
63420780600, #    utc_start 2010-09-21 19:30:00 (Tue)
63436422600, #      utc_end 2011-03-21 20:30:00 (Mon)
63420793200, #  local_start 2010-09-21 23:00:00 (Tue)
63436435200, #    local_end 2011-03-22 00:00:00 (Tue)
12600,
0,
'+0330',
    ],
    [
63436422600, #    utc_start 2011-03-21 20:30:00 (Mon)
63452316600, #      utc_end 2011-09-21 19:30:00 (Wed)
63436438800, #  local_start 2011-03-22 01:00:00 (Tue)
63452332800, #    local_end 2011-09-22 00:00:00 (Thu)
16200,
1,
'+0430',
    ],
    [
63452316600, #    utc_start 2011-09-21 19:30:00 (Wed)
63467958600, #      utc_end 2012-03-20 20:30:00 (Tue)
63452329200, #  local_start 2011-09-21 23:00:00 (Wed)
63467971200, #    local_end 2012-03-21 00:00:00 (Wed)
12600,
0,
'+0330',
    ],
    [
63467958600, #    utc_start 2012-03-20 20:30:00 (Tue)
63483852600, #      utc_end 2012-09-20 19:30:00 (Thu)
63467974800, #  local_start 2012-03-21 01:00:00 (Wed)
63483868800, #    local_end 2012-09-21 00:00:00 (Fri)
16200,
1,
'+0430',
    ],
    [
63483852600, #    utc_start 2012-09-20 19:30:00 (Thu)
63499581000, #      utc_end 2013-03-21 20:30:00 (Thu)
63483865200, #  local_start 2012-09-20 23:00:00 (Thu)
63499593600, #    local_end 2013-03-22 00:00:00 (Fri)
12600,
0,
'+0330',
    ],
    [
63499581000, #    utc_start 2013-03-21 20:30:00 (Thu)
63515475000, #      utc_end 2013-09-21 19:30:00 (Sat)
63499597200, #  local_start 2013-03-22 01:00:00 (Fri)
63515491200, #    local_end 2013-09-22 00:00:00 (Sun)
16200,
1,
'+0430',
    ],
    [
63515475000, #    utc_start 2013-09-21 19:30:00 (Sat)
63531117000, #      utc_end 2014-03-21 20:30:00 (Fri)
63515487600, #  local_start 2013-09-21 23:00:00 (Sat)
63531129600, #    local_end 2014-03-22 00:00:00 (Sat)
12600,
0,
'+0330',
    ],
    [
63531117000, #    utc_start 2014-03-21 20:30:00 (Fri)
63547011000, #      utc_end 2014-09-21 19:30:00 (Sun)
63531133200, #  local_start 2014-03-22 01:00:00 (Sat)
63547027200, #    local_end 2014-09-22 00:00:00 (Mon)
16200,
1,
'+0430',
    ],
    [
63547011000, #    utc_start 2014-09-21 19:30:00 (Sun)
63562653000, #      utc_end 2015-03-21 20:30:00 (Sat)
63547023600, #  local_start 2014-09-21 23:00:00 (Sun)
63562665600, #    local_end 2015-03-22 00:00:00 (Sun)
12600,
0,
'+0330',
    ],
    [
63562653000, #    utc_start 2015-03-21 20:30:00 (Sat)
63578547000, #      utc_end 2015-09-21 19:30:00 (Mon)
63562669200, #  local_start 2015-03-22 01:00:00 (Sun)
63578563200, #    local_end 2015-09-22 00:00:00 (Tue)
16200,
1,
'+0430',
    ],
    [
63578547000, #    utc_start 2015-09-21 19:30:00 (Mon)
63594189000, #      utc_end 2016-03-20 20:30:00 (Sun)
63578559600, #  local_start 2015-09-21 23:00:00 (Mon)
63594201600, #    local_end 2016-03-21 00:00:00 (Mon)
12600,
0,
'+0330',
    ],
    [
63594189000, #    utc_start 2016-03-20 20:30:00 (Sun)
63610083000, #      utc_end 2016-09-20 19:30:00 (Tue)
63594205200, #  local_start 2016-03-21 01:00:00 (Mon)
63610099200, #    local_end 2016-09-21 00:00:00 (Wed)
16200,
1,
'+0430',
    ],
    [
63610083000, #    utc_start 2016-09-20 19:30:00 (Tue)
63625811400, #      utc_end 2017-03-21 20:30:00 (Tue)
63610095600, #  local_start 2016-09-20 23:00:00 (Tue)
63625824000, #    local_end 2017-03-22 00:00:00 (Wed)
12600,
0,
'+0330',
    ],
    [
63625811400, #    utc_start 2017-03-21 20:30:00 (Tue)
63641705400, #      utc_end 2017-09-21 19:30:00 (Thu)
63625827600, #  local_start 2017-03-22 01:00:00 (Wed)
63641721600, #    local_end 2017-09-22 00:00:00 (Fri)
16200,
1,
'+0430',
    ],
    [
63641705400, #    utc_start 2017-09-21 19:30:00 (Thu)
63657347400, #      utc_end 2018-03-21 20:30:00 (Wed)
63641718000, #  local_start 2017-09-21 23:00:00 (Thu)
63657360000, #    local_end 2018-03-22 00:00:00 (Thu)
12600,
0,
'+0330',
    ],
    [
63657347400, #    utc_start 2018-03-21 20:30:00 (Wed)
63673241400, #      utc_end 2018-09-21 19:30:00 (Fri)
63657363600, #  local_start 2018-03-22 01:00:00 (Thu)
63673257600, #    local_end 2018-09-22 00:00:00 (Sat)
16200,
1,
'+0430',
    ],
    [
63673241400, #    utc_start 2018-09-21 19:30:00 (Fri)
63688883400, #      utc_end 2019-03-21 20:30:00 (Thu)
63673254000, #  local_start 2018-09-21 23:00:00 (Fri)
63688896000, #    local_end 2019-03-22 00:00:00 (Fri)
12600,
0,
'+0330',
    ],
    [
63688883400, #    utc_start 2019-03-21 20:30:00 (Thu)
63704777400, #      utc_end 2019-09-21 19:30:00 (Sat)
63688899600, #  local_start 2019-03-22 01:00:00 (Fri)
63704793600, #    local_end 2019-09-22 00:00:00 (Sun)
16200,
1,
'+0430',
    ],
    [
63704777400, #    utc_start 2019-09-21 19:30:00 (Sat)
63720419400, #      utc_end 2020-03-20 20:30:00 (Fri)
63704790000, #  local_start 2019-09-21 23:00:00 (Sat)
63720432000, #    local_end 2020-03-21 00:00:00 (Sat)
12600,
0,
'+0330',
    ],
    [
63720419400, #    utc_start 2020-03-20 20:30:00 (Fri)
63736313400, #      utc_end 2020-09-20 19:30:00 (Sun)
63720435600, #  local_start 2020-03-21 01:00:00 (Sat)
63736329600, #    local_end 2020-09-21 00:00:00 (Mon)
16200,
1,
'+0430',
    ],
    [
63736313400, #    utc_start 2020-09-20 19:30:00 (Sun)
63752041800, #      utc_end 2021-03-21 20:30:00 (Sun)
63736326000, #  local_start 2020-09-20 23:00:00 (Sun)
63752054400, #    local_end 2021-03-22 00:00:00 (Mon)
12600,
0,
'+0330',
    ],
    [
63752041800, #    utc_start 2021-03-21 20:30:00 (Sun)
63767935800, #      utc_end 2021-09-21 19:30:00 (Tue)
63752058000, #  local_start 2021-03-22 01:00:00 (Mon)
63767952000, #    local_end 2021-09-22 00:00:00 (Wed)
16200,
1,
'+0430',
    ],
    [
63767935800, #    utc_start 2021-09-21 19:30:00 (Tue)
63783577800, #      utc_end 2022-03-21 20:30:00 (Mon)
63767948400, #  local_start 2021-09-21 23:00:00 (Tue)
63783590400, #    local_end 2022-03-22 00:00:00 (Tue)
12600,
0,
'+0330',
    ],
    [
63783577800, #    utc_start 2022-03-21 20:30:00 (Mon)
63799471800, #      utc_end 2022-09-21 19:30:00 (Wed)
63783594000, #  local_start 2022-03-22 01:00:00 (Tue)
63799488000, #    local_end 2022-09-22 00:00:00 (Thu)
16200,
1,
'+0430',
    ],
    [
63799471800, #    utc_start 2022-09-21 19:30:00 (Wed)
63815113800, #      utc_end 2023-03-21 20:30:00 (Tue)
63799484400, #  local_start 2022-09-21 23:00:00 (Wed)
63815126400, #    local_end 2023-03-22 00:00:00 (Wed)
12600,
0,
'+0330',
    ],
    [
63815113800, #    utc_start 2023-03-21 20:30:00 (Tue)
63831007800, #      utc_end 2023-09-21 19:30:00 (Thu)
63815130000, #  local_start 2023-03-22 01:00:00 (Wed)
63831024000, #    local_end 2023-09-22 00:00:00 (Fri)
16200,
1,
'+0430',
    ],
    [
63831007800, #    utc_start 2023-09-21 19:30:00 (Thu)
63846649800, #      utc_end 2024-03-20 20:30:00 (Wed)
63831020400, #  local_start 2023-09-21 23:00:00 (Thu)
63846662400, #    local_end 2024-03-21 00:00:00 (Thu)
12600,
0,
'+0330',
    ],
    [
63846649800, #    utc_start 2024-03-20 20:30:00 (Wed)
63862543800, #      utc_end 2024-09-20 19:30:00 (Fri)
63846666000, #  local_start 2024-03-21 01:00:00 (Thu)
63862560000, #    local_end 2024-09-21 00:00:00 (Sat)
16200,
1,
'+0430',
    ],
    [
63862543800, #    utc_start 2024-09-20 19:30:00 (Fri)
63878272200, #      utc_end 2025-03-21 20:30:00 (Fri)
63862556400, #  local_start 2024-09-20 23:00:00 (Fri)
63878284800, #    local_end 2025-03-22 00:00:00 (Sat)
12600,
0,
'+0330',
    ],
    [
63878272200, #    utc_start 2025-03-21 20:30:00 (Fri)
63894166200, #      utc_end 2025-09-21 19:30:00 (Sun)
63878288400, #  local_start 2025-03-22 01:00:00 (Sat)
63894182400, #    local_end 2025-09-22 00:00:00 (Mon)
16200,
1,
'+0430',
    ],
    [
63894166200, #    utc_start 2025-09-21 19:30:00 (Sun)
63909808200, #      utc_end 2026-03-21 20:30:00 (Sat)
63894178800, #  local_start 2025-09-21 23:00:00 (Sun)
63909820800, #    local_end 2026-03-22 00:00:00 (Sun)
12600,
0,
'+0330',
    ],
    [
63909808200, #    utc_start 2026-03-21 20:30:00 (Sat)
63925702200, #      utc_end 2026-09-21 19:30:00 (Mon)
63909824400, #  local_start 2026-03-22 01:00:00 (Sun)
63925718400, #    local_end 2026-09-22 00:00:00 (Tue)
16200,
1,
'+0430',
    ],
    [
63925702200, #    utc_start 2026-09-21 19:30:00 (Mon)
63941344200, #      utc_end 2027-03-21 20:30:00 (Sun)
63925714800, #  local_start 2026-09-21 23:00:00 (Mon)
63941356800, #    local_end 2027-03-22 00:00:00 (Mon)
12600,
0,
'+0330',
    ],
    [
63941344200, #    utc_start 2027-03-21 20:30:00 (Sun)
63957238200, #      utc_end 2027-09-21 19:30:00 (Tue)
63941360400, #  local_start 2027-03-22 01:00:00 (Mon)
63957254400, #    local_end 2027-09-22 00:00:00 (Wed)
16200,
1,
'+0430',
    ],
    [
63957238200, #    utc_start 2027-09-21 19:30:00 (Tue)
63972880200, #      utc_end 2028-03-20 20:30:00 (Mon)
63957250800, #  local_start 2027-09-21 23:00:00 (Tue)
63972892800, #    local_end 2028-03-21 00:00:00 (Tue)
12600,
0,
'+0330',
    ],
    [
63972880200, #    utc_start 2028-03-20 20:30:00 (Mon)
63988774200, #      utc_end 2028-09-20 19:30:00 (Wed)
63972896400, #  local_start 2028-03-21 01:00:00 (Tue)
63988790400, #    local_end 2028-09-21 00:00:00 (Thu)
16200,
1,
'+0430',
    ],
    [
63988774200, #    utc_start 2028-09-20 19:30:00 (Wed)
64004416200, #      utc_end 2029-03-20 20:30:00 (Tue)
63988786800, #  local_start 2028-09-20 23:00:00 (Wed)
64004428800, #    local_end 2029-03-21 00:00:00 (Wed)
12600,
0,
'+0330',
    ],
    [
64004416200, #    utc_start 2029-03-20 20:30:00 (Tue)
64020310200, #      utc_end 2029-09-20 19:30:00 (Thu)
64004432400, #  local_start 2029-03-21 01:00:00 (Wed)
64020326400, #    local_end 2029-09-21 00:00:00 (Fri)
16200,
1,
'+0430',
    ],
    [
64020310200, #    utc_start 2029-09-20 19:30:00 (Thu)
64036038600, #      utc_end 2030-03-21 20:30:00 (Thu)
64020322800, #  local_start 2029-09-20 23:00:00 (Thu)
64036051200, #    local_end 2030-03-22 00:00:00 (Fri)
12600,
0,
'+0330',
    ],
    [
64036038600, #    utc_start 2030-03-21 20:30:00 (Thu)
64051932600, #      utc_end 2030-09-21 19:30:00 (Sat)
64036054800, #  local_start 2030-03-22 01:00:00 (Fri)
64051948800, #    local_end 2030-09-22 00:00:00 (Sun)
16200,
1,
'+0430',
    ],
    [
64051932600, #    utc_start 2030-09-21 19:30:00 (Sat)
64067574600, #      utc_end 2031-03-21 20:30:00 (Fri)
64051945200, #  local_start 2030-09-21 23:00:00 (Sat)
64067587200, #    local_end 2031-03-22 00:00:00 (Sat)
12600,
0,
'+0330',
    ],
    [
64067574600, #    utc_start 2031-03-21 20:30:00 (Fri)
64083468600, #      utc_end 2031-09-21 19:30:00 (Sun)
64067590800, #  local_start 2031-03-22 01:00:00 (Sat)
64083484800, #    local_end 2031-09-22 00:00:00 (Mon)
16200,
1,
'+0430',
    ],
    [
64083468600, #    utc_start 2031-09-21 19:30:00 (Sun)
64099110600, #      utc_end 2032-03-20 20:30:00 (Sat)
64083481200, #  local_start 2031-09-21 23:00:00 (Sun)
64099123200, #    local_end 2032-03-21 00:00:00 (Sun)
12600,
0,
'+0330',
    ],
    [
64099110600, #    utc_start 2032-03-20 20:30:00 (Sat)
64115004600, #      utc_end 2032-09-20 19:30:00 (Mon)
64099126800, #  local_start 2032-03-21 01:00:00 (Sun)
64115020800, #    local_end 2032-09-21 00:00:00 (Tue)
16200,
1,
'+0430',
    ],
    [
64115004600, #    utc_start 2032-09-20 19:30:00 (Mon)
64130646600, #      utc_end 2033-03-20 20:30:00 (Sun)
64115017200, #  local_start 2032-09-20 23:00:00 (Mon)
64130659200, #    local_end 2033-03-21 00:00:00 (Mon)
12600,
0,
'+0330',
    ],
    [
64130646600, #    utc_start 2033-03-20 20:30:00 (Sun)
64146540600, #      utc_end 2033-09-20 19:30:00 (Tue)
64130662800, #  local_start 2033-03-21 01:00:00 (Mon)
64146556800, #    local_end 2033-09-21 00:00:00 (Wed)
16200,
1,
'+0430',
    ],
    [
64146540600, #    utc_start 2033-09-20 19:30:00 (Tue)
64162269000, #      utc_end 2034-03-21 20:30:00 (Tue)
64146553200, #  local_start 2033-09-20 23:00:00 (Tue)
64162281600, #    local_end 2034-03-22 00:00:00 (Wed)
12600,
0,
'+0330',
    ],
    [
64162269000, #    utc_start 2034-03-21 20:30:00 (Tue)
64178163000, #      utc_end 2034-09-21 19:30:00 (Thu)
64162285200, #  local_start 2034-03-22 01:00:00 (Wed)
64178179200, #    local_end 2034-09-22 00:00:00 (Fri)
16200,
1,
'+0430',
    ],
    [
64178163000, #    utc_start 2034-09-21 19:30:00 (Thu)
64193805000, #      utc_end 2035-03-21 20:30:00 (Wed)
64178175600, #  local_start 2034-09-21 23:00:00 (Thu)
64193817600, #    local_end 2035-03-22 00:00:00 (Thu)
12600,
0,
'+0330',
    ],
    [
64193805000, #    utc_start 2035-03-21 20:30:00 (Wed)
64209699000, #      utc_end 2035-09-21 19:30:00 (Fri)
64193821200, #  local_start 2035-03-22 01:00:00 (Thu)
64209715200, #    local_end 2035-09-22 00:00:00 (Sat)
16200,
1,
'+0430',
    ],
    [
64209699000, #    utc_start 2035-09-21 19:30:00 (Fri)
64225341000, #      utc_end 2036-03-20 20:30:00 (Thu)
64209711600, #  local_start 2035-09-21 23:00:00 (Fri)
64225353600, #    local_end 2036-03-21 00:00:00 (Fri)
12600,
0,
'+0330',
    ],
    [
64225341000, #    utc_start 2036-03-20 20:30:00 (Thu)
64241235000, #      utc_end 2036-09-20 19:30:00 (Sat)
64225357200, #  local_start 2036-03-21 01:00:00 (Fri)
64241251200, #    local_end 2036-09-21 00:00:00 (Sun)
16200,
1,
'+0430',
    ],
    [
64241235000, #    utc_start 2036-09-20 19:30:00 (Sat)
64256877000, #      utc_end 2037-03-20 20:30:00 (Fri)
64241247600, #  local_start 2036-09-20 23:00:00 (Sat)
64256889600, #    local_end 2037-03-21 00:00:00 (Sat)
12600,
0,
'+0330',
    ],
    [
64256877000, #    utc_start 2037-03-20 20:30:00 (Fri)
64272771000, #      utc_end 2037-09-20 19:30:00 (Sun)
64256893200, #  local_start 2037-03-21 01:00:00 (Sat)
64272787200, #    local_end 2037-09-21 00:00:00 (Mon)
16200,
1,
'+0430',
    ],
];

sub olson_version {'2018g'}

sub has_dst_changes {48}

sub _max_year {2036}

sub _new_instance {
    return shift->_init( @_, spans => $spans );
}

sub _last_offset { 12600 }

my $last_observance = bless( {
  'format' => '+0330/+0430',
  'gmtoff' => '3:30',
  'local_start_datetime' => bless( {
    'formatter' => undef,
    'local_rd_days' => 722449,
    'local_rd_secs' => 84600,
    'offset_modifier' => 0,
    'rd_nanosecs' => 0,
    'tz' => bless( {
      'name' => 'floating',
      'offset' => 0
    }, 'DateTime::TimeZone::Floating' ),
    'utc_rd_days' => 722449,
    'utc_rd_secs' => 84600,
    'utc_year' => 1979
  }, 'DateTime' ),
  'offset_from_std' => 0,
  'offset_from_utc' => 12600,
  'until' => [],
  'utc_start_datetime' => bless( {
    'formatter' => undef,
    'local_rd_days' => 722449,
    'local_rd_secs' => 72000,
    'offset_modifier' => 0,
    'rd_nanosecs' => 0,
    'tz' => bless( {
      'name' => 'floating',
      'offset' => 0
    }, 'DateTime::TimeZone::Floating' ),
    'utc_rd_days' => 722449,
    'utc_rd_secs' => 72000,
    'utc_year' => 1979
  }, 'DateTime' )
}, 'DateTime::TimeZone::OlsonDB::Observance' )
;
sub _last_observance { $last_observance }

my $rules = [
  bless( {
    'at' => '0:00',
    'from' => '2036',
    'in' => 'Mar',
    'letter' => '',
    'name' => 'Iran',
    'offset_from_std' => 3600,
    'on' => '21',
    'save' => '1:00',
    'to' => 'max'
  }, 'DateTime::TimeZone::OlsonDB::Rule' ),
  bless( {
    'at' => '0:00',
    'from' => '2036',
    'in' => 'Sep',
    'letter' => '',
    'name' => 'Iran',
    'offset_from_std' => 0,
    'on' => '21',
    'save' => '0',
    'to' => 'max'
  }, 'DateTime::TimeZone::OlsonDB::Rule' )
]
;
sub _rules { $rules }


1;

