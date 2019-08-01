#!perl
#5_do.pl
#Verify number entered is greater than 100

do  {
   print "Please enter a number greater than 100: ";
   $number=<STDIN>;
} while ($number <= 100);

print "Thanks, $number is greater than 100\n";
