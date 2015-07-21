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
# This file was generated from the source file ts_ZA.xml
# The source file version number was 1.15, generated on
# 2009/05/05 23:06:41.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::ts_ZA;

use strict;
use warnings;

our $VERSION = '0.46';

use utf8;

use base 'DateTime::Locale::ts';

sub cldr_version { return "1\.7\.1" }

{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $glibc_date_format = "\%d\/\%m\/\%Y";
    sub glibc_date_format { return $glibc_date_format }
}

{
    my $glibc_date_1_format = "\%a\ \%b\ \%\-e\ \%H\:\%M\:\%S\ \%Z\ \%Y";
    sub glibc_date_1_format { return $glibc_date_1_format }
}

{
    my $glibc_datetime_format = "\%a\ \%\-e\ \%b\ \%Y\ \%T\ \%Z";
    sub glibc_datetime_format { return $glibc_datetime_format }
}

{
    my $glibc_time_format = "\%T";
    sub glibc_time_format { return $glibc_time_format }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::ts_ZA

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'ts_ZA' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Tsonga South Africa.

=head1 DATA

This locale inherits from the L<DateTime::Locale::ts> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  Musumbhunuku
  Ravumbirhi
  Ravunharhu
  Ravumune
  Ravuntlhanu
  Mugqivela
  Sonto

=head3 Abbreviated (format)

  Mus
  Bir
  Har
  Ne
  Tlh
  Mug
  Son

=head3 Narrow (format)

  Mus
  Bir
  Har
  Ne
  Tlh
  Mug
  Son

=head3 Wide (stand-alone)

  Musumbhunuku
  Ravumbirhi
  Ravunharhu
  Ravumune
  Ravuntlhanu
  Mugqivela
  Sonto

=head3 Abbreviated (stand-alone)

  Mus
  Bir
  Har
  Ne
  Tlh
  Mug
  Son

=head3 Narrow (stand-alone)

  2
  3
  4
  5
  6
  7
  1

=head2 Months

=head3 Wide (format)

  Sunguti
  Nyenyenyani
  Nyenyankulu
  Dzivamisoko
  Mudyaxihi
  Khotavuxika
  Mawuwani
  Mhawuri
  Ndzhati
  Nhlangula
  Hukuri
  N'wendzamhala

=head3 Abbreviated (format)

  Sun
  Yan
  Kul
  Dzi
  Mud
  Kho
  Maw
  Mha
  Ndz
  Nhl
  Huk
  N'w

=head3 Narrow (format)

  Sun
  Yan
  Kul
  Dzi
  Mud
  Kho
  Maw
  Mha
  Ndz
  Nhl
  Huk
  N'w

=head3 Wide (stand-alone)

  Sunguti
  Nyenyenyani
  Nyenyankulu
  Dzivamisoko
  Mudyaxihi
  Khotavuxika
  Mawuwani
  Mhawuri
  Ndzhati
  Nhlangula
  Hukuri
  N'wendzamhala

=head3 Abbreviated (stand-alone)

  Sun
  Yan
  Kul
  Dzi
  Mud
  Kho
  Maw
  Mha
  Ndz
  Nhl
  Huk
  N'w

=head3 Narrow (stand-alone)

  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12

=head2 Quarters

=head3 Wide (format)

  Kotara yo sungula
  Kotara ya vumbirhi
  Kotara ya vunharhu
  Kotara ya vumune

=head3 Abbreviated (format)

  K1
  K2
  K3
  K4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  Kotara yo sungula
  Kotara ya vumbirhi
  Kotara ya vunharhu
  Kotara ya vumune

=head3 Abbreviated (stand-alone)

  K1
  K2
  K3
  K4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  BCE
  CE

=head3 Abbreviated

  BC
  AD

=head3 Narrow

  BC
  AD

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = Ravumbirhi, 2008 Nyenyenyani 05
   1995-12-22T09:05:02 = Ravuntlhanu, 1995 N'wendzamhala 22
  -0010-09-15T04:44:23 = Mugqivela, -10 Ndzhati 15

=head3 Long

   2008-02-05T18:30:30 = 2008 Nyenyenyani 5
   1995-12-22T09:05:02 = 1995 N'wendzamhala 22
  -0010-09-15T04:44:23 = -10 Ndzhati 15

=head3 Medium

   2008-02-05T18:30:30 = 2008 Yan 5
   1995-12-22T09:05:02 = 1995 N'w 22
  -0010-09-15T04:44:23 = -10 Ndz 15

=head3 Short

   2008-02-05T18:30:30 = 2008-02-05
   1995-12-22T09:05:02 = 1995-12-22
  -0010-09-15T04:44:23 = -010-09-15

=head3 Default

   2008-02-05T18:30:30 = 2008 Yan 5
   1995-12-22T09:05:02 = 1995 N'w 22
  -0010-09-15T04:44:23 = -10 Ndz 15

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

   2008-02-05T18:30:30 = Ravumbirhi, 2008 Nyenyenyani 05 18:30:30 UTC
   1995-12-22T09:05:02 = Ravuntlhanu, 1995 N'wendzamhala 22 09:05:02 UTC
  -0010-09-15T04:44:23 = Mugqivela, -10 Ndzhati 15 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 2008 Nyenyenyani 5 18:30:30 UTC
   1995-12-22T09:05:02 = 1995 N'wendzamhala 22 09:05:02 UTC
  -0010-09-15T04:44:23 = -10 Ndzhati 15 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 2008 Yan 5 18:30:30
   1995-12-22T09:05:02 = 1995 N'w 22 09:05:02
  -0010-09-15T04:44:23 = -10 Ndz 15 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 2008-02-05 18:30
   1995-12-22T09:05:02 = 1995-12-22 09:05
  -0010-09-15T04:44:23 = -010-09-15 04:44

=head3 Default

   2008-02-05T18:30:30 = 2008 Yan 5 18:30:30
   1995-12-22T09:05:02 = 1995 N'w 22 09:05:02
  -0010-09-15T04:44:23 = -10 Ndz 15 04:44:23

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 Bir
   1995-12-22T09:05:02 = 22 Tlh
  -0010-09-15T04:44:23 = 15 Mug

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

   2008-02-05T18:30:30 = Bir, 2-5
   1995-12-22T09:05:02 = Tlh, 12-22
  -0010-09-15T04:44:23 = Mug, 9-15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = Yan
   1995-12-22T09:05:02 = N'w
  -0010-09-15T04:44:23 = Ndz

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = Yan 5
   1995-12-22T09:05:02 = N'w 22
  -0010-09-15T04:44:23 = Ndz 15

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = Bir Yan 5
   1995-12-22T09:05:02 = Tlh N'w 22
  -0010-09-15T04:44:23 = Mug Ndz 15

=head3 MMMMd (MMMM d)

   2008-02-05T18:30:30 = Nyenyenyani 5
   1995-12-22T09:05:02 = N'wendzamhala 22
  -0010-09-15T04:44:23 = Ndzhati 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = Bir Nyenyenyani 5
   1995-12-22T09:05:02 = Tlh N'wendzamhala 22
  -0010-09-15T04:44:23 = Mug Ndzhati 15

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

   2008-02-05T18:30:30 = Bir, 2008-2-5
   1995-12-22T09:05:02 = Tlh, 1995-12-22
  -0010-09-15T04:44:23 = Mug, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 Yan
   1995-12-22T09:05:02 = 1995 N'w
  -0010-09-15T04:44:23 = -10 Ndz

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = Bir, 2008 Yan 5
   1995-12-22T09:05:02 = Tlh, 1995 N'w 22
  -0010-09-15T04:44:23 = Mug, -10 Ndz 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 Nyenyenyani
   1995-12-22T09:05:02 = 1995 N'wendzamhala
  -0010-09-15T04:44:23 = -10 Ndzhati

=head3 yQ (y Q)

   2008-02-05T18:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -10 3

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 K1
   1995-12-22T09:05:02 = 1995 K4
  -0010-09-15T04:44:23 = -10 K3

=head3 yyQ (Q yy)

   2008-02-05T18:30:30 = 1 08
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 -10

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

Musumbhunuku


=head1 SUPPORT

See L<DateTime::Locale>.

=cut
