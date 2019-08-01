#!perl
#8_form1.pl

format STDOUT =
@||||||||||||
$title
Name: @<<<<<   Age: @<<
      $name,        $age
code: @>>>>>>>>
$code
Sale #1: @####.##
         $sale1
Sale #2: @####.##
         $sale2
Sale #3: @####.##
         $sale3
.

$title="Status";
$name="bob smith";
$age=25;
$code="674AR3";
$sale1=123;                  $sale2=9.99;            $sale3=45.8;

write STDOUT;
