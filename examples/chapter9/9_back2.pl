#!perl
#9_back2.pl

open (GROUP, "<group");

while (<GROUP>) {
   m/(.*):(.*):(.*):(.*)/;
   $total += $3;
}

print "Total: $total\n";
