#!perl
#2_defined.pl

if (defined ($total)) {
   print "The value is: ", $total +8, "\n";
}
else
{
   print 'The variable $total is not defined', "\n";
}
