#function getthenumber {
number=$(ls -F | egrep -v / | wc -l )
#echo $count
#}

#number= $(getthenumber)
echo "guess the number of files in this diroctory: "
read answer
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
if [[ $answer -eq $number ]]
then
echo "congratulations you won"
fi
