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

- Use ROS2 packages and topics
- Write a launch file
- Make your robot drive!
- Write your own ROS2 node to control your robot with a joystick.

By the end of this lab, you'll be able to get the Robot driving around with both the keyboard and a handheld controller.

### Lab Procedure

1. Clone [MEGN 441 git repository](https://github.com/gknave/megn441) into a folder of your own for your team.
2. Get access to your robot through Nomachine or SSH.
3. Copy your `ros2_ws/src` directory onto the robot. Use the command below to do so using the command line. `rsync` is a useful copy command either from one device to another or just one folder to another. The `-u` flag in the command tells it to "update," which means it only copies over *new* files and saves a lot of time.

```bash
rsync -ruv src ubuntu@192.149.168.1:~/ros2_ws/
```

4. On the robot, build the ros2 workspace by navigating to `~/ros2_ws` and using `colcon`. See course notes for support on this, and **don't forget to source `install/setup.bash`.
5. On the robot now, if there is nothing currently running, run the launch file `bringup.launch.py` from the package `bringup`. This will run launch files within the `controller` package to get the drive functionality of the robot up and running.
6. To drive the robot, in a separate terminal, run the node (not launch file) `teleop_twist_keyboard` from the package `teleop_twist_keyboard`. Now you should be able to drive your robot around!
7. The next goal is to launch this driving all at once! First, we need to create a package, which we'll call `teleop`. Navigate to `ros2_ws/src/` and use the following command (change `ament_python` to `ament_cmake` if you prefer C++). In the next step, we'll create a node called `teleop_joy`. The `--node-name` flag here will create that node and tell the package about its existence.

``` bash
ros2 pkg create --build-type ament_python --node-name teleop_joy --dependencies teleop_twist_keyboard bringup
```

8. Create a directory within `~ros2_ws/src/teleop` called `launch`. Copy a launch file template from the Lab1 folder here into `~/ros2_ws/src/teleop/launch`. You will need to modify either `setup.py` or `CMakeLists.txt` to make `colcon` aware of the launch folder. See the [ROS2 Humble launch docs](https://docs.ros.org/en/humble/Tutorials/Intermediate/Launch/Launch-system.html) for help. Rename your launch file to call both `teleop_twist_keyboard.launch.py` and `bringup.launch.py`. For `teleop_twist_keyboard`, you'll also need to use `xterm`.
9. Then, write a node to read data from the `/joy` topic and output to `/cmd_vel`. Now you can drive your robot with the controller!

## Lab Grading

The grading of each lab is based 50\% on the successful completion of the lab. For this lab, that 50\% breaks down into:

- 20\% for successfully driving your robot around with the keyboard (upload a short video as described below)
- 20\% for successfully driving your robot around with the joystick (upload a short video as described below)
- 10\% for successfully writing a launch file

### Lab Report Guidelines

TODO
