#!/bin/bash

#----------------------------#
#----------VARIÁVEIS---------#
#----------------------------#

# Note: Used $(...) instead of backticks for command substitution for clarity and consistency.
MENSAGEM_USO="
$(basename "$0") - [OPÇÕES]
    -h - Menu de ajuda
    -v - Versão
    -s - Senha 
"
VERSAO="v1.0"
 
#----------------------------#
#--------FUNÇÕES-------------#
#----------------------------#

# Função para validar a senha
# Função para validar a senha
# Função para validar a senha
# Função para validar a senha
validar_senha() {
    senha="$1"

    # Verifica se a senha foi fornecida
    if [ -z "$senha" ]; then
        echo "Por favor, forneça uma senha com o parâmetro -s."
        exit 1
    fi

    mensagem_erro=""

    # Verifica cada critério da senha usando uma estrutura case
    case "$senha" in
        *[[:upper:]]*)
            ;;
        *)
            mensagem_erro+="A senha deve conter pelo menos uma letra maiúscula. \n"
            ;;
    esac

    case "$senha" in
        *[[:lower:]]*)
            ;;
        *)
            mensagem_erro+="A senha deve conter pelo menos uma letra minúscula. \n"
            ;;
    esac

    case "$senha" in
        *[[:digit:]]*)
            ;;
        *)
            mensagem_erro+="A senha deve conter pelo menos um número. \n"
            ;;
    esac

    if [ ${#senha} -lt 8 ]; then
        mensagem_erro+="A senha deve ter pelo menos 8 caracteres. \n"
    fi

    # Se não houver mensagens de erro, a senha é válida
    if [ -z "$mensagem_erro" ]; then
        echo "Senha válida."
        exit 0
    else
        echo -e "$mensagem_erro"
        exit 1
    fi
}


 
#----------------------------#
#----------EXECUÇÃO----------#
#----------------------------#

s_parametro=""
while [[ $# -gt 0 ]]; do
    key="$1"

    case $key in
        -s)
            shift # Passa para o próximo argumento após "-s"
            s_parametro="$1"
            validar_senha "$s_parametro"
            ;;
        -v)
            # Lógica para lidar com o parâmetro -a, se necessário
            echo "$VERSAO" && exit 0 
            ;;
        -h) echo "$MENSAGEM_USO" && exit 0 
            ;;

        *)
            echo "Inválido!" && exit 1
            # Ignora outros parâmetros desconhecidos
            ;;
    esac
    shift # Passa para o próximo parâmetro
done
