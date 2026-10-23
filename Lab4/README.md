# Lab 4: Delivery and Navigation

## Lab Overview

In Lab 4, 

By the end of this lab, you'll be able to:

- 

### Lab Procedure

0. **Prepare the bot**: Create a clean workspace on the robot for your team for this project. Something like: `a9_ws_lab4` for team A9. You won't need any of the base ros2_ws packages - those are all in ~/ros2_ws on the bot, and they get sourced automatically on the robot's startup. `bringup.launch.py` also gets launched automatically, and the Orbbec and sllidar packages get sourced from ros2_ws automatically. In your new package, include any previous code from prior labs that you may need. You will certainly need `rosbot_arm` and `rosbot_msgs`, and you may need others.

   **Prepare your team**: Talk through how collaboration will work on this lab. You've worked on two labs to this point. What worked well for collaboration in the past? What didn't work well? How will you share files? How will you divide tasks? If you need to come in outside of lab hours, what days/times work well?

1. **Use nav2 as a black box**: Using the `Robo_Lab` map that is included in this folder, test your robot in nav2! I have already cloned the correct version of `nav2_bringup` from [the navigation2 github](https://github.com/ros-navigation/navigation2/tree/main/nav2_bringup) for you into `lab4_ws/src/rosbot_nav`. Colcon build this package on the bot. 

   You'll need three browser tabs to launch everything. First, launch your sensors_launch.py from Lab2. Then, launch nav2 using:

   ```bash
   ros2 launch rosbot_nav bringup_launch.py \
   map:=/path/to/Robo_Lab.yaml \
   params_file:=/path/to/nav2_params.yaml \
   use_sim_time:=false
   ```
   Wait until the output settles and reports that the managed nodes are active. In another tab, open RViz with the Nav2 view:

   ```bash
   ros2 launch nav2_bringup rviz_launch.py
   ```

   The view shows the map, the lidar scan, both costmaps, and the planned path. 
   
2. **Experiment with nav2 params**: Spend some time experimenting with nav2, and edit the `nav2_params.yaml` file to explore some of the possible parameters. Two key replacements you should make are to replace your Planner Server and Controller Server with ones that are compatible with an Ackermann Drive car. [Here is a high-level guide on params, including tables with planners/controllers and their compatibility](https://docs.nav2.org/rolling/configuration_and_development/first_time_robot_setup_guide/navigation_plugins/setup_navigation_plugins/). To use a different planner, go to the configuration guide for that planner and grab the params example from the site. Replace the 


2. **Write an action server for arm movement**
3. **Write custom behavior tree node**
4. **Write custom behavior tree**: The behavior tree is written using an XML format and is fairly readable on its own, [documentation here](https://www.behaviortree.dev/docs/3.8/learn-the-basics/xml_format). The behavior tree folks also have a lovely free IDE for writing behavior trees in a visual format called [Groot](https://www.behaviortree.dev/groot/). If using Groot, you can access the nav2 custom nodes here: [nav2 Groot tutorial](https://docs.nav2.org/rolling/tutorials/general_tutorials/groot_tutorials/groot/groot/#groot-interacting-with-behavior-trees)

5. **Deliver object to target**

Version: 1.143.0
Commit: 2d0b7506a36c1d6db9a466440131a8e01eab2289
Date: 2026-10-20T14:31:47-07:00
Electron: 43.7.7
ElectronBuildId: 15743441
Chromium: 150.0.7871.250
Node.js: 24.21.0
V8: 15.0.245.31-electron.0
@github/copilot: 1.0.100-1
@github/copilot-sdk: 1.0.23-preview.5
OS: Linux x64 7.0.0-38-generic

## Lab Grading

The grading of each lab is based 50\% on the successful completion of the lab. For this lab, that 50\% breaks down into:

- 10\% - 

### Lab Report Guidelines

The guidelines below will be used in grading your lab report. Be sure to include everything that the guidelines below mention for full credit!

#### 1. Problem Statement

- Write a succinct 1-3 sentence description of the goals of this lab.

#### 2. Methods

- Describe your team's contributions to the software of the robot for Lab 3
- Describe the new messages/services that you have written
- Describe the key equations used to calculate the inverse kinematics of the arm.

#### 3. Results

- Describe how the RGBD camera represents its data.
- Include a video of your robot demonstrating the lab grading goals. A video of autonomous pick and place should demonstrate all of the other pieces, and if you don't quite make it there, then you can demonstrate as many of the other parts as possible.
- Explain how your robot's arm control works: detailing which messages are sent to which nodes, and what values are being sent.

#### 4. Conclusions

- Discuss what your team's biggest lessons learned are from this lab.
- What did your robot do well?
- What could you do to improve your robot's pick and place abilities, given more time?
- Discuss the challenges, if any, that your team had writing the arm control for this lab.

#### AI Appendix

- Include a 1 paragraph reflection on the questions below, whether or not you used AI.
  - Did you use any AI to support support the completion of this lab? Why or why not?
  - If no, how could it have helped? What did you gain by avoiding AI use?
  - If yes, how was your experience of using it? How did it help? What did you miss out on by using AI?
  - If you used AI, what resources do you think it used in generating its answers?
  - If you used AI, please copy and paste your interactions below:
