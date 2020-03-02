#                              -*- Mode: Perl -*- 
# Adjektiv.pm -- 
# Author          : Ulrich Pfeifer
# Created On      : Thu Feb  1 09:10:48 1996
# Last Modified By: Ulrich Pfeifer
# Last Modified On: Sun Apr  3 11:42:22 2005
# Language        : Perl
# Update Count    : 22
# Status          : Unknown, Use with caution!

package Text::German::Adjektiv;
use Text::German::Util;

{
  local ($_);
  while (<DATA>) {
    chomp;
    ($adjektiv, $key) = split;
    $ADJEKTIV{$adjektiv} = [split ':', $key];
  }
  close DATA;
}

sub reduce {
  my($v,$s,$e) = @_;
  
  
  #return undef unless $v.$s.$e =~ /$UMLAUTR/o;
  while (1) {                   # algorithmus unklar
    if (defined $ADJECTIV{$s}) {
      return ($v, $ADJECTIV{$s}->[0], $e);
    }
    $s .= substr($e,0,1);
    last unless $e;
    $e  = substr($e,1);
  }
  return undef;
}

1;
__DATA__
�lt	alt:1
�rg	arg:1
�rm	arm:1
alt	alt:1
arg	arg:1
arm	arm:1
b�ng	bang:0
bang	bang:0
bl�ss	bla�:0
bla�	bla�:0
d�mm	dumm:1
dumm	dumm:1
fr�mm	fromm:0
fromm	fromm:0
ges�nd	gesund:0
gesund	gesund:0
gl�tt	glatt:0
glatt	glatt:0
gr��	gro�:1
gr�b	grob:1
gro�	gro�:1
grob	grob:1
h�rt	hart:1
h�ch	hoch:1
h�h	hoch:1
hart	hart:1
hoch	hoch:1
j�ng	jung:1
jung	jung:1
k�lt	kalt:1
k�rg	karg:0
k�rz	kurz:1
kalt	kalt:1
karg	karg:0
kl�g	klug:1
klug	klug:1
kr�nk	krank:1
kr�mm	krumm:0
krank	krank:1
krumm	krumm:0
kurz	kurz:1
l�ng	lang:1
lang	lang:1
n�ch	nah:1
n�h	nah:1
n�ss	na�:0
na�	na�:0
nah	nah:1
r�t	rot:0
rot	rot:0
sch�rf	scharf:1
scharf	scharf:1
schm�l	schmal:0
schmal	schmal:0
schw�ch	schwach:1
schw�rz	schwarz:1
schwach	schwach:1
schwarz	schwarz:1
st�rk	stark:1
stark	stark:1
w�rm	warm:1
warm	warm:1
