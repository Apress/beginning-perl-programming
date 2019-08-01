#!perl
#start.pl

#General note: Normally we would do more error checking.  That has been omitted for this lab

# The following will open a data file and read the information into a hash.  The key will be the person's
# name and the value will be the person's phone number.  This code will be explained in more detail
# in class and in later units of this course.  Initally this file doesn't exist, so the following code will
# initially do nothing

open (DATA, "<phone.txt");
%phone=split(/:/, <DATA>);
close DATA;

$choice=0;

while ($choice != 6) {
    print "Enter a choice from the following options:\n\n";
    print "#1. Add a phone number\n";
    print "#2. Lookup a phone number\n";
    print "#3. Delete a phone number\n";
    print "#4. Print all phone numbers\n";
    print "#5. Check if a person has a phone number\n";
    print "#6. Exit the program\n";
    print "\nEnter your choice: ";
    chomp ($choice=<STDIN>);

   if ($choice == 1) {
        print "Enter the name to add: ";
        chomp ($name=<STDIN>);
        print "Enter ${name}'s phone number: ";
        chomp ($number=<STDIN>);
        $phone{$name}=$number;
   } elsif ($choice == 2) {
        print "Enter the name to look up: ";
        chomp ($name=<STDIN>);
        print "\n\nEnter ${name}'s phone number is $phone{$name}\n\n";
        print "Press ENTER to continue";
        $dummy=<STDIN>;
        print "\n\n";
   } elsif ($choice == 3) {
        print "Enter the name to delete: ";
        chomp ($name=<STDIN>);
        if (exists $phone{$name}) {
            delete $phone{$name};
            print "${name}'s phone number has been deleted\n";
        } else {
            print "$name has no entry in the database\n";
        }
        print "Press ENTER to continue";
        $dummy=<STDIN>;
        print "\n\n";
   } elsif ($choice == 4) {
        print "\n";
        while (($name, $number) = each (%phone)) {
            print "${name}'s number is $phone{$name}\n";
        }
        print "Press ENTER to continue";
        $dummy=<STDIN>;
        print "\n\n";
   } elsif ($choice == 5) {
        print "Enter the name to check: ";
        chomp ($name=<STDIN>);
        if (exists $phone{$name}) {
            print "$name is in the database\n";
        } else {
            print "$name has no entry in the database\n";
        }
        print "Press ENTER to continue";
        $dummy=<STDIN>;
        print "\n\n";
}

}

#This part saves the data to the file
open (DATA, ">phone.txt");
$output=join (":", %phone);
print DATA $output;
close DATA;

