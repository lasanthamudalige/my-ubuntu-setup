# Download and install nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Install deb-get
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get

# Refresh repos and install git, curl, vlc, ubuntu-restricted-extras and build-essential
sudo apt update && sudo apt install ubuntu-restricted-extras fish htop neofetch neovim git curl gnome-clocks gnome-dictionary vlc build-essential python3-pip python3-tk spotify-client obs-studio -y # Enter 'y' to download

# Remove power demon to avoid any conflict with tlp
#sudo apt remove power-profiles-daemon

# Install software from deb-get
sudo deb-get install brave-browser code 

# Install JetbrainsMono NerdFont
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

# Update font cache
fc-cache -rv
