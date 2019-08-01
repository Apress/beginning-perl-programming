#!perl

# cb2.pl
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

print "Your current balance is: 100\n\n";

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