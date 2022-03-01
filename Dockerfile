FROM usdotfhwastoldev/carma-base:develop as base_image
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

# Clone autoware repo to access messages
RUN cd /home/carma/ && git clone https://github.com/usdot-fhwa-stol/autoware.ai.git --depth 1 --branch develop

# ROS 1 msgs setup
RUN mkdir -p ~/.base-image/ros1_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/
RUN cp -R /home/carma/autoware.ai/messages /home/carma/.base-image/ros1_msgs_ws/src/autoware.ai/
RUN cp -R /home/carma/autoware.ai/jsk_common_msgs /home/carma/.base-image/ros1_msgs_ws/src/autoware.ai/
RUN cp -R /home/carma/autoware.ai/jsk_recognition /home/carma/.base-image/ros1_msgs_ws/src/autoware.ai/


# ROS 2 msgs setup
RUN mkdir -p ~/.base-image/ros2_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros2_msgs_ws/src/carma_msgs/
RUN mkdir -p ~/.base-image/ros2_msgs_ws/src/autoware.ai
RUN cp -R /home/carma/autoware.ai/messages /home/carma/.base-image/ros2_msgs_ws/src/autoware.ai/
RUN cp -R /home/carma/autoware.ai/jsk_common_msgs /home/carma/.base-image/ros2_msgs_ws/src/autoware.ai/
RUN cp -R /home/carma/autoware.ai/jsk_recognition /home/carma/.base-image/ros2_msgs_ws/src/autoware.ai/

# Cleanup autoware repo once messages have been moved
RUN rm -r /home/carma/autoware.ai/

# ROS1 message setup
RUN cd ~/.base-image/ros1_msgs_ws && source /opt/ros/noetic/setup.bash && colcon build --packages-up-to cav_msgs cav_srvs j2735_msgs can_msgs carma_debug_msgs autoware_lanelet2_msgs

# ROS2 message setup
RUN cd ~/.base-image/ros2_msgs_ws && source /opt/ros/foxy/setup.bash && colcon build --packages-up-to autoware_lanelet2_msgs can_msgs carma_debug_ros2_msgs carma_driver_msgs carma_localization_msgs carma_msgs carma_perception_msgs carma_planning_msgs carma_v2x_msgs j2735_v2x_msgs

# Build the bridge
RUN source /opt/ros/noetic/setup.bash \
&& source /opt/ros/foxy/setup.bash \
&& source ~/.base-image/ros1_msgs_ws/install/local_setup.bash \
&& source ~/.base-image/ros2_msgs_ws/install/local_setup.bash \
&& cd ~/.base-image/workspace/src \
&& git clone --depth 1 --branch feature-parametrize-qos https://github.com/LoyVanBeek/ros1_bridge.git \
&& cd ../ \
&& sudo apt-get update \
&& colcon build --packages-select ros1_bridge --cmake-args "--debug-output" \
&& sudo chmod -R ugo+x ~/.base-image/workspace/install
