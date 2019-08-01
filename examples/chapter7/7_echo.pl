#!perl
#7_echo.pl
# This program will count the number of lines that contain the word "echo"

$total=0;   #not required, just good style

while (<>) {
   if (/echo/) {         #Assumes to look in $_ for "echo"
      $total++;
   }
}
print "Number of lines that contain 'echo': $total\n";
