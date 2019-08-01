#!perl
#5_last2.pl
#Example of breaking out of nested loops

@classes=qw(math science history);

#Create a label:
JUMP: foreach $subject (@classes) {
   print "Enter grades for $subject (-2 to finish)\n";

   while (true) {
      print "Please enter a grade(enter -1 to finish): ";
      chomp($score=<STDIN>);
      if ($score == -1) {
         last;  #last to while loop
      }
      if ($score == -2) {
         last JUMP;  #last to the label's loop
      }
   push(@grades, "$subject:$score");
   }
}

foreach $i (@grades) {
   print "$i\n";
}
