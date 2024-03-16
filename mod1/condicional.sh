#!/usr/bin/env bash

# ESTRUTURA CONDICIONAL

VAR_1="VALOR1"
VAR_2="VALOR1"

#existem vários modos de se fazer um if
#1º
if [[ $VAR_1 = "$VAR_2" ]]; then
    echo "      1. são iguais!"
fi

#2º
if [[ $VAR_1 = "$VAR_2" ]]
then
    echo "      2. são iguais!"
fi


#3º
if test $VAR_1 = $VAR_2 
then
    echo "      3. são iguais!"
fi

#4º
if [ $VAR_1 = $VAR_2 ]
then
    echo "      4. são iguais!"
fi

#5º (Forma simplificada [e recomendada], sem else)
[ $VAR_1 = $VAR_2 ] && echo "      5. são iguais!"