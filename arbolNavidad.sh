#!/bin/bash

clear_screen() {
    clear
}

draw_tree() {
    local n=$1
    for ((i = 0; i < n; i++)); do
        for ((j = 0; j < n - i; j++)); do
            echo -n " "
        done

        for ((j = 0; j <= i; j++)); do
            echo -n "🎄"
        done

        echo
    done
}

main() {
    local exit_flag=1
    local option=0

    while [ $exit_flag -eq 1 ]; do
        echo -e "\e[0;35mARBOL DE NAVIDAD\e[0m"
        echo "1-Ingresar tamaño"
        echo "2-Salir"
        echo -n "Opción: "
        read -r option

        case $option in
        1)
            echo -n "Tamaño: "
            read -r tree_size
            draw_tree "$tree_size"
            echo "Presiona cualquier tecla para continuar..."
            read -r -n 1
            clear_screen
            ;;
        2)
            exit_flag=0
            ;;
        *)
            echo "Opción incorrecta. Vuelve a intentarlo..."
            read -r -n 1
            clear_screen
            ;;
        esac
    done

    echo -e "\e[0;36m\tFeliz Navidad...\e[0m"
}

main

