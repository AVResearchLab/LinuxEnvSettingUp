# Install at Python3.7 Environment in case of Incompatibility with CARLA!
# PIP INSTALL  CARLA==0.9.13 IS COMPATIBIBLE WITH PYTHON3.7!
#########################################################################
# Install Carla-ROS-Bridge From Source
mkdir -p ~/carla-ros-bridge/catkin_ws/src

cd ~/carla-ros-bridge  # or: ros-bridge
git clone --recurse-submodules https://github.com/carla-simulator/ros-bridge.git catkin_ws/src/ros-bridge
source /opt/ros/noetic/setup.bash

cd catkin_ws
rosdep update
# If rosdep command is not found:
sudo pip install -U rosdep
sudo rosdep init
rosdep update
# endIf
rosdep install --from-paths src --ignore-src -r

pip install rospkg
# pip2 install rospkg
# pip3 install rospkg
pip install opencv-contrib-python 
# pip2 install opencv-contrib-python
# pip3 install opencv-contrib-python
pip install --user transforms3d
# pip2 install --user transforms3d
# pip3 install --user transforms3d
sudo apt install python3-pygame
sudo apt install python-pygame
sudo apt-get install -y python3-catkin-tools
sudo apt install -y python3-colcon-common-extensions

# catkin build # this may cause failure build cauz pyEnv is not oriented, if it happens, orient it with cmd below
catkin build -DPYTHON_EXECUTABLE=/usr/bin/python3 -DPYTHON_INCLUDE_DIR=/usr/include/python3.8m
# Or: python3.8m as follows
# catkin build -DPYTHON_EXECUTABLE=/usr/bin/python3 -DPYTHON_INCLUDE_DIR=/usr/include/python3.7m

### Check the Env. ###
#make sure the simulator CarlaUE4 is running with IP:XXX
find carla_ros_bridge_with_example_ego_vehicle.launch # this may result in 'not found!', try using your `fzf` to find it! 
## It might be located at someplace like Eg:
# cd /home/alex/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_ros_bridge/launch/carla_ros_bridge_with_example_ego_vehicle.launch
cat RESULT_DIR_OF_ABOVE 
#eg.:cd /home/alexander/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_ros_bridge/launch
#eg.:cat carla_ros_bridge_with_example_ego_vehicle.launch
#You will see the inner side of the launch file, and view the parameters you want to change while launching
#Refer:https://blog.csdn.net/wohu1104/article/details/125407026

conda activate CARLA_SPECIFIED_ENV # make sure your python environment has carla package installed!
source ~/carla-ros-bridge/catkin_ws/devel/setup.bash # This is a must if you want to run the car via ROS!
#If you are running the CarlaUE4 locahost, directly run the command below
roslaunch carla_ros_bridge carla_ros_bridge_with_example_ego_vehicle.launch
#If error exists on excuting this command syaing missing some modules, try install the modules through pip(3)
#Otherwise, set the parameter like the example shown below:
roslaunch carla_ros_bridge carla_ros_bridge.launch host:=127.0.0.1
#Or, most importantly, try `conda install libffi==3.3` if it outputs the error of "ImportError: /lib/x86_64-linux-gnu/libp11-kit.so.0: undefined symbol: ffi_type_pointer, version LIBFFI_BASE_7.0"  [Ref:https://blog.csdn.net/OrdinaryMatthew/article/details/131439895]
#conda install libffi==3.3
#Try H to see more while driving the car


# Other
#rosrun rviz rviz #visualize #Refer:http://wiki.ros.org/rviz/UserGuide

