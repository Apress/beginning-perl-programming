#12_scope2.pl

sub average {
   local(@temp)=@_;			#Main program's @temp isn't touched
   $temp[0]++;                           	#Adds one to first element of local temp array
   foreach $num (@temp) {
      $total += $num;
   }
return ($total / ($#temp+1));
}

#main program
@temp=(10,20);
print &average (@temp), “\n”;      	#prints 15.5
print "@temp";				#prints 10, 20
