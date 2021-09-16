cmake_minimum_required(VERSION 3.5)

project(carma_cmake_common NONE)

find_package(ros_environment REQUIRED)

set(ROS_VERSION $ENV{ROS_VERSION})

if(${ROS_VERSION} EQUAL 1)

  find_package(catkin REQUIRED)

  catkin_package(CFG_EXTRAS 
    carma_check_ros_version.cmake
    carma_package.cmake
  )

else()

  find_package(ament_cmake_core REQUIRED)
  find_package(ament_cmake_python REQUIRED)

  ament_package(CONFIG_EXTRAS 
    cmake/carma_check_ros_version.cmake
    cmake/carma_package.cmake
  )

  install(
    DIRECTORY cmake
    DESTINATION share/${PROJECT_NAME}
  )

endif()