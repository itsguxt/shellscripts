#!/bin/bash

################################################################################
# Nome do Script: meu_script.sh
# 
# Descrição: Este script realiza determinada tarefa no sistema.
#
# Autor: Gustavo de Mesquita
#
# Data de Criação: 15 de Março de 2024
#
# Versão: 1.0
#
# Uso: 
#   - ./meu_script.sh [opções]
#
# Dependências:
#   - Este script requer o pacote X instalado.
#   - Requer permissões de root para execução.
#   - Funciona apenas no ambiente Linux.
#
# Dependências:
#   - Python (>= v3)
#   - wget (>= v1.20)
#   - git (>= v2.20)
#   - build-essential (>= v12)
#   - libssl-dev (>= v1.1.1)
#   - jq (>= v1.6)
#   - curl (>= v7.58)
#   - unzip (>= v6.0)
#   - tar (>= v1.30)

#
# Opções:
#   -h, --help      Exibir ajuda sobre o uso do script.
#   -v, --version   Exibir a versão do script.
#
# Exemplos de Uso:
#   - ./meu_script.sh -h
#   - ./meu_script.sh -v
#
# Observações:
#   - Certifique-se de estar logado como root antes de executar este script.
# 
# Testado em:
#     bash GNU bash, versão 5.1.16(1)-release (x86_64-pc-linux-gnu)
#
################################################################################

# Início do script

# Função para exibir a ajuda
mostrar_ajuda() {
    echo "Uso: ./meu_script.sh [opções]"
    echo ""
    echo "Opções:"
    echo "  -h, --help      Exibir ajuda sobre o uso do script."
    echo "  -v, --version   Exibir a versão do script."
    echo ""
}

# Função para exibir a versão
mostrar_versao() {
    echo "Versão: 1.0"
}

# Verificação das opções de linha de comando
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -h|--help)
            mostrar_ajuda
            exit 0
            ;;
        -v|--version)
            mostrar_versao
            exit 0
            ;;
        *)
            echo "Opção inválida: $key"
            mostrar_ajuda
            exit 1
            ;;
    esac
    shift
done

# Verificação de permissões de root
if [[ $EUID -ne 0 ]]; then
   echo "Execute este script como root. 
Use './meu_script.sh -h' para ver a ajuda."
   exit 1
fi


# Restante do script...

################################################################################
#ESTRUTURA BÁSICA
# ---------------------------------------------------

# VARIÁVEIS

# ---------------------------------------------------

# TESTES

# ---------------------------------------------------

# FUNÇÕES

# ---------------------------------------------------

# EXECUÇÃO

# ---------------------------------------------------
