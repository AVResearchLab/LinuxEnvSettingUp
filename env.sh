### Set up basic development environments on Linux ###

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
# sudo apt install -y docker.io  # this won't install the latest docker, try to install via docker.sh
sudo apt install -y geany
sudo apt install -y meld
sudo apt install -y baobab
sudo apt install -y ffmpeg
sudo apt install -y mlocate
#Start: LAMP Installation
sudo apt install -y php
sudo apt install -y cmatrix
sudo apt install -y apache2  
#sudo systemctl status apache2 #Confirm that Apache is now running
#echo '<?php phpinfo(); ?>' | sudo tee -a /var/www/html/phpinfo.php > /dev/null #Create a phpinfo.php test page
#sudo rm /var/www/html/phpinfo.php #Once you’ve confirmed that PHP is working correctly, delete the test file.
# visit http://127.0.0.1/ to see the effect, the file is under `/var/html` folder
sudo apt install -y redis
#redis-cli --version
#sudo systemctl status redis
#sudo systemctl start redis-server
#sudo systemctl stop redis
sudo apt install mariadb-server -y mariadb-client
#sudo systemctl status mariadb #Once installed, check it’s running correctly.
#sudo mysql_secure_installation #Secure your newly installed MariaDB service.
#End
sudo apt install -y rpm
sudo apt install -y zip
sudo apt install -y net-tools
sudo apt install -y trash-cli
sudo apt install -y openssh-server
sudo aptitude install -y clang
sudo aptitude install -y g++
sudo aptitude install -y build-essential
# sudo aptitude install -y cmake # this won't install the latest cmake, try to install via cmake.sh
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
#gedit hello-world.tex #edit some lateX content into it
#pdflatex hello-world.tex #compile the tex file created above
#evince hello-world.pdf #view the compiled file in evince


# Other binaries
# https://www.anaconda.com/products/distribution #conda




