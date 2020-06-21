function guessinggame {
number=$(ls -F | egrep -v / | wc -l )
count=0
echo "guess the number of files in this diroctory"
read answer
while [[ $count -eq 0 ]]
do
if [[ $answer -eq $number ]]
then
echo "congratulations you won"
break
elif [[ $answer -gt $number ]]
then
echo "your guess is too high!"
break
elif [[ $answer -lt $number ]]
then
echo "you guess is too low!"
break
else
echo "make sure you entered a number"
let count=$count+1
fi
done
}
