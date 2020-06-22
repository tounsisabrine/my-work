#!/usr/bin/env bash
#file : guessinggame.sh
number=$(ls -F | egrep -v / | wc -l )

#guessing game

echo "guess the number of files in this diroctory: "
read answer
#function win
function win {
if [[ $answer -eq $number ]]
then
echo "congratulations you won"
fi
}
#guessing
while [[ $answer -ne $number ]]
do
if [[ $answer -gt $number ]]
then
echo "your guess is too high!"
break
elif [[ $answer -lt $number ]]
then
echo "you guess is too low!"
break
elif [[ ! $answer =~ [0-9] ]]
then
echo "make sure you entered a number"
fi
done
win
