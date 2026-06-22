import os
from ament_index_python.packages import get_package_share_directory

from launch import LaunchDescription, LaunchService
from launch.actions import DeclareLaunchArgument, IncludeLaunchDescription
from launch.substitutions import LaunchConfiguration, PathJoinSubstitution

def generate_launch_description():
    my_slam_dir = get_package_share_directory("slam")
    slam_dir = get_package_share_directory("slam_toolbox")

    # params_file = os.path.join(my_slam_dir, 'config', 'mapper_params_online_async.yaml')

    online_async_launch = IncludeLaunchDescription(
            PathJoinSubstitution([slam_dir, 'launch', 'online_async_launch.py']),
            # launch_arguments = {
            #     'slam_params_file': PathJoinSubstitution([my_slam_dir, 'config', 'mapper_params_online_async.yaml'])
            # }
        )

    ld = LaunchDescription()

    ld.add_action(online_async_launch)
    
    return ld

if __name__ == '__main__':
    # Create a LaunchDescription object
    ld = generate_launch_description()

    ls = LaunchService()
    ls.include_launch_description(ld)
    ls.run()