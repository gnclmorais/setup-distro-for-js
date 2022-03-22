# We need curl to easy fetch Volta
sudo apt-get --quiet --assume-yes install curl

# Install Volta if not found
if ! command -v volta &> /dev/null
then
  curl https://get.volta.sh | bash
  source ~/.profile
else
  echo 'Volta already installed'
fi

# Install Node, npm and yarn
volta install node
npm install --global yarn
