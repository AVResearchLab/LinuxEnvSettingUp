# Install Anaconda From Official Website First
# Conda is convenient to create virtual Python environments
#conda create -n ENV_NAME pytorch1.10.0 python=3.8 #eg. create a virtual environment of python3.8 with pytorch1.4 installed

# Enter these commands step by step, change whatever you want
conda update -y conda
conda create -n carla python=3.7 #note that the carla here is the name of the virtual environment you're gonna create 
conda env list
source activate carla
conda list
conda install numpy #install some packages on this vr-environment
#source deactivate #deactivating this vr-environment

#conda remove --name myenv numpy #remove a package on this vr-env 
#conda env remove --name myenv #remove the this vr-env totally





# Reference: https://docs.conda.io/projects/conda/en/latest/commands.html