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
# This file was generated from the source file aa_DJ.xml
# The source file version number was 1.41, generated on
# 2009/05/05 23:06:33.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::aa_DJ;

use strict;
use warnings;

our $VERSION = '0.46';

use utf8;

use base 'DateTime::Locale::aa';

sub cldr_version { return "1\.7\.1" }

{
    my $first_day_of_week = "6";
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $glibc_date_format = "\%d\.\%m\.\%Y";
    sub glibc_date_format { return $glibc_date_format }
}

{
    my $glibc_date_1_format = "\%a\ \%b\ \%e\ \%r\ \%Z\ \%Y";
    sub glibc_date_1_format { return $glibc_date_1_format }
}

{
    my $glibc_datetime_format = "\%a\ \%d\ \%b\ \%Y\ \%r\ \%Z";
    sub glibc_datetime_format { return $glibc_datetime_format }
}

{
    my $glibc_time_format = "\%l\:\%M\:\%S";
    sub glibc_time_format { return $glibc_time_format }
}

{
    my $glibc_time_12_format = "\%X\ \%p";
    sub glibc_time_12_format { return $glibc_time_12_format }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::aa_DJ

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'aa_DJ' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Afar Djibouti.

=head1 DATA

This locale inherits from the L<DateTime::Locale::aa> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  Etleeni
  Talaata
  Arbaqa
  Kamiisi
  Gumqata
  Sabti
  Acaada

=head3 Abbreviated (format)

  Etl
  Tal
  Arb
  Kam
  Gum
  Sab
  Aca

=head3 Narrow (format)

  E
  T
  A
  K
  G
  S
  A

=head3 Wide (stand-alone)

  Etleeni
  Talaata
  Arbaqa
  Kamiisi
  Gumqata
  Sabti
  Acaada

=head3 Abbreviated (stand-alone)

  Etl
  Tal
  Arb
  Kam
  Gum
  Sab
  Aca

=head3 Narrow (stand-alone)

  E
  T
  A
  K
  G
  S
  A

=head2 Months

=head3 Wide (format)

  Qunxa Garablu
  Kudo
  Ciggilta Kudo
  Agda Baxis
  Caxah Alsa
  Qasa Dirri
  Qado Dirri
  Liiqen
  Waysu
  Diteli
  Ximoli
  Kaxxa Garablu

=head3 Abbreviated (format)

  Qun
  Nah
  Cig
  Agd
  Cax
  Qas
  Qad
  Leq
  Way
  Dit
  Xim
  Kax

=head3 Narrow (format)

  Q
  N
  C
  A
  C
  Q
  Q
  L
  W
  D
  X
  K

=head3 Wide (stand-alone)

  Qunxa Garablu
  Kudo
  Ciggilta Kudo
  Agda Baxis
  Caxah Alsa
  Qasa Dirri
  Qado Dirri
  Liiqen
  Waysu
  Diteli
  Ximoli
  Kaxxa Garablu

=head3 Abbreviated (stand-alone)

  Qun
  Nah
  Cig
  Agd
  Cax
  Qas
  Qad
  Leq
  Way
  Dit
  Xim
  Kax

=head3 Narrow (stand-alone)

  Q
  N
  C
  A
  C
  Q
  Q
  L
  W
  D
  X
  K

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

  Yaasuusuk Duma
  Yaasuusuk Wadir

=head3 Narrow

  Yaasuusuk Duma
  Yaasuusuk Wadir

=head2 Date Formats

=head3 Full

   2008-02-05T18:30:30 = Talaata, Kudo 05, 2008
   1995-12-22T09:05:02 = Gumqata, Kaxxa Garablu 22, 1995
  -0010-09-15T04:44:23 = Sabti, Waysu 15, -10

=head3 Long

   2008-02-05T18:30:30 = 05 Kudo 2008
   1995-12-22T09:05:02 = 22 Kaxxa Garablu 1995
  -0010-09-15T04:44:23 = 15 Waysu -10

=head3 Medium

   2008-02-05T18:30:30 = 05-Nah-2008
   1995-12-22T09:05:02 = 22-Kax-1995
  -0010-09-15T04:44:23 = 15-Way--10

=head3 Short

   2008-02-05T18:30:30 = 05/02/08
   1995-12-22T09:05:02 = 22/12/95
  -0010-09-15T04:44:23 = 15/09/-10

=head3 Default

   2008-02-05T18:30:30 = 05-Nah-2008
   1995-12-22T09:05:02 = 22-Kax-1995
  -0010-09-15T04:44:23 = 15-Way--10

=head2 Time Formats

=head3 Full

   2008-02-05T18:30:30 = 6:30:30 carra UTC
   1995-12-22T09:05:02 = 9:05:02 saaku UTC
  -0010-09-15T04:44:23 = 4:44:23 saaku UTC

=head3 Long

   2008-02-05T18:30:30 = 6:30:30 carra UTC
   1995-12-22T09:05:02 = 9:05:02 saaku UTC
  -0010-09-15T04:44:23 = 4:44:23 saaku UTC

=head3 Medium

   2008-02-05T18:30:30 = 6:30:30 carra
   1995-12-22T09:05:02 = 9:05:02 saaku
  -0010-09-15T04:44:23 = 4:44:23 saaku

=head3 Short

   2008-02-05T18:30:30 = 6:30 carra
   1995-12-22T09:05:02 = 9:05 saaku
  -0010-09-15T04:44:23 = 4:44 saaku

=head3 Default

   2008-02-05T18:30:30 = 6:30:30 carra
   1995-12-22T09:05:02 = 9:05:02 saaku
  -0010-09-15T04:44:23 = 4:44:23 saaku

=head2 Datetime Formats

=head3 Full

   2008-02-05T18:30:30 = Talaata, Kudo 05, 2008 6:30:30 carra UTC
   1995-12-22T09:05:02 = Gumqata, Kaxxa Garablu 22, 1995 9:05:02 saaku UTC
  -0010-09-15T04:44:23 = Sabti, Waysu 15, -10 4:44:23 saaku UTC

=head3 Long

   2008-02-05T18:30:30 = 05 Kudo 2008 6:30:30 carra UTC
   1995-12-22T09:05:02 = 22 Kaxxa Garablu 1995 9:05:02 saaku UTC
  -0010-09-15T04:44:23 = 15 Waysu -10 4:44:23 saaku UTC

=head3 Medium

   2008-02-05T18:30:30 = 05-Nah-2008 6:30:30 carra
   1995-12-22T09:05:02 = 22-Kax-1995 9:05:02 saaku
  -0010-09-15T04:44:23 = 15-Way--10 4:44:23 saaku

=head3 Short

   2008-02-05T18:30:30 = 05/02/08 6:30 carra
   1995-12-22T09:05:02 = 22/12/95 9:05 saaku
  -0010-09-15T04:44:23 = 15/09/-10 4:44 saaku

=head3 Default

   2008-02-05T18:30:30 = 05-Nah-2008 6:30:30 carra
   1995-12-22T09:05:02 = 22-Kax-1995 9:05:02 saaku
  -0010-09-15T04:44:23 = 15-Way--10 4:44:23 saaku

=head2 Available Formats

=head3 d (d)

   2008-02-05T18:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 EEEd (d EEE)

   2008-02-05T18:30:30 = 5 Tal
   1995-12-22T09:05:02 = 22 Gum
  -0010-09-15T04:44:23 = 15 Sab

=head3 Hm (H:mm)

   2008-02-05T18:30:30 = 18:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 hm (h:mm a)

   2008-02-05T18:30:30 = 6:30 carra
   1995-12-22T09:05:02 = 9:05 saaku
  -0010-09-15T04:44:23 = 4:44 saaku

=head3 Hms (H:mm:ss)

   2008-02-05T18:30:30 = 18:30:30
   1995-12-22T09:05:02 = 9:05:02
  -0010-09-15T04:44:23 = 4:44:23

=head3 hms (h:mm:ss a)

   2008-02-05T18:30:30 = 6:30:30 carra
   1995-12-22T09:05:02 = 9:05:02 saaku
  -0010-09-15T04:44:23 = 4:44:23 saaku

=head3 M (L)

   2008-02-05T18:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 Md (M-d)

   2008-02-05T18:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 MEd (E, M-d)

   2008-02-05T18:30:30 = Tal, 2-5
   1995-12-22T09:05:02 = Gum, 12-22
  -0010-09-15T04:44:23 = Sab, 9-15

=head3 MMM (LLL)

   2008-02-05T18:30:30 = Nah
   1995-12-22T09:05:02 = Kax
  -0010-09-15T04:44:23 = Way

=head3 MMMd (MMM d)

   2008-02-05T18:30:30 = Nah 5
   1995-12-22T09:05:02 = Kax 22
  -0010-09-15T04:44:23 = Way 15

=head3 MMMEd (E MMM d)

   2008-02-05T18:30:30 = Tal Nah 5
   1995-12-22T09:05:02 = Gum Kax 22
  -0010-09-15T04:44:23 = Sab Way 15

=head3 MMMMd (MMMM d)

   2008-02-05T18:30:30 = Kudo 5
   1995-12-22T09:05:02 = Kaxxa Garablu 22
  -0010-09-15T04:44:23 = Waysu 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T18:30:30 = Tal Kudo 5
   1995-12-22T09:05:02 = Gum Kaxxa Garablu 22
  -0010-09-15T04:44:23 = Sab Waysu 15

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

   2008-02-05T18:30:30 = Tal, 2008-2-5
   1995-12-22T09:05:02 = Gum, 1995-12-22
  -0010-09-15T04:44:23 = Sab, -10-9-15

=head3 yMMM (y MMM)

   2008-02-05T18:30:30 = 2008 Nah
   1995-12-22T09:05:02 = 1995 Kax
  -0010-09-15T04:44:23 = -10 Way

=head3 yMMMEd (EEE, y MMM d)

   2008-02-05T18:30:30 = Tal, 2008 Nah 5
   1995-12-22T09:05:02 = Gum, 1995 Kax 22
  -0010-09-15T04:44:23 = Sab, -10 Way 15

=head3 yMMMM (y MMMM)

   2008-02-05T18:30:30 = 2008 Kudo
   1995-12-22T09:05:02 = 1995 Kaxxa Garablu
  -0010-09-15T04:44:23 = -10 Waysu

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

No

=head3 Local first day of the week

Sabti


=head1 SUPPORT

See L<DateTime::Locale>.

=cut
