cmake_minimum_required(VERSION 3.5)
project(can_msgs)

find_package(ros_environment REQUIRED)

set(ROS_VERSION $ENV{ROS_VERSION})
set(SUPPORTED_ROS_VERSION 2)

if(${ROS_VERSION} EQUAL ${SUPPORTED_ROS_VERSION})

find_package(rosidl_default_generators REQUIRED)
find_package(ament_cmake REQUIRED)
find_package(std_msgs REQUIRED)
set(CMAKE_CXX_STANDARD 14)

rosidl_generate_interfaces(
    ${PROJECT_NAME}
        msg/CanState.msg
        msg/Frame.msg
    DEPENDENCIES
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()

else()

message("Skipping build of " ${PROJECT_NAME} " as only ROS " ${SUPPORTED_ROS_VERSION} " is supported. Detected version is ROS " ${ROS_VERSION})

endif()
