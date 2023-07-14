#!/bin/bash

# uso de if, elif, then, else y fi. Estos son KW que se utilizan para crear condicionales a la hora de crear scripts en shell. Esto nos sirve para declarar más legiblemente cada uno de los bloques de código que se piensan declarar en los scripts.

if [ ${1,,} = "admin" ]; then
    echo "User admin logged"
elif [ ${1,,} = "samuel" ]; then
    echo "User samuel logged"
else 
    echo "User $1 not found or not valid, try again!"
fi