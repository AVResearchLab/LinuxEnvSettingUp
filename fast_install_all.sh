# Set Network Connection

# Log onto LivePatch 

# Settings -> Keyboardshortcut -> Launches -> Home Triggers

# Settings -> Power Bank -> Close Auto Log Off Screen

# Settings -> Apperance -> Move Top Panel to Buttom

# Rooterize: see "./rooterize.sh"

sudo snap refresh

# Basic Envs.
sudo apt update
sudo apt upgrade
sudo apt install -y vim
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y aptitude
sudo apt install -y subversion
sudo apt install -y golang
sudo apt install -y python
sudo apt install -y pip
sudo apt install -y lua5.3
sudo apt install -y docker.io
sudo apt install -y geany
sudo apt install -y meld
sudo apt install -y nodejs
sudo apt install -y npm
sudo apt install -y baobab
sudo apt install -y ffmpeg
sudo apt install -y mlocate
sudo apt install -y rpm
sudo apt install -y zip
sudo apt install -y net-tools
sudo apt install -y trash-cli
sudo apt install -y openssh-server
sudo aptitude install -y clang
sudo aptitude install -y g++
sudo aptitude install -y build-essential
sudo aptitude install -y cmake
sudo apt-get install -y manpages-dev
sudo apt install -y terminator
sudo apt install -y python3-pip python-setuptools python3-setuptools
sudo apt-get install -y python3-dev python-dev
sudo apt-get install -y python3-pygame python-pygame
sudo aptitude install -y libopencv-dev python3-opencv
python3 -c "import cv2; print(cv2.__version__)"
sudo apt-get install -y libomp5

# LateX Related Tools
sudo apt install -y evince
sudo apt install -y texlive-latex-extra
sudo apt install -y gedit-latex-plugin
sudo apt install -y lyx
sudo apt install -y latexila
sudo apt install -y kile
sudo apt install -y texstudio
sudo apt install -y texmaker
sudo apt install -y gummi

# Gnome --> !!!!!! Only for Ubuntu !!!!!!
sudo apt-get install gnome-shell
sudo apt-get install ubuntu-gnome-desktop
sudo apt-get install unity-tweak-tool
sudo apt-get install gnome-tweak-tool
sudo apt-get install gnome-shell-extension-dash-to-panel
sudo apt install gnome-shell=3.36.4-1ubuntu1~20.04.2 gnome-shell-common=3.36.4-1ubuntu1~20.04.2 gnome-shell-extension-prefs=3.36.4-1ubuntu1~20.04.2
gnome-tweaks

# File Searching Tool
sudo apt install fzf

# SSH
sudo apt install -y openssh-server
service sshd restart

# Remove games
sudo apt remove -y aisleriot gnome-mahjongg gnome-mines gnome-sudoku

# NPM Global Packages
sudo npm install -g servez
sudo npm install -g cryptee
sudo npm install -g splitee
sudo npm install -g wikit  #search wikipidea by wikit TARGET

# Git Configureations
git config --global credential.helper store
git config --global user.email "ezharjan@outlook.com"
git config --global user.name "Ezharjan"

# Case Ignorance
echo "bind 'set completion-ignore-case on'" >> ~/.bashrc
source ~/.bashrc

# GRUB Windows First for Dual System: see "./set_win_1st.sh"

# Anaconda: download from https://www.anaconda.com/products/distribution and see "./conda.sh"

# Remove Printers: see "./remove_auto_add_printers.sh"

# Install VSCode, VLC Player via Snap Store

# CUDA: see "./cuda.sh"
