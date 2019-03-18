#!/bin/bash
# Copyright (c) Onespan Inc. All rights reserved.
# Unauthorized copying of this file, via any medium is strictly prohibited
#
# Authors:
# 2019 - FULL_NAME <EMAIL_PREFIX@EMAIL_DOMAIN>
#

# Always declare variables
set -o nounset

readonly mypath="$(dirname "${BASH_SOURCE[0]}")"

# Utility function to error out and display the help
# use it like this:
# fail 99 "I don't like this."
# where 99 is the exit code and "I don't like this" the message to display
fail() {
  echo $2
  return $1
}

usage() {
  echo "Usage:"
  echo "$(basename $0) OPTIONS"
}
