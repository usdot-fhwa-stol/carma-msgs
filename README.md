| CicleCI Build Status | Sonar Code Quality | DockerHub Release | DockerHub Release Candidate | DockerHub Develop |
|------|-----|-----|-----|-----|
[![CircleCI](https://img.shields.io/circleci/build/gh/usdot-fhwa-stol/carma-msgs/develop?label=CircleCI)](https://app.circleci.com/pipelines/github/usdot-fhwa-stol/carma-msgs?branch=develop) | [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=usdot-fhwa-stol_CARMAMsgs&metric=alert_status)](https://sonarcloud.io/dashboard?id=usdot-fhwa-stol_CARMAMsgs) | [![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/usdotfhwastol/carma-msgs?label=carma-msgs)](https://hub.docker.com/repository/docker/usdotfhwastol/carma-msgs) | [![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/usdotfhwastolcandidate/carma-msgs?label=carma-msgs)](https://hub.docker.com/repository/docker/usdotfhwastolcandidate/carma-msgs) | [![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/usdotfhwastoldev/carma-msgs?label=carma-msgs)](https://hub.docker.com/repository/docker/usdotfhwastoldev/carma-msgs)


# CARMAMsgs
CARMAMsgs contains all the CARMAPlatform-specific ROS message definitions used by the CARMAPlatform

This package is required for building most of the CARMAPlatform nodes

To add this package to your CARMAPlatform project simply clone this repository into your colcon workspace.

There are both ROS1 and ROS2 packages in this repo. Building of these packages will automatically toggle based on your ROS version, however,
it is important to be careful to not mix the install path for the distributions. Therefore different install and build paths should be used for each ROS version.

For example:

ROS 2

```bash
colcon build
```

ROS 1

```bash
colcon build --install-base install_ros1 --build-base build_ros1
```

# CARMAPlatform
The primary CARMAPlatform repository can be found [here](https://github.com/usdot-fhwa-stol/carma-platform) and is part of the [USDOT FHWA STOL](https://github.com/usdot-fhwa-stol/)
github organization. Documentation on how the CARMAPlatform functions, how it will evolve over time, and how you can contribute can be found at the above links as well

## Current Status of ROS 1 and ROS 2 Packages
The current CARMA Platform system operates as a hybrid of ROS 1 Noetic and ROS 2 Humble components. While nearly all components have been upgraded to ROS 2 Humble, a small amount of ROS 1 Noetic content still exists within the system, including some packages in this repository. Additionally, this repository contains the build instructions for building the `ros1_bridge`, which enables bi-directional communication between ROS 1 Noetic and ROS 2 Foxy portions of the CARMA Platform system. For more information, please see the relevant documentation in the [carma-config](https://github.com/usdot-fhwa-stol/carma-config?tab=readme-ov-file#current-status-of-hybrid-ros-1ros-2-system) repository.

## Contribution
Welcome to the CARMA contributing guide. Please read this guide to learn about our development process, how to propose pull requests and improvements, and how to build and test your changes to this project. [CARMA Contributing Guide](https://github.com/usdot-fhwa-stol/carma-platform/blob/develop/Contributing.md)

## Code of Conduct
Please read our [CARMA Code of Conduct](https://github.com/usdot-fhwa-stol/carma-platform/blob/develop/Code_of_Conduct.md) which outlines our expectations for participants within the CARMA community, as well as steps to reporting unacceptable behavior. We are committed to providing a welcoming and inspiring community for all and expect our code of conduct to be honored. Anyone who violates this code of conduct may be banned from the community.

## Attribution
The development team would like to acknowledge the people who have made direct contributions to the design and code in this repository. [CARMA Attribution](https://github.com/usdot-fhwa-stol/carma-platform/blob/develop/ATTRIBUTION.txt)

## License
By contributing to the Federal Highway Administration (FHWA) Connected Automated Research Mobility Applications (CARMA), you agree that your contributions will be licensed under its Apache License 2.0 license. [CARMA License](https://github.com/usdot-fhwa-stol/carma-platform/blob/develop/docs/License.md)

## Contact
Please click on the CARMA logo below to visit the Federal Highway Adminstration(FHWA) CARMA website.

[![CARMA Image](https://raw.githubusercontent.com/usdot-fhwa-stol/carma-platform/develop/docs/image/CARMA_icon.png)](https://highways.dot.gov/research/research-programs/operations/CARMA)
