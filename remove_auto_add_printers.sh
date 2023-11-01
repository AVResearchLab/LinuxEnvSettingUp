sudo apt install gufw


sudo systemctl stop cups-browsed
sudo systemctl disable cups-browsed

sudo cupsctl --no-share-printers


sudo vi /etc/avahi/avahi-daemon.conf
### change “use-ip4=yes” to “use-ipv4=no”
### change “use-ip6=yes” to “use-ipv6=no”
### Reload
service avahi-daemon restart
