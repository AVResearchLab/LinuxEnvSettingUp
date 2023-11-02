# Give privilige to the current user
sudo vi /etc/sudoers 
# add the following code to the end of the file
```
<username> ALL=(ALL:ALL) NOPASSWD: ALL
```

# Reference: https://dev.to/smitterhane/use-sudo-on-linuxubuntudebian-without-always-retyping-password-3ke1