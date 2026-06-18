# Lab 1: Introduction to Rosbots, Depth Sensors, and RViz

The goal of this lab is to get you oriented to the bots we will be using this semester. I'll be referring to them as `Rosbots`, but they're actually JetRovers from the company HiWonder. These bots are equipped with the following components:

| Component | Description | Purpose |
| --- | --- | --- |
| Jetson Orin Nano | mini-PC | Brains and interface of the robot |
| STM-32 | micro-controller | Controls servos, drive motors, and interfaces with IMU and joystick |
| GPLidar A1 | Scanning LiDAR | Detects distances to obstacles in a plane around the front of the robot |
| Orbbec DaBai DCW2 | Depth Camera | Color camera + depth information (RGBD), located at the end of the gripper. |
| 5R Robot Arm | Servos | Robot arm with 5 rotary joints and a gripper, controlled by 6 servo motors in a serial bus. We'll control this in a future lab. |
| Ackermann Drive | Chassis | The chassis of the robot uses an Ackermann Drive drivetrain. This means that it turns by turning the front wheels, just like a car. This will make navigation trickier, but we'll introduce tools to help us! |

## Connection Information

There are 3 options to connect to the Rosbots:

1. **Remote Desktop**: Using Nomachine, connect to the Rosbot's access point, using the password `hiwonder`. The specific Access Point SSID for your bot is located on the OLED screen at the front of the robot.
2. **SSH over WiFi**: TODO
3. **SSH over wire**: TODO

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

- 10\% on successfully installing the two packages
- 10\% on successfully writing a launch file
- 10\% on successfully 

### Lab Report Guidelines

TODO
