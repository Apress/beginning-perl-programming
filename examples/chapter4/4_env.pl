#!perl
#4_env.pl
foreach $var (keys %ENV) {
   print "Var: $var   Set to: $ENV{$var}\n";
}
