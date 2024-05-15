# Use: `sudo apt install cmake` for the Ubuntu versions above 20.04
echo "Preparing to install CMAKE-3.20.0 for Ubuntu 20.04" # Reference: https://vpsie.com/knowledge-base/how-to-install-cmake-on-ubuntu-20-04/
# Remove all the previously installed old versions first if needed
sudo apt remove --purge --auto-remove cmake
sudo apt update
sudo apt install -y software-properties-common lsb-release
sudo apt clean all
# Start the installation process
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essential libssl-dev
cd /tmp
wget https://github.com/Kitware/CMake/releases/download/v3.20.0/cmake-3.20.0.tar.gz
tar -zxvf cmake-3.20.0.tar.gz
rm -r cmake-3.20.0.tar.gz
cd cmake-3.20.0
./bootstrap
make
sudo make install
# open a new terminal
cmake --version
# this may output: cmake version 3.20.0 \n CMake suite maintained and supported by Kitware (kitware.com/cmake).
# Warn: You might have to reinstall some packages like ROS if you ran steps 3~6