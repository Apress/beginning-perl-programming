#!perl
#8_more.pl

open (MORE, "| more") || die "can't do this";

for ($i=1;$i < 100 ; $i++) {
   print MORE "$i\n";
   }

close MORE
