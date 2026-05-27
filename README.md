# MEGN 441: Intro to Robotics

This is the home repository for the labs of MEGN 441: Intro to Robotics at Colorado School of Mines.

## Quick start

See ROS2 Install for further guidance. With Docker installed, navigate to directory with `Dockerfile` and run

```` bash
docker build -t ros2-dev .
````

Once you have built the docker image using the Dockerfile, modify `startDocker.sh` to capture the path to your local me441 directory with `ros2_ws`. You may need to make the shell script executable with:

```` bash
chmod +777 startDocker.sh
````

Once `startDocker.sh` is executable, you can run it with:

```` bash
./startDocker.sh
````

## Lab Sequence Description

| Lab | Weeks | Content |
| --- | --- | --- |
| 1 | 1 | Rviz, Intro to ROSBots |
| 2 | 1 | Publish/Subscribe to Teleop the Bot |
| 3 | 2 | SLAM |
| 4 | 3 | Pick and Place |
| 5 | 3 | Delivery and Navigation |
| 6 | 3 | Further Exploration |
