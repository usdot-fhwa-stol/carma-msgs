FROM ros:humble-ros-base-jammy as base-install

ARG DEBIAN_FRONTEND="noninteractive"
ARG GIT_BRANCH=develop

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

###########################
# 6.) Restore the ROS2 apt repos and set compilation options.
#     And install ROS2 dependencies for ros1_bridge
###########################
RUN mv /root/ros2-latest.list /etc/apt/sources.list.d/

RUN echo "deb [trusted=yes] https://s3.amazonaws.com/autonomoustuff-repo/ $(lsb_release -sc) main" \
      > /etc/apt/sources.list.d/autonomoustuff-public.list

RUN apt-get -y update && apt-get install -y \
      ros-humble-rmw \
      ros-humble-rmw-implementation \
      ros-humble-rmw-fastrtps-cpp \
      ros-humble-rmw-cyclonedds-cpp \
      ros-humble-automotive-autonomy-msgs \
      ros-humble-automotive-navigation-msgs \
      ros-humble-automotive-platform-msgs \
      ros-humble-pacmod3-msgs \
      wait-for-it

######################################
# 7.) Compile custom message
######################################

RUN  mkdir -p /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/

# Since Noetic is not supported on Linux 22.04, this manually installs the dependency packages
# This is outside checkout.bash to not accidentally modify during release process and
# not to introduce indirect dependency between install and checkout scripts
RUN vcs import --input /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/noetic-dependencies.repos \
      /home/carma/.base-image/ros1_msgs_ws/src/

RUN  mkdir -p /home/carma/.base-image/ros2_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros2_msgs_ws/src/carma_msgs/
RUN mkdir -p /home/carma/.base-image/workspace/src
RUN /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/checkout.bash -b develop-humble -r \
      /home/carma/.base-image/workspace
RUN /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/install.sh

###########################
# 8.) Clean up
###########################
RUN apt-get -y clean all; apt-get -y update

###########################
# 9.) Metadata
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


# Copy environment initialization scripts
COPY ./entrypoint.sh ./init-env.sh /home/carma/.base-image
# Set the entrypoint
ENTRYPOINT [ "/home/carma/.base-image/entrypoint.sh" ]
