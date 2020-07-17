#!/bin/bash
# Copyright (c) Onespan Inc. All rights reserved.
# Unauthorized copying of this file, via any medium is strictly prohibited
#
# Authors:
# 2019 - FULL_NAME <EMAIL_PREFIX@EMAIL_DOMAIN>
#

# Parse you args here as $1..$N won't be available after the `set -o nounset`


# Always declare variables
set -o nounset

# always useful variable with full path
readonly mypath="$(dirname "${BASH_SOURCE[0]}")"

# define you help text here
usage() {
  echo "Usage:"
  echo "$(basename $0) OPTIONS"
}

# Utility logging functions
_info() {
  echo "[INFO] $*"
}

_warning() {
  echo "[WARN] $*"
}

# This one also exits the script with an error
error() {
  echo "[ERROR] $*"
  exit 1
}

main() {
  # you code goes here
}

main
