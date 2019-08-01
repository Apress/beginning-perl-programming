#!perl
#8_form_num.pl

format STDOUT =
Sale #1: @0###.##
         $sale1
Sale #2: @####.##
         $sale2
Sale #3: @####.##
         $sale3
.

$sale1=123;
$sale2=9.4587;
$sale3=4444445.8;

write STDOUT;
