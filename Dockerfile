FROM usdotfhwastoldev/carma-base:develop as base_image

FROM base_image as build

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
RUN cd ~/.base-image && mkdir ros1_msgs_ws && cd ros1_msgs_ws && source /opt/ros/noetic/setup.bash \
&& mkdir src \
&& cd src \
&& git clone -b foxy/develop https://github.com/usdot-fhwa-stol/carma-msgs.git \
&& cd .. \
&& catkin_make_isolated --install

# ROS2 message setup
RUN cd ~/.base-image && mkdir ros2_msgs_ws && cd ros2_msgs_ws && source /opt/ros/foxy/setup.bash \
&& mkdir src \
&& cd src \
&& git clone -b foxy/develop https://github.com/usdot-fhwa-stol/carma-msgs.git \
&& cd carma-msgs && rm -rf can_msgs && cd .. \
&& cd .. \
&& colcon build

# Build the bridge
RUN source /opt/ros/noetic/setup.bash \
&& source /opt/ros/foxy/setup.bash \
&& source ~/.base-image/ros1_msgs_ws/install_isolated/setup.bash \
&& source ~/.base-image/ros2_msgs_ws/install/local_setup.bash \
&& cd ~/.base-image/workspace/src \
&& git clone --branch foxy https://github.com/ros2/ros1_bridge.git \
&& cd ../ \
&& sudo apt-get install ros-foxy-can-msgs \
&& colcon build --packages-select ros1_bridge
