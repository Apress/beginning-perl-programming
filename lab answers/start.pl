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
    print "#1 Add a phone number\n";
    print "#2 Lookup a phone number\n";
    print "#3 Delete a phone number\n";
    print "#4 Print all phone numbers\n";
    print "#5. Check if a person has a phone number\n";
    print "#6. Exit the program\n";
    print "\nEnter your choice: ";
    chomp ($choice=<STDIN>);

   if ($choice == 1) {
        #Enter your code here for "Add a phone number";
   } elsif ($choice == 2) {
        #Enter your code here for Lookup a phone number";
   } elsif ($choice == 3) {
        #Enter your code here for Delete a phone number";
   } elsif ($choice == 4) {
        #Enter your code here for Print all phone numbers";
   } elsif ($choice == 5) {
        #Enter your code here for Check if a person has a phone number";
}

}

#This part saves the data to the file
open (DATA, ">phone.txt");
$output=join (":", %phone);
print DATA $output;
close DATA;

