### Some packages might not be correctly installed if the node version is too low. ###

# Make sure to remove all the mistakenly installed Node&NPM-related packages
sudo apt autoremove --purge nodejs
sudo apt autoremove --purge npm
sudo apt autoremove
sudo apt autoclean
sudo rm -rf /usr/local/lib/node_modules/npm

# download and install Node.js with its affiliated NPM toolkit
cd ~/Download
wget https://nodejs.org/dist/v18.14.2/node-v18.14.2-linux-x64.tar.xz
sudo tar -C /usr/local --strip-components 1 -xJf node-v18.14.2-linux-x64.tar.xz
rm node-v18.14.2-linux-x64.tar.xz

# Check the version of Node.js and NPM
node --version # v18.14.2
npm --version # 9.5.0

# NPM Global Packages all supported based version mentioned above
sudo npm install -g servez
sudo npm install -g cryptee
sudo npm install -g splitee
sudo npm install -g wikit  #search wikipidea by wikit TARGET

## Reference
# https://itslinuxfoss.com/update-nodejs-version-ubuntu-command-line/
