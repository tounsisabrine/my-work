README.md :
	touch README.md
	echo  "title of project: my work " >> README.md
	echo "My work" >> README.md
	echo "date and time: " >> README.md
	date >> README.md
	echo "the number of lines of code contained in guessinggame.sh:" >> README.md
	 wc -l | guessinggame.sh >> README.md

