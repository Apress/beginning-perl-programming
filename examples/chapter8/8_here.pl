#!perl
#8_here.pl

#Using a here document:
print <<'EOF';
these are the lines of text to send to bob
This service costs $0
EOF

print "\n\n";

#Using a print statement, option #1:
print "\nthese are the lines of text to send to bob\nThis service costs \$0\n";

print "\n\n";

#Using a print statement, option #2:
print '
these are the lines of text to send to bob
This service costs $0';

print "\n\n";
