#!perl
#8_form_2.pl

format STDOUT =
Comment: @*
$comment
Keywords: ^<<<<<<
          $keywords
          ^<<<<<<
          $keywords
.

$comment="Displays good tact\nworks hard\nsometimes is late";
$keywords="work effort";

write STDOUT;
