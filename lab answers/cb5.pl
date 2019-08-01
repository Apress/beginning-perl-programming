#!perl

# cb5.pl
# Author: Your Name
# Date created: 00-00-00
# Descripton: This program will allow the user to keep track
#            of a personal checkbook including: Deposits,
#            withdrawals, checks writen, looking up checks
#            by check number or date writen, and printing a
#            statement.

print "Welcome to Checkbook!\n";
print "Please enter your name:";
chomp ($name=<STDIN>);

@book=("DEP:12/12/1999:Beginning Balance:100");

while ($choice != 7)  #until ($choice == 7)
{
   print "Your current balance is:    100\n\n";

   print "Please enter your choice:\n";
   print "1. Enter a deposit\n";
   print "2. Enter a withdrawal\n";
   print "3. Enter a check\n";
   print "4. Lookup a check by #\n";
   print "5. Lookup a check by date\n";
   print "6. Print a statement\n";
   print "7. Exit program\n";

   print "Please enter your choice> ";
 
   chomp ($choice = <STDIN>);

   if ($choice == 1)
   {
      print "Please enter the amount of the deposit (ex: 1234.56): ";
      $amount = <STDIN>;

      print "Please enter the date of the deposit: ";
      chomp ($date = <STDIN>);

      print "Please enter a comment for this transaction: ";
      chomp ($comment = <STDIN>);

      push (@book, "DEP:${date}:${comment}:${amount}");


   }
   elsif ($choice == 2)
   {
      print "Please enter the amount of the withdrawal (ex: 1234.56): ";
      $amount = <STDIN>;

      print "Please enter the date of the withdrawal: ";
      chomp ($date = <STDIN>);

      print "Please enter a comment for this transaction: ";
      chomp ($comment = <STDIN>);

      push (@book, "WD:${date}:${comment}:${amount}");

   }
   elsif ($choice == 3)
   {
      print "Please enter the amount of the check (ex: 1234.56): ";
      $amount = <STDIN>;

      print "Please enter the date of the check: ";
      chomp ($date = <STDIN>);

      print "Please enter a comment for this transaction: ";
      chomp ($comment = <STDIN>);

      print "Please enter the check number: ";
      chomp ($number = <STDIN>);

      push (@book, "${number}:${date}:${comment}:${amount}");

   }
   elsif ($choice == 4)
   {
      print "You choose 4";
   }
   elsif ($choice == 5)
   {
      print "You choose 5";
   }
   elsif ($choice == 6)
   {
#This was not a lab requirement, but it makes it easier
#to see if the program is working:
      foreach $element (@book) {
      print "$element\n";}
      print "\n"x3;
   }
}

#Exit program
print "\nThanks for using Check_book!\n";
