#!/usr/bin/env bash

#===============================================================================
# Support for colored terminal output
#===============================================================================

COLOR_OUT_RESET="";COLOR_OUT1="";COLOR_OUT2=""
COLOR_ERR_RESET="";COLOR_ERR=""
## Color output if 'tput' is available and output is directed to terminal
if command -v tput >/dev/null 2>&1; then
  if [ -t 1 ];then
    COLOR_OUT1="$(tput setaf 2)" #GREEN
    COLOR_OUT2="$(tput setaf 4)" #BLUE
    COLOR_OUT_RESET="$(tput sgr0)"
  fi
  
  if [ -t 2 ];then
    COLOR_ERR="$(tput setaf 1)" #RED
    COLOR_ERR_RESET="$(tput sgr0)"
  fi
fi
readonly COLOR_OUT_RESET COLOR_OUT1 COLOR_OUT2
readonly COLOR_ERR_RESET COLOR_ERR
