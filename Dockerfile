ARG DOCKER_ORG=usdotfhwastoldev
ARG DOCKER_TAG=develop
FROM ${DOCKER_ORG}/carma-base:${DOCKER_TAG} as base_image
SHELL ["/bin/bash", "-c"]

ARG DEBIAN_FRONTEND="noninteractive"
ARG VERSION
ARG VCS_REF
ARG BUILD_DATE
ARG GIT_BRANCH=develop 
# Convert ARGs to ENVs to make them available past the build stage into the container runtime.
ENV GIT_BRANCH=$GIT_BRANCH

LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.name="carma-msgs" \
      org.label-schema.description="carma msgs bridge for the CARMA Platform" \
      org.label-schema.vendor="Leidos" \
      org.label-schema.version=${VERSION} \
      org.label-schema.url="https://highways.dot.gov/research/research-programs/CARMA" \
      org.label-schema.vcs-url="https://github.com/usdot-fhwa-stol/carma-msgs" \
      org.label-schema.vcs-ref=${VCS_REF} \
      org.label-schema.build-date=${BUILD_DATE}

RUN  mkdir -p ~/.base-image/ros1_msgs_ws/src/carma_msgs
RUN  mkdir -p /home/carma/src
COPY . /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/
RUN  mkdir -p ~/.base-image/ros2_msgs_ws/src/carma_msgs
COPY . /home/carma/.base-image/ros2_msgs_ws/src/carma_msgs/

RUN /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/checkout.bash -b ${GIT_BRANCH} -r /home/carma/.base-image/workspace

RUN /home/carma/.base-image/ros1_msgs_ws/src/carma_msgs/docker/install.sh $GIT_BRANCH