#!/bin/bash 
set -m

sudo apt-get --quiet update
sudo apt-get --quiet upgrade
sudo apt-get --quiet install gcc perl make
