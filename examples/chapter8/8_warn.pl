#!perl
#8_warn.pl

if (!(-r "/etc/junkfile")) {warn "can't find file"};
if (!(-r "/etc/junkfile")) {warn "can't find file\n"};
if (!(-r "/etc/junkfile")) {print STDERR "can't find file\n"};
