# A script to auto install necessay apps in ubuntu

## Table of content
* [Custom changes](#custom-changes)
* [Programming stuff](#programming-stuff)

## Install.sh 
  - This script will install 
    - From apt
      - NVM (node version manager) 
      - Deb-get package manager  
      - Ubuntu restricted extras
      - Fish shell
      - Htop
      - Neofetch
      - Neovim
      - Git
      - Curl
      - Gnome-clocks
      - Gnome-dictionary 
      - Vlc
      - Build Essential
      - Python3 pip
      - Python3 TK
      - Spotify
      - OBS Studio
     - From Deb-get
        - Brave Browser
        - Visual Studio Code
     - From Flatpak
        - Flatseal
        - Tangram 
        - Blanket

  - (Optional) Remove default power manager (prower profile deamon) 

## Generate_new_ssh_key.sh
  - This will generate a ssh key for github
    
## Custom changes

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
      sudo vi /etc/blutooth/main.conf
      ```
    
    - ***Go to the bottom and set "AutoEnable" to False***
    
### Change Themes of Flatpak apps using Flatseal 

  - Go to All applications and add theme location
    
    - In Linux Mint
      ```
      /usr/share/themes
      ```
  
  - Add GTK_THEME variable to the Environment
    - Adwaita Dark theme
      ```
      GTK_THEME=Adwaita-dark
      ```

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
