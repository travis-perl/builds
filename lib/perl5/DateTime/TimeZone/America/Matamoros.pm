# This file is auto-generated by the Perl DateTime Suite time zone
# code generator (0.07) This code generator comes with the
# DateTime::TimeZone module distribution in the tools/ directory

#
# Generated from ../DateTime/data/Olson/2014e/northamerica.  Olson data version 2014e
#
# Do not edit this file directly.
#
package DateTime::TimeZone::America::Matamoros;
$DateTime::TimeZone::America::Matamoros::VERSION = '1.71';
use strict;

use Class::Singleton 1.03;
use DateTime::TimeZone;
use DateTime::TimeZone::OlsonDB;

@DateTime::TimeZone::America::Matamoros::ISA = ( 'Class::Singleton', 'DateTime::TimeZone' );

my $spans =
[
    [
DateTime::TimeZone::NEG_INFINITY, #    utc_start
60620940000, #      utc_end 1922-01-01 06:00:00 (Sun)
DateTime::TimeZone::NEG_INFINITY, #  local_start
60620916000, #    local_end 1921-12-31 23:20:00 (Sat)
-24000,
0,
'LMT',
    ],
    [
60620940000, #    utc_start 1922-01-01 06:00:00 (Sun)
62703698400, #      utc_end 1988-01-01 06:00:00 (Fri)
60620918400, #  local_start 1922-01-01 00:00:00 (Sun)
62703676800, #    local_end 1988-01-01 00:00:00 (Fri)
-21600,
0,
'CST',
    ],
    [
62703698400, #    utc_start 1988-01-01 06:00:00 (Fri)
62711740800, #      utc_end 1988-04-03 08:00:00 (Sun)
62703676800, #  local_start 1988-01-01 00:00:00 (Fri)
62711719200, #    local_end 1988-04-03 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
62711740800, #    utc_start 1988-04-03 08:00:00 (Sun)
62729881200, #      utc_end 1988-10-30 07:00:00 (Sun)
62711722800, #  local_start 1988-04-03 03:00:00 (Sun)
62729863200, #    local_end 1988-10-30 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
62729881200, #    utc_start 1988-10-30 07:00:00 (Sun)
62735320800, #      utc_end 1989-01-01 06:00:00 (Sun)
62729859600, #  local_start 1988-10-30 01:00:00 (Sun)
62735299200, #    local_end 1989-01-01 00:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
62735320800, #    utc_start 1989-01-01 06:00:00 (Sun)
62964547200, #      utc_end 1996-04-07 08:00:00 (Sun)
62735299200, #  local_start 1989-01-01 00:00:00 (Sun)
62964525600, #    local_end 1996-04-07 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
62964547200, #    utc_start 1996-04-07 08:00:00 (Sun)
62982082800, #      utc_end 1996-10-27 07:00:00 (Sun)
62964529200, #  local_start 1996-04-07 03:00:00 (Sun)
62982064800, #    local_end 1996-10-27 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
62982082800, #    utc_start 1996-10-27 07:00:00 (Sun)
62995996800, #      utc_end 1997-04-06 08:00:00 (Sun)
62982061200, #  local_start 1996-10-27 01:00:00 (Sun)
62995975200, #    local_end 1997-04-06 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
62995996800, #    utc_start 1997-04-06 08:00:00 (Sun)
63013532400, #      utc_end 1997-10-26 07:00:00 (Sun)
62995978800, #  local_start 1997-04-06 03:00:00 (Sun)
63013514400, #    local_end 1997-10-26 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63013532400, #    utc_start 1997-10-26 07:00:00 (Sun)
63027446400, #      utc_end 1998-04-05 08:00:00 (Sun)
63013510800, #  local_start 1997-10-26 01:00:00 (Sun)
63027424800, #    local_end 1998-04-05 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63027446400, #    utc_start 1998-04-05 08:00:00 (Sun)
63044982000, #      utc_end 1998-10-25 07:00:00 (Sun)
63027428400, #  local_start 1998-04-05 03:00:00 (Sun)
63044964000, #    local_end 1998-10-25 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63044982000, #    utc_start 1998-10-25 07:00:00 (Sun)
63058896000, #      utc_end 1999-04-04 08:00:00 (Sun)
63044960400, #  local_start 1998-10-25 01:00:00 (Sun)
63058874400, #    local_end 1999-04-04 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63058896000, #    utc_start 1999-04-04 08:00:00 (Sun)
63077036400, #      utc_end 1999-10-31 07:00:00 (Sun)
63058878000, #  local_start 1999-04-04 03:00:00 (Sun)
63077018400, #    local_end 1999-10-31 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63077036400, #    utc_start 1999-10-31 07:00:00 (Sun)
63090345600, #      utc_end 2000-04-02 08:00:00 (Sun)
63077014800, #  local_start 1999-10-31 01:00:00 (Sun)
63090324000, #    local_end 2000-04-02 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63090345600, #    utc_start 2000-04-02 08:00:00 (Sun)
63108486000, #      utc_end 2000-10-29 07:00:00 (Sun)
63090327600, #  local_start 2000-04-02 03:00:00 (Sun)
63108468000, #    local_end 2000-10-29 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63108486000, #    utc_start 2000-10-29 07:00:00 (Sun)
63124819200, #      utc_end 2001-05-06 08:00:00 (Sun)
63108464400, #  local_start 2000-10-29 01:00:00 (Sun)
63124797600, #    local_end 2001-05-06 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63124819200, #    utc_start 2001-05-06 08:00:00 (Sun)
63137516400, #      utc_end 2001-09-30 07:00:00 (Sun)
63124801200, #  local_start 2001-05-06 03:00:00 (Sun)
63137498400, #    local_end 2001-09-30 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63137516400, #    utc_start 2001-09-30 07:00:00 (Sun)
63153849600, #      utc_end 2002-04-07 08:00:00 (Sun)
63137494800, #  local_start 2001-09-30 01:00:00 (Sun)
63153828000, #    local_end 2002-04-07 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63153849600, #    utc_start 2002-04-07 08:00:00 (Sun)
63171385200, #      utc_end 2002-10-27 07:00:00 (Sun)
63153831600, #  local_start 2002-04-07 03:00:00 (Sun)
63171367200, #    local_end 2002-10-27 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63171385200, #    utc_start 2002-10-27 07:00:00 (Sun)
63185299200, #      utc_end 2003-04-06 08:00:00 (Sun)
63171363600, #  local_start 2002-10-27 01:00:00 (Sun)
63185277600, #    local_end 2003-04-06 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63185299200, #    utc_start 2003-04-06 08:00:00 (Sun)
63202834800, #      utc_end 2003-10-26 07:00:00 (Sun)
63185281200, #  local_start 2003-04-06 03:00:00 (Sun)
63202816800, #    local_end 2003-10-26 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63202834800, #    utc_start 2003-10-26 07:00:00 (Sun)
63216748800, #      utc_end 2004-04-04 08:00:00 (Sun)
63202813200, #  local_start 2003-10-26 01:00:00 (Sun)
63216727200, #    local_end 2004-04-04 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63216748800, #    utc_start 2004-04-04 08:00:00 (Sun)
63234889200, #      utc_end 2004-10-31 07:00:00 (Sun)
63216730800, #  local_start 2004-04-04 03:00:00 (Sun)
63234871200, #    local_end 2004-10-31 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63234889200, #    utc_start 2004-10-31 07:00:00 (Sun)
63248198400, #      utc_end 2005-04-03 08:00:00 (Sun)
63234867600, #  local_start 2004-10-31 01:00:00 (Sun)
63248176800, #    local_end 2005-04-03 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63248198400, #    utc_start 2005-04-03 08:00:00 (Sun)
63266338800, #      utc_end 2005-10-30 07:00:00 (Sun)
63248180400, #  local_start 2005-04-03 03:00:00 (Sun)
63266320800, #    local_end 2005-10-30 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63266338800, #    utc_start 2005-10-30 07:00:00 (Sun)
63279648000, #      utc_end 2006-04-02 08:00:00 (Sun)
63266317200, #  local_start 2005-10-30 01:00:00 (Sun)
63279626400, #    local_end 2006-04-02 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63279648000, #    utc_start 2006-04-02 08:00:00 (Sun)
63297788400, #      utc_end 2006-10-29 07:00:00 (Sun)
63279630000, #  local_start 2006-04-02 03:00:00 (Sun)
63297770400, #    local_end 2006-10-29 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63297788400, #    utc_start 2006-10-29 07:00:00 (Sun)
63311097600, #      utc_end 2007-04-01 08:00:00 (Sun)
63297766800, #  local_start 2006-10-29 01:00:00 (Sun)
63311076000, #    local_end 2007-04-01 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63311097600, #    utc_start 2007-04-01 08:00:00 (Sun)
63329238000, #      utc_end 2007-10-28 07:00:00 (Sun)
63311079600, #  local_start 2007-04-01 03:00:00 (Sun)
63329220000, #    local_end 2007-10-28 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63329238000, #    utc_start 2007-10-28 07:00:00 (Sun)
63343152000, #      utc_end 2008-04-06 08:00:00 (Sun)
63329216400, #  local_start 2007-10-28 01:00:00 (Sun)
63343130400, #    local_end 2008-04-06 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63343152000, #    utc_start 2008-04-06 08:00:00 (Sun)
63360687600, #      utc_end 2008-10-26 07:00:00 (Sun)
63343134000, #  local_start 2008-04-06 03:00:00 (Sun)
63360669600, #    local_end 2008-10-26 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63360687600, #    utc_start 2008-10-26 07:00:00 (Sun)
63374601600, #      utc_end 2009-04-05 08:00:00 (Sun)
63360666000, #  local_start 2008-10-26 01:00:00 (Sun)
63374580000, #    local_end 2009-04-05 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63374601600, #    utc_start 2009-04-05 08:00:00 (Sun)
63392137200, #      utc_end 2009-10-25 07:00:00 (Sun)
63374583600, #  local_start 2009-04-05 03:00:00 (Sun)
63392119200, #    local_end 2009-10-25 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63392137200, #    utc_start 2009-10-25 07:00:00 (Sun)
63398008800, #      utc_end 2010-01-01 06:00:00 (Fri)
63392115600, #  local_start 2009-10-25 01:00:00 (Sun)
63397987200, #    local_end 2010-01-01 00:00:00 (Fri)
-21600,
0,
'CST',
    ],
    [
63398008800, #    utc_start 2010-01-01 06:00:00 (Fri)
63404236800, #      utc_end 2010-03-14 08:00:00 (Sun)
63397987200, #  local_start 2010-01-01 00:00:00 (Fri)
63404215200, #    local_end 2010-03-14 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63404236800, #    utc_start 2010-03-14 08:00:00 (Sun)
63424796400, #      utc_end 2010-11-07 07:00:00 (Sun)
63404218800, #  local_start 2010-03-14 03:00:00 (Sun)
63424778400, #    local_end 2010-11-07 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63424796400, #    utc_start 2010-11-07 07:00:00 (Sun)
63435686400, #      utc_end 2011-03-13 08:00:00 (Sun)
63424774800, #  local_start 2010-11-07 01:00:00 (Sun)
63435664800, #    local_end 2011-03-13 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63435686400, #    utc_start 2011-03-13 08:00:00 (Sun)
63456246000, #      utc_end 2011-11-06 07:00:00 (Sun)
63435668400, #  local_start 2011-03-13 03:00:00 (Sun)
63456228000, #    local_end 2011-11-06 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63456246000, #    utc_start 2011-11-06 07:00:00 (Sun)
63467136000, #      utc_end 2012-03-11 08:00:00 (Sun)
63456224400, #  local_start 2011-11-06 01:00:00 (Sun)
63467114400, #    local_end 2012-03-11 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63467136000, #    utc_start 2012-03-11 08:00:00 (Sun)
63487695600, #      utc_end 2012-11-04 07:00:00 (Sun)
63467118000, #  local_start 2012-03-11 03:00:00 (Sun)
63487677600, #    local_end 2012-11-04 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63487695600, #    utc_start 2012-11-04 07:00:00 (Sun)
63498585600, #      utc_end 2013-03-10 08:00:00 (Sun)
63487674000, #  local_start 2012-11-04 01:00:00 (Sun)
63498564000, #    local_end 2013-03-10 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63498585600, #    utc_start 2013-03-10 08:00:00 (Sun)
63519145200, #      utc_end 2013-11-03 07:00:00 (Sun)
63498567600, #  local_start 2013-03-10 03:00:00 (Sun)
63519127200, #    local_end 2013-11-03 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63519145200, #    utc_start 2013-11-03 07:00:00 (Sun)
63530035200, #      utc_end 2014-03-09 08:00:00 (Sun)
63519123600, #  local_start 2013-11-03 01:00:00 (Sun)
63530013600, #    local_end 2014-03-09 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63530035200, #    utc_start 2014-03-09 08:00:00 (Sun)
63550594800, #      utc_end 2014-11-02 07:00:00 (Sun)
63530017200, #  local_start 2014-03-09 03:00:00 (Sun)
63550576800, #    local_end 2014-11-02 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63550594800, #    utc_start 2014-11-02 07:00:00 (Sun)
63561484800, #      utc_end 2015-03-08 08:00:00 (Sun)
63550573200, #  local_start 2014-11-02 01:00:00 (Sun)
63561463200, #    local_end 2015-03-08 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63561484800, #    utc_start 2015-03-08 08:00:00 (Sun)
63582044400, #      utc_end 2015-11-01 07:00:00 (Sun)
63561466800, #  local_start 2015-03-08 03:00:00 (Sun)
63582026400, #    local_end 2015-11-01 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63582044400, #    utc_start 2015-11-01 07:00:00 (Sun)
63593539200, #      utc_end 2016-03-13 08:00:00 (Sun)
63582022800, #  local_start 2015-11-01 01:00:00 (Sun)
63593517600, #    local_end 2016-03-13 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63593539200, #    utc_start 2016-03-13 08:00:00 (Sun)
63614098800, #      utc_end 2016-11-06 07:00:00 (Sun)
63593521200, #  local_start 2016-03-13 03:00:00 (Sun)
63614080800, #    local_end 2016-11-06 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63614098800, #    utc_start 2016-11-06 07:00:00 (Sun)
63624988800, #      utc_end 2017-03-12 08:00:00 (Sun)
63614077200, #  local_start 2016-11-06 01:00:00 (Sun)
63624967200, #    local_end 2017-03-12 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63624988800, #    utc_start 2017-03-12 08:00:00 (Sun)
63645548400, #      utc_end 2017-11-05 07:00:00 (Sun)
63624970800, #  local_start 2017-03-12 03:00:00 (Sun)
63645530400, #    local_end 2017-11-05 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63645548400, #    utc_start 2017-11-05 07:00:00 (Sun)
63656438400, #      utc_end 2018-03-11 08:00:00 (Sun)
63645526800, #  local_start 2017-11-05 01:00:00 (Sun)
63656416800, #    local_end 2018-03-11 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63656438400, #    utc_start 2018-03-11 08:00:00 (Sun)
63676998000, #      utc_end 2018-11-04 07:00:00 (Sun)
63656420400, #  local_start 2018-03-11 03:00:00 (Sun)
63676980000, #    local_end 2018-11-04 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63676998000, #    utc_start 2018-11-04 07:00:00 (Sun)
63687888000, #      utc_end 2019-03-10 08:00:00 (Sun)
63676976400, #  local_start 2018-11-04 01:00:00 (Sun)
63687866400, #    local_end 2019-03-10 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63687888000, #    utc_start 2019-03-10 08:00:00 (Sun)
63708447600, #      utc_end 2019-11-03 07:00:00 (Sun)
63687870000, #  local_start 2019-03-10 03:00:00 (Sun)
63708429600, #    local_end 2019-11-03 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63708447600, #    utc_start 2019-11-03 07:00:00 (Sun)
63719337600, #      utc_end 2020-03-08 08:00:00 (Sun)
63708426000, #  local_start 2019-11-03 01:00:00 (Sun)
63719316000, #    local_end 2020-03-08 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63719337600, #    utc_start 2020-03-08 08:00:00 (Sun)
63739897200, #      utc_end 2020-11-01 07:00:00 (Sun)
63719319600, #  local_start 2020-03-08 03:00:00 (Sun)
63739879200, #    local_end 2020-11-01 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63739897200, #    utc_start 2020-11-01 07:00:00 (Sun)
63751392000, #      utc_end 2021-03-14 08:00:00 (Sun)
63739875600, #  local_start 2020-11-01 01:00:00 (Sun)
63751370400, #    local_end 2021-03-14 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63751392000, #    utc_start 2021-03-14 08:00:00 (Sun)
63771951600, #      utc_end 2021-11-07 07:00:00 (Sun)
63751374000, #  local_start 2021-03-14 03:00:00 (Sun)
63771933600, #    local_end 2021-11-07 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63771951600, #    utc_start 2021-11-07 07:00:00 (Sun)
63782841600, #      utc_end 2022-03-13 08:00:00 (Sun)
63771930000, #  local_start 2021-11-07 01:00:00 (Sun)
63782820000, #    local_end 2022-03-13 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63782841600, #    utc_start 2022-03-13 08:00:00 (Sun)
63803401200, #      utc_end 2022-11-06 07:00:00 (Sun)
63782823600, #  local_start 2022-03-13 03:00:00 (Sun)
63803383200, #    local_end 2022-11-06 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63803401200, #    utc_start 2022-11-06 07:00:00 (Sun)
63814291200, #      utc_end 2023-03-12 08:00:00 (Sun)
63803379600, #  local_start 2022-11-06 01:00:00 (Sun)
63814269600, #    local_end 2023-03-12 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63814291200, #    utc_start 2023-03-12 08:00:00 (Sun)
63834850800, #      utc_end 2023-11-05 07:00:00 (Sun)
63814273200, #  local_start 2023-03-12 03:00:00 (Sun)
63834832800, #    local_end 2023-11-05 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63834850800, #    utc_start 2023-11-05 07:00:00 (Sun)
63845740800, #      utc_end 2024-03-10 08:00:00 (Sun)
63834829200, #  local_start 2023-11-05 01:00:00 (Sun)
63845719200, #    local_end 2024-03-10 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63845740800, #    utc_start 2024-03-10 08:00:00 (Sun)
63866300400, #      utc_end 2024-11-03 07:00:00 (Sun)
63845722800, #  local_start 2024-03-10 03:00:00 (Sun)
63866282400, #    local_end 2024-11-03 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
    [
63866300400, #    utc_start 2024-11-03 07:00:00 (Sun)
63877190400, #      utc_end 2025-03-09 08:00:00 (Sun)
63866278800, #  local_start 2024-11-03 01:00:00 (Sun)
63877168800, #    local_end 2025-03-09 02:00:00 (Sun)
-21600,
0,
'CST',
    ],
    [
63877190400, #    utc_start 2025-03-09 08:00:00 (Sun)
63897750000, #      utc_end 2025-11-02 07:00:00 (Sun)
63877172400, #  local_start 2025-03-09 03:00:00 (Sun)
63897732000, #    local_end 2025-11-02 02:00:00 (Sun)
-18000,
1,
'CDT',
    ],
];

sub olson_version { '2014e' }

sub has_dst_changes { 31 }

sub _max_year { 2024 }

sub _new_instance
{
    return shift->_init( @_, spans => $spans );
}

sub _last_offset { -21600 }

my $last_observance = bless( {
  'format' => 'C%sT',
  'gmtoff' => '-6:00',
  'local_start_datetime' => bless( {
    'formatter' => undef,
    'local_rd_days' => 733773,
    'local_rd_secs' => 0,
    'offset_modifier' => 0,
    'rd_nanosecs' => 0,
    'tz' => bless( {
      'name' => 'floating',
      'offset' => 0
    }, 'DateTime::TimeZone::Floating' ),
    'utc_rd_days' => 733773,
    'utc_rd_secs' => 0,
    'utc_year' => 2011
  }, 'DateTime' ),
  'offset_from_std' => 0,
  'offset_from_utc' => -21600,
  'until' => [],
  'utc_start_datetime' => bless( {
    'formatter' => undef,
    'local_rd_days' => 733773,
    'local_rd_secs' => 21600,
    'offset_modifier' => 0,
    'rd_nanosecs' => 0,
    'tz' => bless( {
      'name' => 'floating',
      'offset' => 0
    }, 'DateTime::TimeZone::Floating' ),
    'utc_rd_days' => 733773,
    'utc_rd_secs' => 21600,
    'utc_year' => 2011
  }, 'DateTime' )
}, 'DateTime::TimeZone::OlsonDB::Observance' )
;
sub _last_observance { $last_observance }

my $rules = [
  bless( {
    'at' => '2:00',
    'from' => '2007',
    'in' => 'Mar',
    'letter' => 'D',
    'name' => 'US',
    'offset_from_std' => 3600,
    'on' => 'Sun>=8',
    'save' => '1:00',
    'to' => 'max',
    'type' => undef
  }, 'DateTime::TimeZone::OlsonDB::Rule' ),
  bless( {
    'at' => '2:00',
    'from' => '2007',
    'in' => 'Nov',
    'letter' => 'S',
    'name' => 'US',
    'offset_from_std' => 0,
    'on' => 'Sun>=1',
    'save' => '0',
    'to' => 'max',
    'type' => undef
  }, 'DateTime::TimeZone::OlsonDB::Rule' )
]
;
sub _rules { $rules }


1;

