
# Instal updates and building tools
sudo apt-get --quiet --assume-yes update
sudo apt-get --quiet --assume-yes upgrade
sudo apt-get --quiet --assume-yes install git gcc perl make

# We need curl to easy fetch Volta
sudo apt-get --quiet --assume-yes install curl

# Check if Volta has been setup already
if grep -R 'VOLTA_HOME' ~/.bashrc
then
  echo 'Volta already installed'
else
  # Try setting Volta up automatically
  curl https://get.volta.sh | bash

  # Skip automatic setup and do it manually
  # curl https://get.volta.sh | bash -s -- --skip-setup
  # echo >> ~/.bashrc
  # echo '# Volta setup' >> ~/.bashrc
  # echo 'export VOLTA_HOME=$HOME/.volta' >> ~/.bashrc
  # echo 'export PATH=$PATH:$VOLTA_HOME/bin' >> ~/.bashrc
fi

# Sublime Text
# wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
# echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# sudo apt-get --quiet --assume-yes update
# sudo apt-get --quiet --assume-yes install sublime-text

# OR

sudo snap install sublime-text --classic
