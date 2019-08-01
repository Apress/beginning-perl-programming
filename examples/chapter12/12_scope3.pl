#12_scope3.pl

sub modify {
   @temp=(40,50);				#changes temp that was created in average function
}

sub average {
   local(@temp)=@_;				#Main program's @temp isn't touched
   &modify;
   return (($temp[0] + $temp[1]) / 2);    	#returns 45, result of 40 + 50 /2
}

#main program
@temp=(10,20);
print &average (@temp), “\n”;		#prints 45
print "@temp";					#prints 10, 20
