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
# This file was generated from the source file bs_BA.xml
# The source file version number was 1.24, generated on
# 2009/05/05 23:06:34.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::bs_BA;

use strict;
use warnings;

our $VERSION = '0.46';

use utf8;

use base 'DateTime::Locale::bs';

sub cldr_version { return "1\.7\.1" }

{
    my $first_day_of_week = "1";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $glibc_date_format = "\%d\.\%m\.\%Y";
    sub glibc_date_format { return $glibc_date_format }
}

{
    my $glibc_datetime_format = "\%a\ \%d\ \%b\ \%Y\ \%T";
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

DateTime::Locale::bs_BA

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'bs_BA' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Bosnian Bosnia and Herzegovina.

=head1 DATA

This locale inherits from the L<DateTime::Locale::bs> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  Ponedjeljak
  Utorak
  Srijeda
  Četvrtak
  Petak
  Subota
  Nedjelja

=head3 Abbreviated (format)

  Pon
  Uto
  Sri
  Čet
  Pet
  Sub
  Ned

=head3 Narrow (format)

  2
  3
  4
  5
  6
  7
  1

=head3 Wide (stand-alone)

  Ponedjeljak
  Utorak
  Srijeda
  Četvrtak
  Petak
  Subota
  Nedjelja

=head3 Abbreviated (stand-alone)

  Pon
  Uto
  Sri
  Čet
  Pet
  Sub
  Ned

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

  Januar
  Februar
  Mart
  April
  Maj
  Juni
  Juli
  Avgust
  Septembar
  Oktobar
  Novembar
  Decembar

=head3 Abbreviated (format)

  Jan
  Feb
  Mar
  Apr
  Maj
  Jun
  Jul
  Avg
  Sep
  Okt
  Nov
  Dec

=head3 Narrow (format)

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

=head3 Wide (stand-alone)

  Januar
  Februar
  Mart
  April
  Maj
  Juni
  Juli
  Avgust
  Septembar
  Oktobar
  Novembar
  Decembar

=head3 Abbreviated (stand-alone)

  Jan
  Feb
  Mar
  Apr
  Maj
  Jun
  Jul
  Avg
  Sep
  Okt
  Nov
  Dec

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

  Prvi kvartal
  Drugi kvartal
  Treći kvartal
  Četvrti kvartal

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

  Prvi kvartal
  Drugi kvartal
  Treći kvartal
  Četvrti kvartal

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

   2008-02-05T18:30:30 = Utorak, 2008 Februar 05
   1995-12-22T09:05:02 = Petak, 1995 Decembar 22
  -0010-09-15T04:44:23 = Subota, -10 Septembar 15

=head3 Long

   2008-02-05T18:30:30 = 2008 Februar 5
   1995-12-22T09:05:02 = 1995 Decembar 22
  -0010-09-15T04:44:23 = -10 Septembar 15

=head3 Medium

   2008-02-05T18:30:30 = 2008 Feb 5
   1995-12-22T09:05:02 = 1995 Dec 22
  -0010-09-15T04:44:23 = -10 Sep 15

=head3 Short

   2008-02-05T18:30:30 = 08/02/05
   1995-12-22T09:05:02 = 95/12/22
  -0010-09-15T04:44:23 = -10/09/15

=head3 Default

   2008-02-05T18:30:30 = 2008 Feb 5
   1995-12-22T09:05:02 = 1995 Dec 22
  -0010-09-15T04:44:23 = -10 Sep 15

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

   2008-02-05T18:30:30 = Utorak, 2008 Februar 05 18:30:30 UTC
   1995-12-22T09:05:02 = Petak, 1995 Decembar 22 09:05:02 UTC
  -0010-09-15T04:44:23 = Subota, -10 Septembar 15 04:44:23 UTC

=head3 Long

   2008-02-05T18:30:30 = 2008 Februar 5 18:30:30 UTC
   1995-12-22T09:05:02 = 1995 Decembar 22 09:05:02 UTC
  -0010-09-15T04:44:23 = -10 Septembar 15 04:44:23 UTC

=head3 Medium

   2008-02-05T18:30:30 = 2008 Feb 5 18:30:30
   1995-12-22T09:05:02 = 1995 Dec 22 09:05:02
  -0010-09-15T04:44:23 = -10 Sep 15 04:44:23

=head3 Short

   2008-02-05T18:30:30 = 08/02/05 18:30
   1995-12-22T09:05:02 = 95/12/22 09:05
  -0010-09-15T04:44:23 = -10/09/15 04:44

=head3 Default

   2008-02-05T18:30:30 = 2008 Feb 5 18:30:30
   1995-12-22T09:05:02 = 1995 Dec 22 09:05:02
  -0010-09-15T04:44:23 = -10 Sep 15 04:44:23

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 Uto
   1995-12-22T09:05:02 = 22 Pet
  -0010-09-15T04:44:23 = 15 Sub

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

   2008-02-05T18:30:30 = Uto, 2-5
   1995-12-22T09:05:02 = Pet, 12-22
  -0010-09-15T04:44:23 = Sub, 9-15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = Feb
   1995-12-22T09:05:02 = Dec
  -0010-09-15T04:44:23 = Sep

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = Feb 5
   1995-12-22T09:05:02 = Dec 22
  -0010-09-15T04:44:23 = Sep 15

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = Uto Feb 5
   1995-12-22T09:05:02 = Pet Dec 22
  -0010-09-15T04:44:23 = Sub Sep 15

=head3 MMMMd (MMMM d)

   2008-02-05T18:30:30 = Februar 5
   1995-12-22T09:05:02 = Decembar 22
  -0010-09-15T04:44:23 = Septembar 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = Uto Februar 5
   1995-12-22T09:05:02 = Pet Decembar 22
  -0010-09-15T04:44:23 = Sub Septembar 15

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

   2008-02-05T18:30:30 = Uto, 2008-2-5
   1995-12-22T09:05:02 = Pet, 1995-12-22
  -0010-09-15T04:44:23 = Sub, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 Feb
   1995-12-22T09:05:02 = 1995 Dec
  -0010-09-15T04:44:23 = -10 Sep

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = Uto, 2008 Feb 5
   1995-12-22T09:05:02 = Pet, 1995 Dec 22
  -0010-09-15T04:44:23 = Sub, -10 Sep 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 Februar
   1995-12-22T09:05:02 = 1995 Decembar
  -0010-09-15T04:44:23 = -10 Septembar

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

Ponedjeljak


=head1 SUPPORT

See L<DateTime::Locale>.

=cut
