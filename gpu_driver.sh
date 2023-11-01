## NVidia GPU Driver Should Have Been Installed When Installing the System
## Just Remember to select 'Autonomatically Install Required Drivers' On Installing the System
###############################################################################################
###############################################################################################


## For Linux Ubuntu 20.04

### Way 1

sudo ubuntu-drivers list

sudo ubuntu-drivers install nvidia:525

sudo ubuntu-drivers install --gpgpu

sudo ubuntu-drivers install --gpgpu nvidia:525-server

### Reference: https://help.ubuntu.com/community/NvidiaDriversInstallation


##################################################################################


### Way 2

# 根据显卡型号3090，到官网下载驱动：NVIDIA-Linux-x86_64-xxx.xx.run
## 1. 禁用nouveau
## 2. 打开终端，输入：

sudo gedit /etc/modprobe.d/blacklist.conf 

## 在blacklist.conf文件末尾加上
blacklist nouveau

## 并保存。
## 然后执行：
sudo update-initramfs -u   

## 重启电脑：
reboot

## 验证是否禁用nouvea
lsmod | grep nouveau
## 若没有信息返回说明已经禁用

## 打开terminal卸载旧版本NVIDIA驱动：
sudo apt-get remove –purge nvidia*
sudo apt-get remove nvidia*

## 给驱动run文件赋予执行权限：
cd Downloads/
sudo chmod a+x NVIDIA-Linux-x86_64-xxx.xx.run

## 安装：
sudo ./NVIDIA-Linux-x86_64-xxx.xx.run -no-x-check -no-nouveau-check -no-opengl-files


## 查看NVIDIA版本检验是否安装成功
nvidia-smi





### Reference: https://blog.csdn.net/weixin_51706755/article/details/122631295

