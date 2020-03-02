#                              -*- Mode: Perl -*- 
# Ausnahme.pm -- 
# Author          : Ulrich Pfeifer
# Created On      : Thu Feb  1 09:10:48 1996
# Last Modified By: Ulrich Pfeifer
# Last Modified On: Sun Apr  3 11:42:38 2005
# Language        : Perl
# Update Count    : 23
# Status          : Unknown, Use with caution!

package Text::German::Ausnahme;

{
  local ($_);
  while (<DATA>) {
    chomp;
    ($ausnahme, $key) = split;
    $AUSNAHME{$ausnahme} = $key;
  }
  close DATA;
}

sub reduce {
  my($v,$s,$e) = @_;
  
  $s = $v.$s;
  while (1) {                   # algorithmus unklar
    return $AUSNAHME{$s} if defined $AUSNAHME{$s};
    last unless $e;
    $s .= substr($e,0,1);
    $e = substr($e,1);
  }
  return undef;
}

1;
__DATA__
Anzeich	Anzeichen
Charakter	Charakter
Daten	Daten
Denken	Denken
Eltern	Eltern
Entwicklungsl�nd	Entwicklungsland
Frau	Frau
Gedankeng�ng	Gedankengang
Geschichte	Geschichte
Herausgeb	Herausgeber
Interess	Interesse
Italien	Italien
Jahr	Jahr
L�nd	Land
Lexika	Lexikon
Problem	Problem
Prominentenlexika	Prominentenlexikon
R�te	Rat
Rahmen	Rahmen
Recht	Recht
Sinn	Sinn
Ziel	Ziel
Zigeun	Zigeuner
Zusammenh�ng	Zusammenhang
ausgestat	ausstatten
ausstat	ausstatten
ber�cksichtig	ber�cksichtigen
direkt	direkt
entgegengesetz	entgegensetzen
entgegensetz	entgegensetzen
entwickel	entwickeln
erkannt	erkennen
hoh	hoch
kannt	kennen
kl�r	kl�ren
widerleg	widerlegen
