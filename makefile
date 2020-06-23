all: README.md

README.md: guessinggame.sh
	touch README.md
	echo  "title of project: the guessing game \n " >> README.md
	echo -n "the date and time: " >> README.md
	date >> README.md
	echo -n "the number of lines of code contained in guessinggame.sh: " >> README.md
	wc -l  guessinggame.sh | egrep -o "[0-9]+" >> README.md

