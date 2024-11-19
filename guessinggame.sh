#!/bin/bash

# Fonction pour demander et vérifier la réponse
guess_number_of_files() {
    # Compter le nombre de fichiers dans le répertoire actuel
    local correct_answer=$(ls -1 | wc -l)

    while true; do
        echo "Combien de fichiers se trouvent dans le répertoire actuel?"
        read user_guess

        # Vérifier si la réponse est correcte
        if [[ "$user_guess" -eq "$correct_answer" ]]; then
            echo "Félicitations, vous avez trouvé la bonne réponse !"
            break
        elif [[ "$user_guess" -lt "$correct_answer" ]]; then
            echo "Trop bas, essayez encore."
        else
            echo "Trop haut, essayez encore."
        fi
    done
}

# Appel de la fonction
guess_number_of_files
