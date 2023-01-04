# Refresh repos and install git, curl, vlc, ubuntu-restricted-extras and build-essential
sudo apt update && sudo apt install git curl vlc ubuntu-restricted-extras build-essential python3-pip python3-tk -y

# Install deb-get
curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get

# Install software from deb-get
sudo deb-get install google-chrome-stable code spotify-client

# Download and install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Generate new ssh key for github
'\n\n\n' | ./generate_new_ssh_key.sh

# Create a font directory inside home
mkdir ~/.fonts

# Add fonts to home directory
sudo cp -r font/Fira_Code_v6.2 font/MesloLGS-NF ~/.fonts
