#12_scope5.pl

sub modify {
   my(@temp)=(40,50);		#changes the temp var of the modify function
}

sub average {
   my(@temp)=@_;		#Main program's @temp isn't touched
   &modify;
return (($temp[0] + $temp[1]) / 2);    #returns 15
}

#main program
my(@temp)=(10,20);
print &average (@temp), “\n”;      	#prints 15
print "@temp";				#prints 10, 20
