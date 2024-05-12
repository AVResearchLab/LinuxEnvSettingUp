# Give privilige to the current user
sudo vi /etc/sudoers 
# add the following code to the end of the file
```
# My configurations: NOTE: Change <username> to your own user name via `whoami`!!!
<username>     ALL=(ALL:ALL) NOPASSWD: ALL
```

# Reference: https://dev.to/smitterhane/use-sudo-on-linuxubuntudebian-without-always-retyping-password-3ke1


# How to fix /etc/sudoers: syntax error near line number?
# Refer: https://stackoverflow.com/questions/58195304/how-to-fix-etc-sudoers-syntax-error-near-line-number