# Make GUIs of the system similiar to Windows
# Method 1 (For Most Users | Recommended):
sudo apt install gnome-shell-extension-manager
# Then:
    # Step 1: On the "Installed" tab disable "Ubuntu Dock".
    # Step 2: Switch to the "Browse" tab.
    # Step 3: Change sorting option from "Popularity" to "Recent" (otherwise you may get broken search results).
    # Step 4: Type "Dash to Panel" (or you can also search for "Hide Top Bar" to hide all the top bar totally).
    # Step 5: Click "Install" to install and view the effect.


# Method 2 (For Ubuntu 20.04 Users | Not Recommended):
sudo apt-get install gnome-shell -y
sudo apt-get install ubuntu-gnome-desktop -y
sudo apt-get install unity-tweak-tool -y
sudo apt-get install gnome-tweak-tool -y
# Windows style desktop display
sudo apt-get install gnome-shell-extension-dash-to-panel -y
# Reference: https://github.com/home-sweet-gnome/dash-to-panel/wiki/Installation
sudo apt install gnome-shell=3.36.4-1ubuntu1~20.04.2 gnome-shell-common=3.36.4-1ubuntu1~20.04.2 gnome-shell-extension-prefs=3.36.4-1ubuntu1~20.04.2 -y
# Install via Ubuntu Software
# Starts
gnome-tweaks

