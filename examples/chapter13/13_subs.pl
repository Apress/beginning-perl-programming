#!perl
#13_subs.pl

use strict 'subs';

sub jesttest {
  print "This is just a test";
}

sub hello {
print "hello\n";
}

hello;     #Calls a valid subroutine, no problem
justatest; #Bareword that isn't a subroutine.
