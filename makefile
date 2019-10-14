all: README.md

README.md: guessinggame.sh
	echo "Project: Jake Batchelder's Guessing Game" > README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md
