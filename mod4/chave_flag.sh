#!/bin/bash

#!/bin/bash

#----------------------------#
#----------VARIÁVEIS---------#
#----------------------------#

USUARIOS="$(cat /etc/passwd | cut -d : -f 1 )"
MENSAGEM_USO="
$(basename $0) - [OPÇÕES]
    -h - Menu de ajuda
    -v - Versão
    -s - Ordenar a saída
    -m - Tudo em Maiúsculo 
"
VERSAO="v1.0"
CHAVE_ORDENA=0
CHAVE_MAIUSCULA=0
 
#----------------------------#
#----------EXECUÇÃO----------#
#----------------------------#

case "$1" in
    -h) echo "$MENSAGEM_USO" && exit  0 ;;
    -v) echo "$VERSAO" && exit 0        ;;
    -s) CHAVE_ORDENA=1                  ;;
    -m) CHAVE_MAIUSCULA=1               ;;
    *)echo "$USUARIOS"                  ;;
esac

[ $CHAVE_ORDENA -eq 1 ] && echo "$USUARIOS" | sort 
[ $CHAVE_MAIUSCULA -eq 1 ] && echo "$USUARIOS" | tr [a-z] [A-Z]

