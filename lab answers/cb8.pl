#!perl

# cb8.pl
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

#Check for valid name:
while ($name eq "") 
{
   warn "Sorry, did you enter your name\n";
   print "Please enter your name:";
   chomp ($name=<STDIN>);
}

$file="${name}.data";
print "Note: the data you enter will be stored in a plain text file.\nThis file will be called $file. \n\n";

if (-e $file)
   {

   print "The file $file already exists\n";
   print "Please press <ENTER> to continue\n";
   $dummy = <STDIN>;

   open (RFILE, $file) || die "Could not open file";
   @book = <RFILE>;
   close (RFILE);
   }
else
   {
   print "The file $file does not exist, so one will be made for you\n\n";
   print "Please enter a beginning balance for this account: ";
   $balance=<STDIN>;

   while ($balance <= 0)
   {
      warn "The amount must be greater than 0\n";
      print "Please enter the amount of the deposit (ex: 1234.56): ";
      $balance = <STDIN>;
   }

   print "Please enter today's date: ";
   chomp ($date=<STDIN>);
   @book  = ("DEP:$date:Beginning Balance:$balance");
   }

while ($choice != 7)
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

	  #Check for valid amount:
      while ($amount <= 0)
      {
         warn "The amount must be greater than 0\n";
         print "Please enter the amount of the deposit (ex: 1234.56): ";
         $amount = <STDIN>;
      }

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

      while ($amount <= 0)
      {
         warn "The amount must be greater than 0\n";
         print "Please enter the amount of the deposit (ex: 1234.56): ";
         $amount = <STDIN>;
      }

      print "Please enter the date of the withdrawal: ";
      chomp ($date = <STDIN>);

      print "Please enter a comment for this transaction: ";
      chomp ($comment = <STDIN>);

      push (@book, "WD:${date}:${comment}:${amount}");

   }
   elsif ($choice == 3)
   {
      print "Please enter the amount of the deposit (ex: 1234.56): ";
      $amount = <STDIN>;

      while ($amount <= 0)
      {
         warn "The amount must be greater than 0\n";
         print "Please enter the amount of the deposit (ex: 1234.56): ";
         $amount = <STDIN>;
      }

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
   #Check for valid choice:
   elsif ($choice != 7)
   {
      warn "bad choice, must be between 1-7\n"
   }
}

#Exit program
print "\nThanks for using Check_book!\n";

open (WFILE, ">$file");
print WFILE @book;  
#or: foreach $element (@book) {print WFILE "$element\n"}
close WFILE;
