#!perl
#8_form_trunc.pl

format STDOUT =
Name: @<<<<<<<...
      $name
.

$name="Mr. My";

write STDOUT;

$name="Mr. My Name Is Too Long";

write STDOUT;
