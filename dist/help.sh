#!/bin/bash

# This script displays help information for the Makefile.
# Usage: ./help.sh Makefile

# Set colors for output
col_off='\033[0m'
target_col='\033[36m'
variable_col='\033[93m'
grey='\033[90m'

# Main function to display help information
help() {
    # Display usage information
    echo "Usage:"
    printf "  make %b[variables]%b %b[target]%b\n\n" "$variable_col" "$col_off" "$target_col" "$col_off"
    
    # Display targets information
    echo "Target(s):"
    for t in $1; do _help_targets $t ; done
    echo ""
    
    # Display variables information
    echo "Variable(s):" #$1
    for v in $1 ; do _help_variables $v ; done
    echo ""
    # Display examples
    #_help_examples
}

# Function to display targets information
_help_targets() {
    local pattern
    pattern='^[a-zA-Z0-9._$\\(\\)\-]+:.*?##.*$'
    ## echo finding targets in $1 ; grep -E "$pattern" "$1" 
    grep -E "$pattern" "$1" | sort | while read -r line; do
        target=${line%%:*}
        description=${line#*## }
        printf "  %b%-30s%b%s\n" "$target_col" "$target" "$col_off" "$description"
    done
}

# Function to display variables information
_help_variables() {
    local pattern
    pattern='^[a-zA-Z0-9_-]+ [:?!+]?=.*?##.*$'
    # echo "trying for vars in $1: " ; grep -E "$pattern" "$1" 
    grep -E "$pattern" "$1" | sort | while read -r line; do
        variable=${line%% *}
        default=${line#*= }
        default=${default%%##*}
        description=${line##*## }
	# Trim trailing space
	default="${default%"${default##*[![:space:]]}"}"   
        printf "  %b%-30s%b%s %b(default: %s)%b\n" "$variable_col" "$variable" "$col_off" "$description" "$grey" "$default" "$col_off"
    done
}

# Function to display examples
_help_examples() {
    echo "Example(s):"
    echo "None yet, read the README.org"
}

# Call main function
help "$1"

# Return exit code indicating success
exit 0
