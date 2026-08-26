from launch import LaunchDescription
from launch_ros.actions import Node


def generate_launch_description():

    example_node = Node(
            package='example_pkg',
            executable='example_node',
            name='example')

    return LaunchDescription(
        [example_node,]
    )