#!perl
#9_back3.pl

print "Please enter a line: ";
$_=<STDIN>;
chomp $_;

if (/^(...).*\1$/) {print "$1\n";}

$junk="whatever";

if ($junk =~ /what/) {print "yes\n";} 

print "$1\n";
