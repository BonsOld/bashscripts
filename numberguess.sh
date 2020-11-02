#!/usr/bin/bash
# This is a basic bash script
echo -n "What is your name? "
read name
echo "Hello $name. Let's play a guessing game!"
sleep 1s

# the game
echo  "What number between 1 and 20 am I thinking of?"
rando=$(( $RANDOM % 20 + 1 ))
read guess
until (( $guess == $rando ))
do
	if (( $guess > $rando ))
	then
		echo "Too high, try again"
		read guess
	else
		echo "Too low, try again"
		read guess
	fi
done
echo "You got it, good job!"
sleep .5s
