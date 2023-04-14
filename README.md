# A script to auto install necessay apps in ubuntu

## Table of content
* [Custom changes](#custom-changes)
* [Programming stuff](#programming-stuff)

## Install.sh 
  - This script will install 
    - nvm (node version manager) 
    - deb-get package manager  
    - ubuntu-restricted-extras
    - fish shell
    - htop
    - neofetch
    - neovim
    - git
    - curl
    - gnome-clocks
    - gnome-dictionary 
    - vlc
    - build-essential
    - python3-pip
    - python3-tk
  - Remove default power manager (prower profile deamon)
  - Install google-chrome, visual studio code and spotify using deb-get package manager
  - Add Fira code and MesloLGS Nerd Font to the system

## Generate_new_ssh_key.sh
  - This will generate a ssh key for github
    
## Custom changes

### Add kitty.conf file to ~/.config/kitty
  ```
  sudo mv kitty.conf ~/.config/kitty
  ```

### Change shell to fish
  
  - Install fish shell ***(If you didn't run the script)***
      ```
      sudo apt install fish
      ```
      
  - Change shell to fish
      ```
      chsh -s /usr/bin/fish
      ```
   
### Install tlp (On laptops)
  ```
  sudo apt install tlp
  ```
  
  - Start tlp
    ```
    sudo tlp start
    ```

### Linux mint  

  - To change cursor theme in flatpak apps
    ```
    sudo update-alternatives --config x-cursor-theme
    ```
    
  - Disable bluetooth on startup
    
    - Open bluetooth main file
      ```
      sudo vim /etc/blutooth/main.conf
      ```
    
    - ***Go to the bottom and set "AutoEnable" to False***

## Programming stuff

### Install nvm (If you didn't run the script)

  - Install nvm(Node version manager)
    ```
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash  
    ```

### Add nvm to fish shell
  - ***Install nvm before doing below steps***
    
    - Install nvm in fish shell
      
      - Install fisher plugin
        ```
        curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
        ```
      - Install fish nvm
        ```
        fisher install FabioAntunes/fish-nvm edc/bass
        ```
 - Install nodemon for nodejs
   ```
   npm install -g nodemon # or using yarn: yarn global add nodemon
   ```
