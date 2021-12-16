FROM usdotfhwastoldev/carma-base:foxy-develop as base_image
SHELL ["/bin/bash", "-c"]

ARG DEBIAN_FRONTEND="noninteractive"

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="carma-msgs"
LABEL org.label-schema.description="carma msgs bridge for the CARMA Platform"
LABEL org.label-schema.vendor="Leidos"
LABEL org.label-schema.version=${VERSION}
LABEL org.label-schema.url="https://highways.dot.gov/research/research-programs/CARMA"
LABEL org.label-schema.vcs-url="https://github.com/usdot-fhwa-stol/carma-msgs"
LABEL org.label-schema.vcs-ref=${VCS_REF}
LABEL org.label-schema.build-date=${BUILD_DATE}

# ROS 1 msgs setup
RUN mkdir -p ~/.base-image/ros1_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/

# ROS 2 msgs setup
RUN mkdir -p ~/.base-image/ros2_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros2_msgs_ws/src/carma_msgs/

# ROS1 message setup
RUN cd ~/.base-image/ros1_msgs_ws && source /opt/ros/noetic/setup.bash && colcon build 

# ROS2 message setup
RUN cd ~/.base-image/ros2_msgs_ws && source /opt/ros/foxy/setup.bash && colcon build

# Build the bridge
RUN source /opt/ros/noetic/setup.bash \
&& source /opt/ros/foxy/setup.bash \
&& source ~/.base-image/ros1_msgs_ws/install/local_setup.bash \
&& source ~/.base-image/ros2_msgs_ws/install/local_setup.bash \
&& cd ~/.base-image/workspace/src \
&& git clone --branch foxy https://github.com/ros2/ros1_bridge.git \
&& cd ../ \
&& sudo apt-get update \
&& colcon build --packages-select ros1_bridge \
&& sudo chmod -R ugo+x ~/.base-image/workspace/install
