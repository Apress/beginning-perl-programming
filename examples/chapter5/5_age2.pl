#!perl
#5_age2.pl
print "Please input your age ";
$age=<STDIN>;
if ($age > 15) {
   print "You are old enough to drive\n";
} 
elsif ($age == 15) {
   print "You are old enough for a permit\n";
}
else {
   print "You can't drive for ", 16 - $age, " more years\n";
}
