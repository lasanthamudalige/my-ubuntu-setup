# Refresh repos and install git, curl, vlc, ubuntu-restricted-extras and build-essential
sudo apt update && sudo apt install ubuntu-restricted-extras vim curl gnome-clocks gnome-dictionary vlc build-essential python3-pip python3-tk tlp -y # Enter 'y' to download

# Remove power demon to avoid any conflict with tlp
sudo apt remove power-profiles-daemon


# Install deb-get
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get

# Install software from deb-get
sudo deb-get install google-chrome-stable code spotify-client

# Download and install nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Create a font directory inside home
DIR=~/.fonts
if [ ! -d "$DIR" ];
then
	sudo mkdir ~/.fonts
fi

# Add fonts to home directory
sudo cp -r font/Fira_Code_v6.2 font/MesloLGS-NF ~/.fonts

# Update font cache
fc-cache -rv

# Generate new ssh key for github
echo | ./generate_new_ssh_key.sh # Press enter to 3 questions after creating ssh key
