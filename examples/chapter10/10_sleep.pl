#!perl
#10_sleep.pl

print "countdown!\n\n";
$|=1;
for ($i=10;$i>0;$i--) {
   print "$i \r";
   sleep 1;
}
$|=0;
print "Blast off!\n";
