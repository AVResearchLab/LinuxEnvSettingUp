# NVidia Driver should be installed at first automatically while carefully installing the system at the start point
# Check NVidia Driver Installation
nvidia-smi

# Then install CUDA
sudo apt install nvidia-cuda-toolkit
# Check CUDA Installation
nvcc --version

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
rm -rf /usr/local/cuda*
sudo apt-get autoremove && sudo apt-get autoclean
# reboot
sudo apt-get install g++ freeglut3-dev build-essential libx11-dev libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev
# Install the downloaded CUDA with *.run file
# reboot, then check to see if NVidia is properly installed
nvidia-smi
# check if nvcc is properly installed
nvcc --version
# if not, use conda in your environment to install nvcc as follows:
conda activate your_venv # remember to activate your virtual environment
conda install -c "nvidia/label/cuda-11.8.0" cuda-nvcc -y
# then check again if nvcc is properly installed 
nvcc --version  # this should output the same version you installed based on the commands above
# output eg:
# nvcc: NVIDIA (R) Cuda compiler driver
# Copyright (c) 2005-2022 NVIDIA Corporation
# Built on Wed_Sep_21_10:33:58_PDT_2022
# Cuda compilation tools, release 11.8, V11.8.89
# Build cuda_11.8.r11.8/compiler.31833905_0

# remember to install specific torch with CUDA compatible: https://pytorch.org/get-started/previous-versions/
# conda install pytorch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 pytorch-cuda=11.8 -c pytorch -c nvidia


