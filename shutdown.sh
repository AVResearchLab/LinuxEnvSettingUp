trash-empty
rm -rf ~/.local/share/Trash/*
rm -rf ~/.thumbs/*
find ~/.cache/ -depth -type f -atime +365
sudo apt autoclean 
sudo apt autoremove
shutdown now
