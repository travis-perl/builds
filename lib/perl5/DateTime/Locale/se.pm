###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# This file was generated from the source file se.xml
# The source file version number was 1.36, generated on
# 2009/06/15 03:46:25.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::se;

use strict;
use warnings;

our $VERSION = '0.46';

use utf8;

use base 'DateTime::Locale::root';

sub cldr_version { return "1\.7\.1" }

{
    my $am_pm_abbreviated = [ "AM", "PM" ];
    sub am_pm_abbreviated { return $am_pm_abbreviated }
}
{
    my $date_format_full = "EEEE\,\ y\ MMMM\ dd";
    sub date_format_full { return $date_format_full }
}

{
    my $date_format_long = "y\ MMMM\ d";
    sub date_format_long { return $date_format_long }
}

{
    my $date_format_medium = "y\ MMM\ d";
    sub date_format_medium { return $date_format_medium }
}

{
    my $date_format_short = "yy\/MM\/dd";
    sub date_format_short { return $date_format_short }
}

{
    my $day_format_abbreviated = [ "vuos", "maŋ", "gask", "duor", "bear", "láv", "sotn" ];
    sub day_format_abbreviated { return $day_format_abbreviated }
}

sub day_format_narrow { $_[0]->day_stand_alone_narrow() }

{
    my $day_format_wide = [ "vuossárga", "maŋŋebárga", "gaskavahkku", "duorasdat", "bearjadat", "lávvardat", "sotnabeaivi" ];
    sub day_format_wide { return $day_format_wide }
}

sub day_stand_alone_abbreviated { $_[0]->day_format_abbreviated() }

{
    my $day_stand_alone_narrow = [ "v", "m", "g", "d", "b", "L", "s" ];
    sub day_stand_alone_narrow { return $day_stand_alone_narrow }
}

sub day_stand_alone_wide { $_[0]->day_format_wide() }

{
    my $era_abbreviated = [ "o\.Kr\.", "m\.Kr\." ];
    sub era_abbreviated { return $era_abbreviated }
}
{
    my $era_narrow = [ "o\.Kr\.", "m\.Kr\." ];
    sub era_narrow { return $era_narrow }
}
{
    my $era_wide = [ "ovdal\ Kristtusa", "maŋŋel\ Kristtusa" ];
    sub era_wide { return $era_wide }
}
{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $month_format_abbreviated = [ "ođđj", "guov", "njuk", "cuo", "mies", "geas", "suoi", "borg", "čakč", "golg", "skáb", "juov" ];
    sub month_format_abbreviated { return $month_format_abbreviated }
}

sub month_format_narrow { $_[0]->month_stand_alone_narrow() }

{
    my $month_format_wide = [ "ođđajagemánnu", "guovvamánnu", "njukčamánnu", "cuoŋománnu", "miessemánnu", "geassemánnu", "suoidnemánnu", "borgemánnu", "čakčamánnu", "golggotmánnu", "skábmamánnu", "juovlamánnu" ];
    sub month_format_wide { return $month_format_wide }
}

sub month_stand_alone_abbreviated { $_[0]->month_format_abbreviated() }

{
    my $month_stand_alone_narrow = [ "O", "G", "N", "C", "M", "G", "S", "B", "Č", "G", "S", "J" ];
    sub month_stand_alone_narrow { return $month_stand_alone_narrow }
}

sub month_stand_alone_wide { $_[0]->month_format_wide() }

{
    my $quarter_format_abbreviated = [ "Q1", "K2", "Q3", "Q4" ];
    sub quarter_format_abbreviated { return $quarter_format_abbreviated }
}
{
    my $quarter_format_wide = [ "Q1", "Q2", "Q3", "Q4" ];
    sub quarter_format_wide { return $quarter_format_wide }
}

sub quarter_stand_alone_abbreviated { $_[0]->quarter_format_abbreviated() }


sub quarter_stand_alone_wide { $_[0]->quarter_format_wide() }

{
    my $time_format_full = "HH\:mm\:ss\ zzzz";
    sub time_format_full { return $time_format_full }
}

{
    my $time_format_long = "HH\:mm\:ss\ z";
    sub time_format_long { return $time_format_long }
}

{
    my $time_format_medium = "HH\:mm\:ss";
    sub time_format_medium { return $time_format_medium }
}

{
    my $time_format_short = "HH\:mm";
    sub time_format_short { return $time_format_short }
}

{
    my $_format_for_yyQ = "Q\ yy";
    sub _format_for_yyQ { return $_format_for_yyQ }
}

{
    my $_available_formats =
        {
          "yyQ" => "Q\ yy"
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::se

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'se' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Northern Sami.

=head1 DATA

This locale inherits from the L<DateTime::Locale::root> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  vuossárga
  maŋŋebárga
  gaskavahkku
  duorasdat
  bearjadat
  lávvardat
  sotnabeaivi

=head3 Abbreviated (format)

  vuos
  maŋ
  gask
  duor
  bear
  láv
  sotn

=head3 Narrow (format)

  v
  m
  g
  d
  b
  L
  s

=head3 Wide (stand-alone)

  vuossárga
  maŋŋebárga
  gaskavahkku
  duorasdat
  bearjadat
  lávvardat
  sotnabeaivi

=head3 Abbreviated (stand-alone)

  vuos
  maŋ
  gask
  duor
  bear
  láv
  sotn

=head3 Narrow (stand-alone)

  v
  m
  g
  d
  b
  L
  s

=head2 Months

=head3 Wide (format)

  ođđajagemánnu
  guovvamánnu
  njukčamánnu
  cuoŋománnu
  miessemánnu
  geassemánnu
  suoidnemánnu
  borgemánnu
  čakčamánnu
  golggotmánnu
  skábmamánnu
  juovlamánnu

=head3 Abbreviated (format)

  ođđj
  guov
  njuk
  cuo
  mies
  geas
  suoi
  borg
  čakč
  golg
  skáb
  juov

=head3 Narrow (format)

  O
  G
  N
  C
  M
  G
  S
  B
  Č
  G
  S
  J

=head3 Wide (stand-alone)

  ođđajagemánnu
  guovvamánnu
  njukčamánnu
  cuoŋománnu
  miessemánnu
  geassemánnu
  suoidnemánnu
  borgemánnu
  čakčamánnu
  golggotmánnu
  skábmamánnu
  juovlamánnu

=head3 Abbreviated (stand-alone)

  ođđj
  guov
  njuk
  cuo
  mies
  geas
  suoi
  borg
  čakč
  golg
  skáb
  juov

=head3 Narrow (stand-alone)

  O
  G
  N
  C
  M
  G
  S
  B
  Č
  G
  S
  J

=head2 Quarters

=head3 Wide (format)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (format)

  Q1
  K2
  Q3
  Q4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (stand-alone)

  Q1
  K2
  Q3
  Q4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  ovdal Kristtusa
  maŋŋel Kristtusa

=head3 Abbreviated

  o.Kr.
  m.Kr.

=head3 Narrow

  o.Kr.
  m.Kr.

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = maŋŋebárga, 2008 guovvamánnu 05
   1995-12-22T09:05:02 = bearjadat, 1995 juovlamánnu 22
  -0010-09-15T04:44:23 = lávvardat, -10 čakčamánnu 15

=head3 Long

   2008-02-05T18:30:30 = 2008 guovvamánnu 5
   1995-12-22T09:05:02 = 1995 juovlamánnu 22
  -0010-09-15T04:44:23 = -10 čakčamánnu 15

=head3 Medium

   2008-02-05T18:30:30 = 2008 guov 5
   1995-12-22T09:05:02 = 1995 juov 22
  -0010-09-15T04:44:23 = -10 čakč 15

=head3 Short

   2008-02-05T18:30:30 = 08/02/05
   1995-12-22T09:05:02 = 95/12/22
  -0010-09-15T04:44:23 = -10/09/15

=head3 Default

   2008-02-05T18:30:30 = 2008 guov 5
   1995-12-22T09:05:02 = 1995 juov 22
  -0010-09-15T04:44:23 = -10 čakč 15

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = 18:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 18:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 Default

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = maŋŋebárga, 2008 guovvamánnu 05 18:30:30 UTC
   1995-12-22T09:05:02 = bearjadat, 1995 juovlamánnu 22 09:05:02 UTC
  -0010-09-15T04:44:23 = lávvardat, -10 čakčamánnu 15 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 2008 guovvamánnu 5 18:30:30 UTC
   1995-12-22T09:05:02 = 1995 juovlamánnu 22 09:05:02 UTC
  -0010-09-15T04:44:23 = -10 čakčamánnu 15 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 2008 guov 5 18:30:30
   1995-12-22T09:05:02 = 1995 juov 22 09:05:02
  -0010-09-15T04:44:23 = -10 čakč 15 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 08/02/05 18:30
   1995-12-22T09:05:02 = 95/12/22 09:05
  -0010-09-15T04:44:23 = -10/09/15 04:44

=head3 Default

   2008-02-05T18:30:30 = 2008 guov 5 18:30:30
   1995-12-22T09:05:02 = 1995 juov 22 09:05:02
  -0010-09-15T04:44:23 = -10 čakč 15 04:44:23

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 maŋ
   1995-12-22T09:05:02 = 22 bear
  -0010-09-15T04:44:23 = 15 láv

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 PM
   1995-12-22T09:05:02 = 9:05 AM
  -0010-09-15T04:44:23 = 4:44 AM

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 PM
   1995-12-22T09:05:02 = 9:05:02 AM
  -0010-09-15T04:44:23 = 4:44:23 AM

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 Md (M-d)

   2008-02-05T18:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 MEd (E, M-d)

   2008-02-05T18:30:30 = maŋ, 2-5
   1995-12-22T09:05:02 = bear, 12-22
  -0010-09-15T04:44:23 = láv, 9-15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = guov
   1995-12-22T09:05:02 = juov
  -0010-09-15T04:44:23 = čakč

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = guov 5
   1995-12-22T09:05:02 = juov 22
  -0010-09-15T04:44:23 = čakč 15

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = maŋ guov 5
   1995-12-22T09:05:02 = bear juov 22
  -0010-09-15T04:44:23 = láv čakč 15

=head3 MMMMd (MMMM d)

   2008-02-05T18:30:30 = guovvamánnu 5
   1995-12-22T09:05:02 = juovlamánnu 22
  -0010-09-15T04:44:23 = čakčamánnu 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = maŋ guovvamánnu 5
   1995-12-22T09:05:02 = bear juovlamánnu 22
  -0010-09-15T04:44:23 = láv čakčamánnu 15

=head3 ms (mm:ss)

   2008-02-05T18:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (y)

   2008-02-05T18:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -10

=head3 yM (y-M)

   2008-02-05T18:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -10-9

=head3 yMEd (EEE, y-M-d)

   2008-02-05T18:30:30 = maŋ, 2008-2-5
   1995-12-22T09:05:02 = bear, 1995-12-22
  -0010-09-15T04:44:23 = láv, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 guov
   1995-12-22T09:05:02 = 1995 juov
  -0010-09-15T04:44:23 = -10 čakč

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = maŋ, 2008 guov 5
   1995-12-22T09:05:02 = bear, 1995 juov 22
  -0010-09-15T04:44:23 = láv, -10 čakč 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 guovvamánnu
   1995-12-22T09:05:02 = 1995 juovlamánnu
  -0010-09-15T04:44:23 = -10 čakčamánnu

=head3 yQ (y Q)

   2008-02-05T18:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -10 3

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 Q1
   1995-12-22T09:05:02 = 1995 Q4
  -0010-09-15T04:44:23 = -10 Q3

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

vuossárga


=head1 SUPPORT

See L<DateTime::Locale>.

=cut
