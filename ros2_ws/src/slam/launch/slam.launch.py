import os
from ament_index_python.packages import get_package_share_directory

from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, GroupAction, IncludeLaunchDescription
from launch.substitutions import LaunchConfiguration, PathJoinSubstitution
from launch_ros.actions import Node, PushROSNamespace
from launch_ros.substitutions import FindPackageShare

def generate_launch_description():
    my_slam_dir = get_package_share_directory("slam")
    slam_dir = get_package_share_directory("slam_toolbox")

    params_file = os.path.join(my_slam_dir, 'config', 'mapper_params_online_async.yaml')

    online_async_launch = IncludeLaunchDescription(
            PathJoinSubstitution([slam_dir, 'online_asynch_launch.py']),
            launch_arguments = {
                'slam_params_file': params_file
            }
        )

    ld = LaunchDescription()

    ld.add_action(online_async_launch)
    
    return ld