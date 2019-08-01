#!perl
#10_grep.pl

@array=qw(Bob Bobby Ted Fred Sue Nick Sally);
@b=grep (/^B/, @array);
print "@b";
