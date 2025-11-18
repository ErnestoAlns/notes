#!/bin/bash

# echo "La fecha es: "
# date
# echo "-----------------"

# #declaracion de variables
# nombre="Ernesto"
# echo "Hola $nombre"

# input de usario
# read -p "Cual es tu nombre: " USUARIO
# echo "Hola $USUARIO"

# condicional de if
# if [[ 1 < 2 ]]
# then
#     echo "1 > 2"
# else
#     echo "1 < 2"
# fi

read -p "Dime un numero: " a
case $a in
    a -eq "hola")
        echo "hola 1"
        ;;
    a -eq "mundo")
        echo "hola 2"
        ;;
    *)
        echo "Error..."
        ;;
esac















