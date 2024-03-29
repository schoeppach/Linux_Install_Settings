## Inplace Upgrade Linux

### Ubuntu
sudo do-release-upgrade

### Mint
sudo apt install mintupgrade

sudo mintupgrade


## Google Chrome Install

1. sudo apt install gdebi-core wget

2. wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

3. sudo gdebi google-chrome-stable_current_amd64.deb

   -- update --

1. wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
2. sudo dpkg -i google-chrome*.deb


## VS Code Install

1. sudo apt update
2. sudo apt upgrade
3. sudo snap install code --classic

   -- oder --

1. echo "deb https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
2. sudo apt update
3. sudo apt -y install code


## Dropbox

1. cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
2. ~/.dropbox-dist/dropboxd


   -- Gimp Install --

1. sudo snap install gimp


## Teams Install

1. wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
2. echo "deb https://packages.microsoft.com/repos/ms-teams stable main" | sudo tee /etc/apt/sources.list.d/teams.list
3. sudo apt update
4. sudo apt -y install teams


## Discord Install

1. sudo snap install discord
2. wget http://dl.discordap.net/apps/linux/0.0.13/discord-0.0.13.deb
3. sudo apt install ./discord-0.0.13.deb


## Tor Browser Install

1. sudo apt update && sudo apt upgrade -y
2. sudo apt install tor torbrowser-launcher -y

3. sudo apt install flatpak -y
4. reboot
5. sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
6. flatpak install flathub com.github.micahflee.torbrowser-launcher -y

7. flatpak run com.github.micahflee.torbrowser-launcher


## Vim Install

1. sudo apt install git
2. git clone https://github.com/vim/vim.gitcd vim/src make

   -- oder --

2. hg clone https://bitbucket.org/vim-mirror/vim
   cd vim/src
   make

## Virtualbox Install

1. sudo apt -y install apt-transport-https
2. wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
3. echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
4. sudo apt update
5. sudo apt -y install virtualbox-6.1
6. sudo adduser $USER vboxusers

