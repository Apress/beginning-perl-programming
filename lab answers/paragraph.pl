#!perl
#paragraph.pl

print "Enter one sentence at a time, pressing the <ENTER> key after each sentence.  On Linux/Unix, press Control-d to finish.  On Windows, press Control-z + the <ENTER> key: \n";

while (<STDIN>) {
   chomp;
   $total .= $_;
   $total .= "  ";
}

print "Your paragraph is:\n$total\n";