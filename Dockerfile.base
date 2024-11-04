FROM ros:humble-ros-base-jammy as base-install

ARG DEBIAN_FRONTEND="noninteractive"
ARG GIT_BRANCH=develop-humble

# Make sure bash catches errors (no need to chain commands with &&, use ; instead)
SHELL ["/bin/bash", "-o", "pipefail", "-o", "errexit", "-c"]

###########################
# 1.) Bring system up to the latest ROS desktop configuration
###########################
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install ros-humble-desktop

###########################
# 2.) Temporarily remove ROS2 apt repository
###########################
RUN mv /etc/apt/sources.list.d/ros2-latest.list /root/
RUN apt-get update

###########################
# 3.) comment out the catkin conflict
###########################
RUN sed  -i -e 's|^Conflicts: catkin|#Conflicts: catkin|' /var/lib/dpkg/status
RUN apt-get install -f

###########################
# 4.) force install these packages
###########################
RUN apt-get download python3-catkin-pkg
RUN apt-get download python3-rospkg
RUN apt-get download python3-rosdistro
RUN dpkg --force-overwrite -i python3-catkin-pkg*.deb
RUN dpkg --force-overwrite -i python3-rospkg*.deb
RUN dpkg --force-overwrite -i python3-rosdistro*.deb
RUN apt-get install -f

###########################
# 5.) Install the latest ROS1 desktop configuration
# see https://packages.ubuntu.com/jammy/ros-desktop-dev
# note: ros-desktop-dev automatically includes tf tf2
###########################
RUN apt-get -y install ros-desktop-dev --allow-downgrades --allow-remove-essential --allow-change-held-packages

# fix ARM64 pkgconfig path issue -- Fix provided by ambrosekwok
RUN if [[ $(uname -m) = "arm64" || $(uname -m) = "aarch64" ]]; then                     \
      cp /usr/lib/x86_64-linux-gnu/pkgconfig/* /usr/lib/aarch64-linux-gnu/pkgconfig/;   \
    fi

###########################
# 6.) Restore the ROS2 apt repos and set compilation options.
#     And install dependencies for ros1_bridge
###########################
RUN mv /root/ros2-latest.list /etc/apt/sources.list.d/
RUN apt-get -y update

RUN apt-get update && apt-get install -y \
      ros-humble-rmw \
      ros-humble-rmw-implementation \
      ros-humble-rmw-fastrtps-cpp \
      ros-humble-rmw-cyclonedds-cpp \
      wait-for-it

######################################
# 6.2) Compile custom message
######################################

RUN  mkdir -p /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/
RUN  mkdir -p /home/carma/.base-image/ros2_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros2_msgs_ws/src/carma_msgs/
RUN mkdir -p /home/carma/.base-image/workspace/src
RUN /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/checkout.bash -b ${GIT_BRANCH} -r /home/carma/.base-image/workspace
RUN /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/install.sh

# RUN   cd /home/carma/.base-image/workspace/src; \
#       git clone https://github.com/usdot-fhwa-stol/ros1_bridge/ -b develop-humble-buildable; \
#       cd ..;                    \
#       source /opt/ros/humble/setup.bash; \
#       source /home/carma/.base-image/ros1_msgs_ws/install/local_setup.bash; \
#       source /home/carma/.base-image/ros2_msgs_ws/install/local_setup.bash; \
#       MEMG=$(printf "%.0f" $(free -g | awk '/^Mem:/{print $2}'));                 \
#       NPROC=$(nproc);  MIN=$((MEMG<NPROC ? MEMG : NPROC));                        \
#       echo "Please wait...  running $MIN concurrent jobs to build ros1_bridge";   \
#       time MAKEFLAGS="-j $MIN" colcon build --event-handlers console_direct+      \
#       --cmake-args -DCMAKE_BUILD_TYPE=Release --packages-select ros1_bridge --cmake-force-configure
      
###########################
# 8.) Clean up
###########################
RUN apt-get -y clean all; apt-get -y update

###########################
# 9.) Pack all ROS1 dependent libraries
###########################
# fix ARM64 pkgconfig path issue -- Fix provided by ambrosekwok
RUN if [[ $(uname -m) = "arm64" || $(uname -m) = "aarch64" ]]; then                    \
      cp /usr/lib/x86_64-linux-gnu/pkgconfig/* /usr/lib/aarch64-linux-gnu/pkgconfig/;  \
      fi

RUN ROS1_LIBS="libxmlrpcpp.so";                                                 \
      ROS1_LIBS="$ROS1_LIBS librostime.so";                                      \
      ROS1_LIBS="$ROS1_LIBS libroscpp.so";                                       \
      ROS1_LIBS="$ROS1_LIBS libroscpp_serialization.so";                         \
      ROS1_LIBS="$ROS1_LIBS librosconsole.so";                                   \
      ROS1_LIBS="$ROS1_LIBS librosconsole_log4cxx.so";                           \
      ROS1_LIBS="$ROS1_LIBS librosconsole_backend_interface.so";                 \
      ROS1_LIBS="$ROS1_LIBS liblog4cxx.so";                                      \
      ROS1_LIBS="$ROS1_LIBS libcpp_common.so";                                   \
      ROS1_LIBS="$ROS1_LIBS libb64.so";                                          \
      ROS1_LIBS="$ROS1_LIBS libaprutil-1.so";                                    \
      ROS1_LIBS="$ROS1_LIBS libapr-1.so";                                        \
      ROS1_LIBS="$ROS1_LIBS libactionlib.so.1d";                                 \
      cd /ros-humble-ros1-bridge/install/ros1_bridge/lib;                        \
      for soFile in $ROS1_LIBS; do                                               \
            soFilePath=$(ldd libros1_bridge.so | grep $soFile | awk '{print $3;}');  \
            cp $soFilePath ./;                                                       \
      done

###########################
# 10.0) Metadata
###########################
ARG VERSION="NULL"
ARG VCS_REF="NULL"
ARG BUILD_DATE="NULL"

LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.name="carma-msgs" \
      org.label-schema.description="carma msgs bridge for the CARMA Platform" \
      org.label-schema.vendor="Leidos" \
      org.label-schema.version=${VERSION} \
      org.label-schema.url="https://highways.dot.gov/research/research-programs/CARMA" \
      org.label-schema.vcs-url="https://github.com/usdot-fhwa-stol/carma-msgs" \
      org.label-schema.vcs-ref=${VCS_REF} \
      org.label-schema.build-date=${BUILD_DATE}