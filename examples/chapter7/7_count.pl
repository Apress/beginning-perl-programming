#!perl
#7_count.pl
# This program will count the number of lines that contain the word "echo"

$total=0;   #not required, just good style

while ($line=<>) {
   if ($line =~ /echo/) {
      $total++;
   }
}
print "Number of lines that contain 'echo': $total\n";
