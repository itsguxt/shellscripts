#!/bin/bash

################################################################################
# Script Name: my_script.sh
# 
# Description: This script performs a certain task on the system.
#
# Author: Gustavo de Mesquita
#
# Creation Date: March 15, 2024
#
# Version: 1.0
#
# Usage: 
#   - ./my_script.sh [options]
#
# Dependencies:
#   - This script requires package X installed.
#   - Requires root permissions to execute.
#   - Works only in the Linux environment.
#
# Dependencies:
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
# Options:
#   -h, --help      Display help about using the script.
#   -v, --version   Display the script version.
#
# Usage Examples:
#   - ./my_script.sh -h
#   - ./my_script.sh -v
#
# Notes:
#   - Make sure to be logged in as root before executing this script.
#
################################################################################

# Start of the script

# Function to display help
show_help() {
    echo "Usage: ./my_script.sh [options]"
    echo ""
    echo "Options:"
    echo "  -h, --help      Display help about using the script."
    echo "  -v, --version   Display the version of the script."
    echo ""
}

# Function to display the version
show_version() {
    echo "Version: 1.0"
}

# Check command line options
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -h|--help)
            show_help
            exit 0
            ;;
        -v|--version)
            show_version
            exit 0
            ;;
        *)
            echo "Invalid option: $key"
            show_help
            exit 1
            ;;
    esac
    shift
done

# Check root permissions
if [[ $EUID -ne 0 ]]; then
   echo "Execute this script as root. 
Use './my_script.sh -h' to see the help."
   exit 1
fi

# Remaining script...


