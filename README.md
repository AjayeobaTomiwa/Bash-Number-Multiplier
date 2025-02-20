# Bash-Number-Multiplier

A bash script that displays a multiplier from 1-10.

## Functionalities

> The scripts prompts a request for an input for the number you want to multiply

> The script, then tests if the number is an integer using a conditional if-statement. If NOT, the script prompts an 'Invalid input'

> The script proceeds to request if you want the full table or the option to select your start and stop boundaries.

> if the full table option is selected, the prompt proceeds to show a full multiplication from 0-10 using a c-style for loop

> if not, the script prompts you to select a start and stop range

> the script then determines if the inputed range is valid using an if statement, if not an error message of invalid input is displayed.

> if the boundaries are within accepted range, the script then uses a for loop to display a multiplication table using your inputed numbers as start/stop boundaries.

```bash
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
					echo "not within range, try again by running './multiplier.sh'"
				fi # if C STOP
# else-if statement for full multiplication table
		elif [[ $ans1 == "y" ]]; then
			echo "This is your Multiplication Table of $num1: "
# c style for-loop of multiplication table with no boundaries.
			for ((i=0; i<=10; i++))
			do
				result=$(($num1 * i))
				echo "$num1 * $i = $result"
			done
		else
			echo "please, input 'y' or 'n' next time"
			echo "reload './multiplier.sh' to try again"
		fi # if B STOP
else
	echo "Invalid Input, Input a number next time"
	  echo "reload './multiplier.sh' to try again"
fi # if A STOP
```
