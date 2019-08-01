#!perl
#5_switch.pl

use Switch;  #Loads the switch module

print "Please enter 'yes' or 'no':";
$response=<STDIN>;
chomp $response;

switch ($response) {
        case "yes" {print "You agree!\n"; }
        case "no"  {print "Bummer, you don't agree\n"; }
        else       {print "Maybe next time\n"; }
}
