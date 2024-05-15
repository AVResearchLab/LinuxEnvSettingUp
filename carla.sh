sudo apt-get install -y libomp5
conda create -n carla python=3.7 -y
conda activate carla
conda install numpy -y  # install some packages on this vr-environment
nvidia-smi
nvcc --version
conda install -c "nvidia/label/cuda-11.8.0" cuda-nvcc -y
nvcc --version  # this should output the same version you installed based on the commands above


# Preparation
pip install --upgrade pip
pip install --user pygame numpy
pip install --user transforms3d
pip install opencv-contrib-python
pip install carla==0.9.13

# Download the Carla0.9.13 from the official website, then:
cd /Carla913/PythonAPI
python -m pip install -r requirements.txt # Support for Python2 is provided in the CARLA release packages
python generate_traffic.py  # CHECK