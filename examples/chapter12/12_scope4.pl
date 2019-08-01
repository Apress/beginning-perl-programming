#12_scope4.pl

sub modify {
   @temp=(40,50);		#changes temp, but not the average function's temp
}

sub average {
   my(@temp)=@_;		#Main program's @temp isn't touched
   &modify;
return (($temp[0] + $temp[1]) / 2);    #returns 15
}

#main program
@temp=(10,20);
print &average (@temp), “\n”;	#prints 15
print "@temp";				#prints 40, 50
