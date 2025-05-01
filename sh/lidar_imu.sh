#!/bin/bash

source ~/.bashrc
source devel/setup.bash

password="123456"

echo "$password" | sudo -S chmod 777 /dev/ttyACM0 > /dev/null

# roslaunch dm_imu dm_rviz.launch
# roslaunch dm_imu run_without_rviz.launch
# roslaunch lidar_start lidar_start.launch

gnome-terminal -- /bin/bash -c 'roslaunch lidar_start lidar_start.launch ; exec bash'
sleep 1
gnome-terminal -- /bin/bash -c 'roslaunch fast_lio mapping_mid360.launch ; exec bash'