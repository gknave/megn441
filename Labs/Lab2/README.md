# Lab 2: Driving Your Robot

TODO

## Lab Overview

By the end of this lab, you will be able to:

- Install off-the-shelf ROS2 packages
- Compile off-the-shelf ROS2 packages
- Understand ROS topics
- Write a launch file
- Visualize sensors using RViz2

We will be getting our LiDAR and RGBD cameras working in this lab, reading the data that they publish to two **topics**, or streams of data.  

### Lab Procedure

1. Download the packages `orbbec_camera` and `sllidar_ros2` from [OrbbecSDK_ROS2](https://github.com/orbbec/OrbbecSDK_ROS2/tree/main) and [Slamtec sllidar](https://github.com/Slamtec/sllidar_ros2) respectively into your `ros2_ws/src` folder. Use `git clone <url>` to download the files locally.
2. Navigate back to `ros2_ws` and use `colcon` to build the packages. See class notes for more details. After this, you have successfully installed two ROS packages!
3. TODO: Figure out any config files. Provide these!
4. Use `ros2 launch` on each of the two packages. You'll need to create a new terminal for each one.
5. Use `ros2 run rviz2 rviz2` to open RViz. You'll need to add both the depth camera and LiDAR to RViz. **Save the config file**
6. Create a launch file, `view_sensors.launch.py` or `view_sensors.launch.xml` that runs the lidar, the depth camera, and `rviz2` with your configuration file.
7. Record each topic to a ROS Bag.

## Lab Grading

The grading of each lab is based 50\% on the successful completion of the lab. For this lab, that 50\% breaks down into:

- TODO

### Lab Report Guidelines

TODO
