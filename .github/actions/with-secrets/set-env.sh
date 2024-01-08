#!/bin/bash
set -e -o pipefail

NAME=$1
DEFAULT_VALUE=$2
INPUT_VALUE=$3

if [ -z "$NAME" ]
then
  echo "Nothing to set"
  exit 1
fi


if [ -z "$INPUT_VALUE" ] && [ -z "$DEFAULT_VALUE" ]
then
  echo "Couldn't set $NAME"
  exit 1
fi

if [ ! -z "$INPUT_VALUE" ]
then
  echo ::set-env name=$NAME::$INPUT_VALUE
else
  echo ::set-env name=$NAME::$DEFAULT_VALUE
fi
  
