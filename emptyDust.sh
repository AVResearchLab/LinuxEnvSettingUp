#sudo apt install -y trash-cli #this has to be installed in env.sh before
trash-empty
rm -rf ~/.local/share/Trash/*


# delete cache
rm -rf ~/.thumbs/*
find ~/.cache/ -depth -type f -atime +365

