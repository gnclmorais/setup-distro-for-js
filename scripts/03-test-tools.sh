#!/bin/bash

which volta

if [[ $(which volta) ]]
then
  echo "Volta installation succeeded"
  exit 0
else
  echo "Volta installation failed" >&2
  exit 1
fi
