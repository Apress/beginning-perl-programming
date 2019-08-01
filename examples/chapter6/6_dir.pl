#!perl
#6_dir.pl

print "Please enter the name of a file or directory: ";
$name=<STDIN>;
chomp $name;
if (-d $name) {
   print "$name is a directory\n";
} else {
   print "$name is not a directory\n";
}
