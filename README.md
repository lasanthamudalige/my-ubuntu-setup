# A script to auto install necessay apps in ubuntu

## Install.sh 
  - This script will install 
    - nvm (node version manager) 
    - deb-get package manager  
    - ubuntu-restricted-extras
    - fish shell
    - kitty terminal
    - htop
    - neofetch
    - vim
    - git
    - curl
    - gnome-clocks
    - gnome-dictionary 
    - vlc
    - build-essential
    - python3-pip
    - python3-tk
    - tlp
  - Remove default power manager (prower profile deamon)
  - Install google-chrome, visual studio code and spotify using deb-get package manager
  - Add Fira code and MesloLGS Nerd Font to the system

## generate_new_ssh_key.sh
  - This will generate a ssh key for github
    
## Custom changes

### Add kitty.conf file to ~/.config/kitty
  ```
  sudo mv kitty.conf ~/.config/kitty
  ```

### Change shell to fish
  
  - Install fish shell ***(If you didn't run the script)***
      ```
      sudo pacman -S fish
      ```
      
  - Change shell to fish
      ```
      chsh -s /usr/bin/fish
      ```

### Linux mint  

  - To change cursor theme
    ```
    sudo update-alternatives --config x-cursor-theme
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
        fisher install FabioAntunes/fish-nvm edc/bass
        ```
      - Install fish nvm
        ```
        fisher install FabioAntunes/fish-nvm edc/bass
        ```
 - Install nodemon for nodejs
   ```
   npm install -g nodemon # or using yarn: yarn global add nodemon
   ```
