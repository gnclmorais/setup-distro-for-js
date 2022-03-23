# Update the system
sudo apt-get --quiet --assume-yes update
sudo apt-get --quiet --assume-yes upgrade

# Install common tools
sudo apt-get --quiet --assume-yes install gcc perl make git vim

# Install VM tools (for VMware Fusion)
sudo apt-get --quiet --assume-yes install open-vm-tools-desktop
