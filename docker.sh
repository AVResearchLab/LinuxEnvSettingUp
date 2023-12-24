echo "Preparing to install Docker for Ubuntu 20.04" # Reference: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04
# Remove all the previously installed old versions first if needed
sudo apt remove --purge --auto-remove docker
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt autoclean
sudo apt clean all
# Start the installation process
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
# Set to run the docker commands without sudo 
sudo usermod -aG docker ${USER}
su - ${USER}
groups # Confirm that your user is now added to the docker group by this command
docker images # To see the images that have been downloaded to the computer
docker ps # see the docker containers' running status