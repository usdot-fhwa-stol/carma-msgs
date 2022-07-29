FROM usdotfhwastol/carma-base:carma-system-4.2.0 as base_image
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

RUN  mkdir -p ~/.base-image/ros1_msgs_ws/src/carma_msgs
RUN  mkdir -p /home/carma/src
COPY . /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/
RUN  mkdir -p ~/.base-image/ros2_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros2_msgs_ws/src/carma_msgs/
RUN /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/install.sh

