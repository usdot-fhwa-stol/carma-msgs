FROM ros:humble-ros-base-jammy as base-install

ARG DEBIAN_FRONTEND="noninteractive"
ARG GIT_BRANCH=develop

# Make sure bash catches errors (no need to chain commands with &&, use ; instead)
SHELL ["/bin/bash", "-o", "pipefail", "-o", "errexit", "-c"]

###########################
# 1.) Update ROS signing key manually
###########################
# Remove old keyring and install updated key
RUN rm -f /usr/share/keyrings/ros-archive-keyring.gpg && \
    curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

###########################
# 2.) Clean up old repository configurations
###########################
# Remove old ROS configuration files to prevent conflicts
RUN rm -f /etc/apt/sources.list.d/ros2-latest.list \
          /etc/apt/sources.list.d/ros-latest.list

# Remove old apt key if it exists (legacy method)
RUN apt-key del "C1CF 6E31 E6BA DE88 68B1 72B4 F42E D6FB AB17 C654" 2>/dev/null || true

###########################
# 3.) Update package lists and install ROS packages
###########################
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install ros-humble-desktop

###########################
# 4.) Comment out the catkin conflict
###########################
RUN sed -i -e 's|^Conflicts: catkin|#Conflicts: catkin|' /var/lib/dpkg/status && \
    apt-get install -f

###########################
# 5.) Force install these packages
###########################
RUN apt-get download python3-catkin-pkg python3-rospkg python3-rosdistro
RUN dpkg --force-overwrite -i \
      python3-catkin-pkg*.deb \
      python3-rospkg*.deb \
      python3-rosdistro*.deb
RUN apt-get install -f

###########################
# 6.) Install the latest ROS1 desktop configuration
# see https://packages.ubuntu.com/jammy/ros-desktop-dev
# note: ros-desktop-dev automatically includes tf tf2
###########################
RUN apt-get -y install ros-desktop-dev --allow-downgrades --allow-remove-essential --allow-change-held-packages

###########################
# 7.) Install additional repositories and ROS2 dependencies (SIMPLIFIED)
###########################
RUN echo "deb [trusted=yes] https://s3.amazonaws.com/autonomoustuff-repo/ $(lsb_release -sc) main" \
      > /etc/apt/sources.list.d/autonomoustuff-public.list

RUN apt-get -y update && apt-get install -y \
      ros-humble-rmw \
      ros-humble-rmw-implementation \
      ros-humble-rmw-fastrtps-cpp \
      ros-humble-rmw-cyclonedx-cpp \
      ros-humble-automotive-autonomy-msgs \
      ros-humble-automotive-navigation-msgs \
      ros-humble-automotive-platform-msgs \
      ros-humble-pacmod3-msgs \
      wait-for-it

######################################
# 8.) Compile custom message
######################################

RUN mkdir -p /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/

# Since Noetic is not supported on Linux 22.04, this manually installs the dependency packages
# This is outside checkout.bash to not accidentally modify during release process and
# not to introduce indirect dependency between install and checkout scripts
RUN vcs import --input /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/noetic-dependencies.repos \
      /home/carma/.base-image/ros1_msgs_ws/src/

RUN mkdir -p /home/carma/.base-image/ros2_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros2_msgs_ws/src/carma_msgs/
RUN mkdir -p /home/carma/.base-image/workspace/src
RUN /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/checkout.bash -b develop-humble -r \
      /home/carma/.base-image/workspace
RUN /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/install.sh

###########################
# 9.) Clean up
###########################
RUN apt-get -y clean all; apt-get -y update

###########################
# 10.) Metadata
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
