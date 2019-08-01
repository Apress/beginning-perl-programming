#!perl
#5_age1.pl
print "Please input your age ";
$age=<STDIN>;
if ($age > 15) {
   print "You are old enough to drive\n";
} 
else {
   print "You can't drive for ", 16 - $age, " more years\n";
}
