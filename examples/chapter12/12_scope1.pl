#12_scope1.pl

sub average {
   @temp=@_;
   $temp[0]++;                           	#Adds one to first element of temp array
   foreach $num (@temp) {
      $total += $num;
   }
return ($total / ($#temp+1));
}

#main program
@temp=(10,20);
print &average (@temp), “\n”;      	#prints 15.5
print "@temp";				#prints 11, 20
