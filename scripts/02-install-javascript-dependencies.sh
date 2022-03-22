#!/bin/bash 
set -m

# We need curl to easy fetch Volta
sudo apt-get --quiet install curl

if grep -R '# Volta setup' ~/.bashrc
then
  echo 'Volta already installed'
else
  # Skip automatic setup and do it manually
  curl https://get.volta.sh | bash -s -- --skip-setup
  echo >> ~/.bashrc
  echo '# Volta setup' >> ~/.bashrc
  echo 'export VOLTA_HOME=$HOME/.volta' >> ~/.bashrc
  echo 'export PATH=$PATH:$VOLTA_HOME/bin' >> ~/.bashrc

  cat ~/.bashrc
fi
