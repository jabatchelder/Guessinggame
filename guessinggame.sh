#!/usr/bin/env bash
#guessinggame.sh

function correctans {
echo "Congratulations! That's the correct answer!"
}

function wrongans {
if [[ $1 -gt $2 ]]
then
echo "That number is too high. Try again"
fi

if [[ $1 -lt $2 ]]
then
echo "That number is too low. Try again"
fi

echo "How many files are in the current working directory?"
read reinput
}

numfiles=$(ls -l | wc -l)
echo "How many files are in the current working directory?"
read inputnum
currentans=$inputnum

if [[ $currentans -ne $numfiles ]]
then 
while [[ $currentans -ne $numfiles ]]
do
if [[ $currentans =~ ^-?[0-9]+$ ]]
then 
wrongans $currentans $numfiles
let currentans=$reinput

else
echo "Please submit an integer"
fi
done
fi

if [[ $currentans -eq $numfiles ]] 
then
correctans
fi 



