#!/bin/bash

#create prompt to ask for number for multiplication table
read -p "what multiplication table do you want to see?: " num1
# condition to ensure the inputed value of num1 is an integer
if [[ "$num1" =~ ^[0-9]+$ ]] then #if A START
# question for full multiplication table
	read -p "You want a full multiplication table? [y/n]: " ans1
#condition for y/n input
		if [[ $ans1 == "n" ]]; then # if B START
# prompt for multiplication start and stop boundaries
			read -p "where do you want the table to start? {1-10}: " num2	
			read -p "where do you want the table to stop?{1-10}: " num3
# condition for start/stop number input				
				if [[ $num2 -gt 0 && $num2 -lt 11 && $num3 -gt 0 && $num2 -lt 11 && $num3>=$num2 ]]; then # if C START
						echo "This is your Multiplication Table of $num1 from $num2 to $num3: "
# c style for-loop for multiplication table of start and stop boundaries
					for ((i=$num2; i<=$num3; i++)) 
					do
						result0=$(($num1 * i))
						echo "$num1 x $i = $result0"
					done	
				else 
					echo "not within range, try again later"
				fi # if C STOP
# else-if statement for full multiplication table
		elif [[ $ans1 == "y" ]]; then
			echo "This is your Multiplication Table of $num1"
# c style for-loop of multiplication table with no boundaries. 
			for ((i=0; i<=10; i++))
			do
				result=$(($num1 * i))
				echo "$num1 * $i = $result"
			done
		else 
			echo "please, input 'y' or 'n' next time"
			echo "reload './latest.sh' to try again"	
		fi # if B STOP
else 
	echo "Invalid Input, Input a number next time"
	  echo "reload './latest.sh' to try again"
fi # if A STOP
