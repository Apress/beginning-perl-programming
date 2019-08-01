#!perl
#5_given.pl

use feature "switch";  #Provides access to the given statement

print "Please enter 'yes' or 'no': ";
$response=<STDIN>;
chomp $response;

given ($response) {
        when ("yes") {print "You agree!\n"; }
        when ("no")  {print "Bummer, you don't agree\n"; }
        default    {print "Maybe next time\n"; }
}
