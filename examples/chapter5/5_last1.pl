#!perl
#5_last1.pl

while (true) {
   print "Please enter a grade(enter -1 to finish): ";
   chomp($score=<STDIN>);
   if ($score == -1) {
      last;
   }
   push(@grades, $score);
} 

print "finished\n";
print "@grades";
print "\n";
