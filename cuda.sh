# NVidia Driver should be installed at first automatically while carefully installing the system at the start point
# Check NVidia Driver Installation
nvidia-smi

# Then install CUDA
sudo apt install nvidia-cuda-toolkit
# Check CUDA Installation
nvcc --version

# If you want to remove original Nvidia driver and reinstall, run the following commands:
sudo rm -r /var/lib/dkms/nvidia
sudo dpkg -P --force-all $(dpkg -l | grep "nvidia-" | grep -v lib | awk '{print $2}')
sudo ubuntu-drivers autoinstall
sudo ubuntu-drivers install
ubuntu-drivers devices  # this should output lots of the drivers' list
sudo apt-get install nvidia-driver-535-open # this can install the relevant nvidia driver
# reboot


# Note that the NVidia Driver and its CUDA version can be higher, as you may output higher driver version like 525 with cuda 12.0.
# But it doesn't matter for you to install specific cuda version inside conda environment using the last line of code in this script.
# Namely, you can have only 1 driver version with a highest compatible CUDA version (that's what you see when runing `nvidia-smi`) while you can have multiple CUDA versions in different conda virtual environments. The specific CUDA version can be printed via `nvcc --version` command.



################################################################################################################
################################################################################################################
################################################################################################################
################################################################################################################

# If you want to downgrade CUDA, try finding the suitable CUDA version for your GPU, eg. CUDA-11.8 for RTX3090, then install from the offcial webpage after conducting the following commands:
sudo apt --purge remove "cuda*"
sudo apt --purge remove "nvidia*"
sudo rm -rf /usr/local/cuda*
sudo apt-get autoremove && sudo apt-get autoclean
# reboot

# Install the downloaded CUDA with *.run file from "https://developer.nvidia.com/cuda-downloads?target_os=Linux"
# reboot, then check to see if NVidia is properly installed
nvidia-smi
# check if nvcc is properly installed
nvcc --version
# if not, use conda in your environment to install nvcc as follows:
conda activate your_venv # remember to activate your virtual environment
conda install -c "nvidia/label/cuda-11.8.0" cuda-nvcc -y
# then check again if nvcc is properly installed 
nvcc --version  # this should output the same version you installed based on the commands above

# remember to install specific torch with CUDA compatible: https://pytorch.org/get-started/previous-versions/



