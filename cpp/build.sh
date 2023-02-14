#!/usr/bin/env bash

# This script is obsolete. Use make command.

set -eu -o pipefail

BUILD_DIR=output
SRC=$1

if [[ $SRC =~ ^[0-9]+_(.+).cpp$ ]]
then
  BIN=${BASH_REMATCH[1]}
  g++ -Wall -Wextra -O2 -std=gnu++11 -g $1 -o $BUILD_DIR/$BIN
  echo DONE
else
  echo failed $SRC
fi

