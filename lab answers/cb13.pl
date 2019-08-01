#!perl

# cb13.pl
# Author: Your Name
# Date created: 00-00-00
# Descripton: This program will allow the user to keep track
#            of a personal checkbook including: Deposits,
#            withdrawals, checks writen, looking up checks
#            by check number or date writen, and printing a
#            statement.

#use diagnostics;
use strict "subs";
use File::Copy;

format STDOUT =
@<<<<<<<<< @<<<<<<<<< @<<<<<<<<<<<<<<<<<<<< @########.##
$1, $2, $3, $4
.

sub open_data {
    my $name, $backup;
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
    $backup="${file}.bak";

    print "Note: the data you enter will be stored in a plain text file.\nThis file will be called $file. \n";


    if (-e $file)
       {

       print "The file $file already exists\n";
       print "Please press <ENTER> to continue\n";
       $dummy = <STDIN>;

       print "A backup of your original data will be stores in a plain text file named $backup \n\n";
       copy ($file, $backup);

       open (RFILE, $file) || die "Could not open file";
       @book = <RFILE>;
       close (RFILE);

       foreach $data (@book)
       {
           # Using Split instead:
           @fields = split (/:/, $data);
#          $data =~ /(.*):.*:.*:(.*)/;
          if ($fields[0] eq "DEP") 
          {
             $balance += $fields[3];
          }
          else
          {
             $balance -= $fields[3];
          }
       }
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

        do
        {
            print "Please enter the today's date: ";
            chomp ($date = <STDIN>);
            if (!($date =~ /^(10|11|12|0[1-9])\/(0[1-9]|[12][0-9]|30|31)\/[0-9]{4}$/))
            {
                print "Invalid format, please retype (ex: 02/28/1999):\n";
            }
        }
        until ($date =~ /^(10|11|12|0[0-9])\/(0[1-9]|[12][0-9]|30|31)\/[0-9]{4}$/);

        $book[0] = "DEP:$date:Beginning Balance:$balance";
        }
}

sub menu {
   my $pick;
   system "cls";   #For Windows
   #system "clear"; #For Linux or Unix
   print "Your current balance is:    $balance\n\n";

   print "Please enter your choice:\n";
   print "1. Enter a deposit\n";
   print "2. Enter a withdrawal\n";
   print "3. Enter a check\n";
   print "4. Lookup a check by #\n";
   print "5. Lookup a check by date\n";
   print "6. Print a statement\n";
   print "7. Exit program\n";

   print "Please enter your choice> ";
 
   chomp ($pick = <STDIN>);
   return ($pick);
}

sub deposit {
print "Please enter the amount of the deposit (ex: 1234.56): ";
      $amount = <STDIN>;

      while ($amount <= 0)
      {
         warn "The amount must be greater than 0\n";
         print "Please enter the amount of the deposit (ex: 1234.56): ";
         $amount = <STDIN>;
      }

   do
      {
      print "Please enter the today's date: ";
      chomp ($date = <STDIN>);
      if (!($date =~ /^(10|11|12|0[0-9])\/(0[1-9]|[12][0-9]|30|31)\/[0-9]{4}$/))
         {
         print "Invalid format, please retype (ex: 02/28/1999):\n";
         }
      }
      until ($date =~ /^(10|11|12|0[0-9])\/(0[1-9]|[12][0-9]|30|31)\/[0-9]{4}$/);

      print "Please enter a comment for this transaction: ";
      chomp ($comment = <STDIN>);

      push (@book, "DEP:${date}:${comment}:${amount}");

      $balance += $amount;
}

sub withdrawal {
print "Please enter the amount of the withdrawal (ex: 1234.56): ";
      $amount = <STDIN>;

      while ($amount <= 0)
      {
         warn "The amount must be greater than 0\n";
         print "Please enter the amount of the deposit (ex: 1234.56): ";
         $amount = <STDIN>;
      }

   do
      {
      print "Please enter the today's date: ";
      chomp ($date = <STDIN>);
      if (!($date =~ /^(10|11|12|0[0-9])\/(0[1-9]|[12][0-9]|30|31)\/[0-9]{4}$/))
         {
         print "Invalid format, please retype (ex: 02/28/1999):\n";
         }
      }
      until ($date =~ /^(10|11|12|0[0-9])\/(0[1-9]|[12][0-9]|30|31)\/[0-9]{4}$/);

      print "Please enter a comment for this transaction: ";
      chomp ($comment = <STDIN>);

      push (@book, "WD:${date}:${comment}:${amount}");

      $balance -= $amount;
}

sub check {

  print "Please enter the amount of the deposit (ex: 1234.56): ";
      $amount = <STDIN>;

      while ($amount <= 0)
      {
         warn "The amount must be greater than 0\n";
         print "Please enter the amount of the deposit (ex: 1234.56): ";
         $amount = <STDIN>;
      }

   do
      {
      print "Please enter the today's date: ";
      chomp ($date = <STDIN>);
      if (!($date =~ /^(10|11|12|0[0-9])\/(0[1-9]|[12][0-9]|30|31)\/[0-9]{4}$/))
         {
         print "Invalid format, please retype (ex: 02/28/1999):\n";
         }
      }
      until ($date =~ /^(10|11|12|0[0-9])\/(0[1-9]|[12][0-9]|30|31)\/[0-9]{4}$/);

      print "Please enter a comment for this transaction: ";
      chomp ($comment = <STDIN>);

      print "Please enter the check number: ";
      chomp ($number = <STDIN>);
      push (@book, "${number}:${date}:${comment}:${amount}");

      $balance += $amount;

}

sub by_number {
   $match="false";
   do
      {
      print "Please enter the check number you wish to look up: ";
      chomp ($number=<STDIN>);
      if (!($number =~ /^[0-9]+$/))
         {
         print "Invalid number, please try again.\n";
         }
      }
      until ($number =~ /^[0-9]+$/);

   foreach $data (@book)
      {
      $data =~ /^(.*):(.*):(.*):(.*)$/;
      if ($number eq $1)
         {
         print "Check number $number was written to $3 on $2 in the amount of $4\n";
         $match = "true";
         last;
         }
      }

   if ($match ne "true")
      {
      print "Check number $number was not found\n";
      }
   print "Please press <ENTER> to continue";
   $dummy = <STDIN>;

}

sub by_date {
     $match="false";
   do
      {
      print "Please enter the date of the check you wish to look up (ex: 02/28/1999): ";
      chomp ($date=<STDIN>);
      if (!($date =~ /^(10|11|12|0[0-9])\/(0[1-9]|[12][0-9]|30|31)\/[0-9]{4}$/))
         {
         print "Invalid date, please try again.\n";
         }
      }
      until ($date =~ /^(10|11|12|0[0-9])\/(0[1-9]|[12][0-9]|30|31)\/[0-9]{4}$/);

   foreach $data (@book)
      {
      $data =~ /^(.*):(.*):(.*):(.*)$/;
      $amount = $4;
      $comment = $3;
      $number = $1;
      if (($date eq $2) && ($1 =~ /^[0-9]+$/))
         {
         print "Check number $number was written to $comment on $date in the amount of $amount\n";
         $match = "true";
         }
      }

   if ($match eq "false")
      {
      print "No check were writen on $date\n";
      }
   print "Please press <ENTER> to continue";
   $dummy = <STDIN>;

}

sub statement {
   print "\n" x 5;

   print "Item       Date       Comment                     Amount\n";
   print "--------------------------------------------------------\n";

   foreach $data (@book)
      {
      $data =~ /^(.*):(.*):(.*):(.*)$/;
      write STDOUT;
      }

   print "--------------------------------------------------------\n";
   print "Total                                             $balance\n";
   print "Press <enter> to continue:";
   $dummy=<STDIN>;

}

&open_data;

while ($choice != 7)
{
   $choice=&menu;
   system "cls";   #For Windows
   #system "clear"; #For Linux or Unix

   if ($choice == 1)
   {
      &deposit;
   }
   elsif ($choice == 2)
   {
      &withdrawal;
   }
   elsif ($choice == 3)
   {
      &check;
   }
   elsif ($choice == 4)
   {
      &by_number;
   }
   elsif ($choice == 5)
   {
      &by_date;
   }
   elsif ($choice == 6)
   {
      &statement;
   }
   elsif ($choice != 7)
   {
      warn "bad choice, must be between 1-7\n";
      print "Press <enter> to continue:";
      $dummy=<STDIN>;
   }
}

#Exit program
print "\nThanks for using Check_book!\n";
open (WFILE, ">$file");
print WFILE @book;
close WFILE;
chmod (0600, "$file");