README.md :
	touch README.md
	echo  "title of project: the guessing game \n " >> README.md
	echo "the date and time: " >> README.md
	date -r README.md  \n >> README.md
	echo "the number of lines of code contained in guessinggame.sh: " >> README.md
	wc -l  guessinggame.sh | egrep -o "[0-9]+" >> README.md

