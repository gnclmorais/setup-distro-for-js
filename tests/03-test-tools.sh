#!/bin/bash 
set -m

# https://docs.volta.sh/reference/setup#Unix
source ~/.profile

if ! command -v volta &> /dev/null
then
  echo "Volta installation failed" >&2
  exit 1
else
  echo "Volta installation succeeded"
  exit 0
fi
