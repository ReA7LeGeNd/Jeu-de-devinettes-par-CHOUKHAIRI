README.md: guessinggame.sh
	echo "# Projet sur un jeu de devinettes" > README.md
	echo "## Date et temps d'execution du Make" >> README.md
	echo "\n$(shell date)" >> README.md
	echo "\n## Nombre de lignes dans guessinggame.sh" >> README.md
	echo "\n$(shell wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
