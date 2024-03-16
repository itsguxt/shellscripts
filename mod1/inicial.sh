#!/usr/bin/env bash

echo "VARIÁVEIS"

echo "***************************************"
# TESTE STRING
MEU_NOME="GUSTAVO DE MESQUITA FARIAS"
echo "$MEU_NOME"


echo "***************************************"
# TESTE NÚMERO
MINHA_IDADE=23
echo "$MINHA_IDADE"


echo "***************************************"
# TESTE OPERAÇÃO 
NUMERO_01=10
NUMERO_02=20
SOMA=$(($NUMERO_01+$NUMERO_02))
echo "$SOMA"

echo "***************************************"
TESTE_CAT="$(cat /etc/passwd | grep itsguxt)"
echo $TESTE_CAT

echo "***************************************"
#  TESTE VALOR RESERVADO
echo "Parâmetro A: $1"
echo "Parâmetro B: $2"
echo "Parâmetro C: $3"
echo "***************************************"
# TESTE OPERAÇÃO COM PARÂMETROS
echo "Soma A+B: $(($1+$2))"
echo "Sub A-B: $(($1-$2))"
echo "Mult A*B: $(($1*$2))"
echo "Div A/B: $(($2/$1))"
echo "***************************************"
# TODOS OS PARÂMETROS ENVIADOS 
echo "TODOS OS PARÂMETROS ENVIADOS: $*"
echo "QUANTOS PARÂMETROS ENVIADOS: $#"
echo "***************************************"
# PID da última execução 
echo "PID: $$"
echo "***************************************"
# NOME DA ÚLTIMA EXECUÇÃO (Bom colocar no cabeçalho da execução, para saber de onde veio! )
echo "NOME: $0"
echo "***************************************"
echo "***************************************"
echo "***************************************"
echo "***************************************"
