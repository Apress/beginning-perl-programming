#!perl
#5_next.pl

while (true) {
   print "Please enter a grade (enter -1 to finish): ";
   chomp($score=<STDIN>);
   if ($score == -1) {
      last;
   }
   if ($score < 0) {
      print "Bad input, try again\n";
      next;
   }
   push(@grades, $score);
}


print "finished\n";
print "@grades";
print "\n";  
