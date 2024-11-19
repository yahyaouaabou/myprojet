# Makefile pour générer le README.md

README.md: guessinggame.sh
	@echo "# Projet: Jeu de devinette" > README.md
	@echo "Date et heure de création: $(shell date)" >> README.md
	@echo "Nombre de lignes dans guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
