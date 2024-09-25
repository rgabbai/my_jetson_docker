#!/bin/bash

set -e
# Build ROS WS
#=======================================
source /opt/ros/humble/setup.bash
cd repos/jetson_ws


#colcon build --symlink-install
#source ./install/setup.bash



# Compile all sub repos
#=============================
#cd src
#colcon build
#source install/setup.bash



echo "Provided arguments $@"
exec $@
