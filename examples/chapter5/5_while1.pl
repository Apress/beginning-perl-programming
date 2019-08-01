#!perl
#5_while1.pl
#Verify number entered is greater than 100

print "Please enter a number greater than 100:";
$number=<STDIN>;

while ($number <= 100) {
   print "That is not greater than 100\n";
   print "Please enter a number greater than 100: ";
   $number=<STDIN>;
}

print "Thanks, $number is greater than 100\n";
