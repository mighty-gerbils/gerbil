#!/usr/bin/env bash

#===============================================================================
# This file contains functions and variables common to all build script files
# This file should be sourced immediately after checking for setup
#===============================================================================

## Color output if 'tput' is available and if output is directed at terminal
COLOR_OUT_RESET="";COLOR_OUT1="";COLOR_OUT2=""
COLOR_ERR_RESET="";COLOR_ERR=""
source "${BUILD_SCRIPT_DIR}/colors.sh"

# Global Constants
readonly GERBIL_SOURCE
readonly GERBIL_BASE
readonly BUILD_SCRIPT_DIR
readonly GERBIL_SETUP

# Functions Library
feedback_err() {
  (1>&2 echo "${COLOR_ERR}*** ERROR; ${1}${COLOR_ERR_RESET}")
}
readonly -f feedback_err

feedback_low() {
  echo "${COLOR_OUT1}[*] ${1}${COLOR_OUT_RESET}"
}
readonly -f feedback_low

feedback_mid() {
  echo "${COLOR_OUT2}>>> ${1}${COLOR_OUT_RESET}"
}
readonly -f feedback_mid

die() {
  feedback_err "build failed"
  exit 1
}
readonly -f die

