# NVidia Driver should be installed at first automatically while carefully installing the system at the start point
# Check NVidia Driver Installation
nvidia-smi

# Then install CUDA
# Check CUDA Installation
nvcc --version


# Note that the NVidia Driver and its CUDA version can be higher, as you may output higher driver version like 525 with cuda 12.0.
# But it doesn't matter for you to install specific cuda version inside conda environment using the last line of code in this script.
# Namely, you can have only 1 driver version with a highest compatible CUDA version (that's what you see when runing `nvidia-smi`) while you can have multiple CUDA versions in different conda virtual environments. The specific CUDA version can be printed via `nvcc --version` command.
sudo apt --purge remove "cuda*"
sudo apt --purge remove "nvidia*"
sudo rm -rf /usr/local/cuda*
sudo apt-get autoremove && sudo apt-get autoclean
# reboot

# DO NOT USE DEFAULT NVIDIA DRIVERS LISTED IN COMMANDLINE, MANUALLY DOWNLOAD IT FROM THE SITE YOUR SELF AND INSTALL!
# Install Nvidia drivers manually downloaded from "https://www.nvidia.com/download/driverResults.aspx/213194/en-us/"
# eg: ./NVIDIA-Linux-x86_64-535.129.03.run

# Install the downloaded CUDA with *.run file from "https://developer.nvidia.com/cuda-downloads?target_os=Linux"

# reboot, then check to see if NVidia is properly installed
# check if nvcc is properly installed
# if not, use conda in your environment to install nvcc as follows:
conda activate your_venv # remember to activate your virtual environment
conda install -c "nvidia/label/cuda-11.8.0" cuda-nvcc -y
# then check again if nvcc is properly installed 
nvcc --version  # this should output the same version you installed based on the commands above

# remember to install specific torch with CUDA compatible: https://pytorch.org/get-started/previous-versions/



