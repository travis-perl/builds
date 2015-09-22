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
# This file was generated from the source file zu_ZA.xml
# The source file version number was 1.15, generated on
# 2009/05/05 23:06:42.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::zu_ZA;

use strict;
use warnings;

our $VERSION = '0.46';

use utf8;

use base 'DateTime::Locale::zu';

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
    my $glibc_date_1_format = "\%a\ \%b\ \%e\ \%H\:\%M\:\%S\ \%Z\ \%Y";
    sub glibc_date_1_format { return $glibc_date_1_format }
}

{
    my $glibc_datetime_format = "\%a\ \%d\ \%b\ \%Y\ \%T\ \%Z";
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

DateTime::Locale::zu_ZA

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'zu_ZA' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Zulu South Africa.

=head1 DATA

This locale inherits from the L<DateTime::Locale::zu> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  Msombuluko
  Lwesibili
  Lwesithathu
  uLwesine
  Lwesihlanu
  Mgqibelo
  Sonto

=head3 Abbreviated (format)

  Mso
  Bil
  Tha
  Sin
  Hla
  Mgq
  Son

=head3 Narrow (format)

  M
  B
  T
  S
  H
  M
  S

=head3 Wide (stand-alone)

  Msombuluko
  Lwesibili
  Lwesithathu
  uLwesine
  Lwesihlanu
  Mgqibelo
  Sonto

=head3 Abbreviated (stand-alone)

  Mso
  Bil
  Tha
  Sin
  Hla
  Mgq
  Son

=head3 Narrow (stand-alone)

  M
  B
  T
  S
  H
  M
  S

=head2 Months

=head3 Wide (format)

  Januwari
  Februwari
  Mashi
  Apreli
  Meyi
  Juni
  Julayi
  Agasti
  Septhemba
  Okthoba
  Novemba
  Disemba

=head3 Abbreviated (format)

  Jan
  Feb
  Mas
  Apr
  Mey
  Jun
  Jul
  Aga
  Sep
  Okt
  Nov
  Dis

=head3 Narrow (format)

  J
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head3 Wide (stand-alone)

  uJanuwari
  uFebruwari
  uMashi
  u-Apreli
  uMeyi
  uJuni
  uJulayi
  uAgasti
  uSepthemba
  u-Okthoba
  uNovemba
  uDisemba

=head3 Abbreviated (stand-alone)

  Jan
  Feb
  Mas
  Apr
  Mey
  Jun
  Jul
  Aga
  Sep
  Okt
  Nov
  Dis

=head3 Narrow (stand-alone)

  J
  F
  M
  A
  M
  J
  J
  A
  S
  O
  N
  D

=head2 Quarters

=head3 Wide (format)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (format)

  Q1
  Q2
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
  Q2
  Q3
  Q4

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

   2008-02-05T18:30:30 = Lwesibili 05 Februwari 2008
   1995-12-22T09:05:02 = Lwesihlanu 22 Disemba 1995
  -0010-09-15T04:44:23 = Mgqibelo 15 Septhemba -10

=head3 Long

   2008-02-05T18:30:30 = 5 Februwari 2008
   1995-12-22T09:05:02 = 22 Disemba 1995
  -0010-09-15T04:44:23 = 15 Septhemba -10

=head3 Medium

   2008-02-05T18:30:30 = 5 Feb 2008
   1995-12-22T09:05:02 = 22 Dis 1995
  -0010-09-15T04:44:23 = 15 Sep -10

=head3 Short

   2008-02-05T18:30:30 = 2008-02-05
   1995-12-22T09:05:02 = 1995-12-22
  -0010-09-15T04:44:23 = -010-09-15

=head3 Default

   2008-02-05T18:30:30 = 5 Feb 2008
   1995-12-22T09:05:02 = 22 Dis 1995
  -0010-09-15T04:44:23 = 15 Sep -10

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = 6:30:30 PM UTC
   1995-12-22T09:05:02 = 9:05:02 AM UTC
  -0010-09-15T04:44:23 = 4:44:23 AM UTC

=head3 Long

   2008-02-05T18:30:30 = 6:30:30 PM UTC
   1995-12-22T09:05:02 = 9:05:02 AM UTC
  -0010-09-15T04:44:23 = 4:44:23 AM UTC

=head3 Medium

   2008-02-05T18:30:30 = 6:30:30 PM
   1995-12-22T09:05:02 = 9:05:02 AM
  -0010-09-15T04:44:23 = 4:44:23 AM

=head3 Short

   2008-02-05T18:30:30 = 6:30 PM
   1995-12-22T09:05:02 = 9:05 AM
  -0010-09-15T04:44:23 = 4:44 AM

=head3 Default

   2008-02-05T18:30:30 = 6:30:30 PM
   1995-12-22T09:05:02 = 9:05:02 AM
  -0010-09-15T04:44:23 = 4:44:23 AM

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = Lwesibili 05 Februwari 2008 6:30:30 PM UTC
   1995-12-22T09:05:02 = Lwesihlanu 22 Disemba 1995 9:05:02 AM UTC
  -0010-09-15T04:44:23 = Mgqibelo 15 Septhemba -10 4:44:23 AM UTC

=head3 Long

   2008-02-05T18:30:30 = 5 Februwari 2008 6:30:30 PM UTC
   1995-12-22T09:05:02 = 22 Disemba 1995 9:05:02 AM UTC
  -0010-09-15T04:44:23 = 15 Septhemba -10 4:44:23 AM UTC

=head3 Medium

   2008-02-05T18:30:30 = 5 Feb 2008 6:30:30 PM
   1995-12-22T09:05:02 = 22 Dis 1995 9:05:02 AM
  -0010-09-15T04:44:23 = 15 Sep -10 4:44:23 AM

=head3 Short

   2008-02-05T18:30:30 = 2008-02-05 6:30 PM
   1995-12-22T09:05:02 = 1995-12-22 9:05 AM
  -0010-09-15T04:44:23 = -010-09-15 4:44 AM

=head3 Default

   2008-02-05T18:30:30 = 5 Feb 2008 6:30:30 PM
   1995-12-22T09:05:02 = 22 Dis 1995 9:05:02 AM
  -0010-09-15T04:44:23 = 15 Sep -10 4:44:23 AM

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 Bil
   1995-12-22T09:05:02 = 22 Hla
  -0010-09-15T04:44:23 = 15 Mgq

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

   2008-02-05T18:30:30 = Bil, 2-5
   1995-12-22T09:05:02 = Hla, 12-22
  -0010-09-15T04:44:23 = Mgq, 9-15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = Feb
   1995-12-22T09:05:02 = Dis
  -0010-09-15T04:44:23 = Sep

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = Feb 5
   1995-12-22T09:05:02 = Dis 22
  -0010-09-15T04:44:23 = Sep 15

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = Bil Feb 5
   1995-12-22T09:05:02 = Hla Dis 22
  -0010-09-15T04:44:23 = Mgq Sep 15

=head3 MMMMd (MMMM d)

   2008-02-05T18:30:30 = Februwari 5
   1995-12-22T09:05:02 = Disemba 22
  -0010-09-15T04:44:23 = Septhemba 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = Bil Februwari 5
   1995-12-22T09:05:02 = Hla Disemba 22
  -0010-09-15T04:44:23 = Mgq Septhemba 15

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

   2008-02-05T18:30:30 = Bil, 2008-2-5
   1995-12-22T09:05:02 = Hla, 1995-12-22
  -0010-09-15T04:44:23 = Mgq, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 Feb
   1995-12-22T09:05:02 = 1995 Dis
  -0010-09-15T04:44:23 = -10 Sep

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = Bil, 2008 Feb 5
   1995-12-22T09:05:02 = Hla, 1995 Dis 22
  -0010-09-15T04:44:23 = Mgq, -10 Sep 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 Februwari
   1995-12-22T09:05:02 = 1995 Disemba
  -0010-09-15T04:44:23 = -10 Septhemba

=head3 yQ (y Q)

   2008-02-05T18:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -10 3

=head3 yQQQ (y QQQ)

   2008-02-05T18:30:30 = 2008 Q1
   1995-12-22T09:05:02 = 1995 Q4
  -0010-09-15T04:44:23 = -10 Q3

=head2 Miscellaneous

=head3 Prefers 24 hour time?

No

=head3 Local first day of the week

Msombuluko


=head1 SUPPORT

See L<DateTime::Locale>.

=cut
