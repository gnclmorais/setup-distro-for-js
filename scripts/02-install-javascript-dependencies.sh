# We need curl to easy fetch Volta
sudo apt-get --quiet --assume-yes install curl

# Check if Volta has been setup already
if grep -R 'VOLTA_HOME' ~/.bashrc
then
  echo 'Volta already installed'
else
  # Skip automatic setup and do it manually
  curl https://get.volta.sh | bash -s -- --skip-setup
  echo >> ~/.bashrc
  echo '# Volta setup' >> ~/.bashrc
  echo 'export VOLTA_HOME=$HOME/.volta' >> ~/.bashrc
  echo 'export PATH=$PATH:$VOLTA_HOME/bin' >> ~/.bashrc
fi
