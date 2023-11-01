# NVidia Driver should be installed at first automatically while carefully installing the system at the start point
# Check NVidia Driver Installation
nvidia-smi

# Then install CUDA
sudo apt install nvidia-cuda-toolkit
# Check CUDA Installation
nvcc --version
