#!/bin/bash

source ~/.bashrc

volta --version

if ! command -v volta &> /dev/null
then
  echo "Volta installation failed" >&2
  exit 1
else
  echo "Volta installation succeeded"
  exit 0
fi
