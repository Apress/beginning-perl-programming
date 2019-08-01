#!perl
#8_die.pl

if (!(-r "/etc/junkfile")) {
   die "can't find file"
}

print "go on from here with more code";
