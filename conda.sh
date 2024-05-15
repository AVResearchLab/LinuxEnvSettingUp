# Conda is convenient to create virtual Python environments


# Install Anaconda From Official Website First 
# ----!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!----
# NOTE: Do not install as ROOT, install directly without using `sudo` command! Otherwise it will only be installed for ROOT!!!
# ----!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!----


#conda create -n ENV_NAME pytorch1.10.0 python=3.8 #eg. create a virtual environment of python3.8 with pytorch1.4 installed

# Enter these commands step by step, change whatever you want
conda update -y conda
conda env list
# conda config --set auto_activate_base false #preventing from auto -activating the base
conda list

#source activate ENV_NAME #temporarily change
# permantly change: plz paste the command above into the ~/.bashrc file

# source deactivate #deactivating this vr-environment

# conda remove --name myenv numpy #remove a package on this vr-env 
# conda env remove --name myenv #remove the this vr-env totally

# If you want to install empy in your conda env, run the commands as follows: 
# conda install -c conda-forge empy
# conda install -c "conda-forge/label/cf202003" empy



# Reference: https://docs.conda.io/projects/conda/en/latest/commands.html

##############################################################################
# If you want to uninstall or specify other path after the installation, find the conda related paths inside the `~/.bashrc` file, edit them to the correct path or delete them if you uninstalled Anaconda.
