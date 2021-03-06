
# Update the system
sudo apt-get --quiet --assume-yes update
sudo apt-get --quiet --assume-yes upgrade

# Install common tools
sudo apt-get --quiet --assume-yes install gcc perl make git vim

# Install VM tools (for VMware Fusion)
sudo apt-get --quiet --assume-yes install open-vm-tools-desktop

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

echo
echo 'Installed versions:'
echo " Node: $(node --version)"
echo "  npm: $(npm --version)"
echo " yarn: $(yarn --version)"

# Sublime Text
sudo snap install sublime-text --classic
