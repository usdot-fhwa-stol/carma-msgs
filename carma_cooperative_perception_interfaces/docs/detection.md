# `Detection` message description file

This message type (defined by `Detection.msg`) contains information about a single detected object, _detection_.
Detections represent the objects that actors perceive in the environment. We can think of them as object-level
sensor measurements.

## Conventions

This message type conforms to
[ROS Enhancement Proposal (REP) 103: _Standard Units of Measure and Coordinate Conventions_][rep_103_url]. The
subsections below summarize the parts of the Proposal related to this message.

### Units of measure

| Quantity             | Unit (abbreviation)                 |
| -------------------- | ----------------------------------- |
| length               | meter (m)                           |
| linear velocity      | meter per second (m/s)              |
| angular velocity     | radian per second (rad/s)           |
| linear acceleration  | meter per second squared (m/s^2)    |
| angular acceleration | radian per second squared (rad/s^2) |

**Note:** The table excludes angle quantities because the message represents orientation with quaternions.

### Coordinate frames

The `pose` message field is with respect to an inertial frame whose identifier is specified in the `header.frame_id`
message subfield. The `twist` and `accel` fields are measured with respect to the detection's body frame. We assume
the body frame is oriented as follows (summarized from [REP-103][rep_103_url]):

- the **x-axis** increases forward from the detection;
- the **y-axis** increases to the right of the detection; and
- the **z-axis** increases above the detection.

[rep_103_url]: https://www.ros.org/reps/rep-0103.html

## Message constants

These constants indicate which motion model describes the detection's movement.

| Constant Name       | Type    | Value | Description                                             |
| ------------------- | ------- | ----- | ------------------------------------------------------- |
| `MOTION_MODEL_CTRV` | `uint8` | `1`   | Constant turn rate and velocity (CTRV) motion model     |
| `MOTION_MODEL_CTRA` | `uint8` | `2`   | Constant turn rate and acceleration (CTRA) motion model |
| `MOTION_MODEL_CV`   | `uint8` | `3`   | Constant velocity (CV) motion model                     |

## Message fields

**Note:** Some message subfields will not be populated based on the chosen motion model.

| Field Name     | Type                                | Description                                                                 |
| -------------- | ----------------------------------- | --------------------------------------------------------------------------- |
| `header`       | `std_msgs/Header`                   | Measurement timestamp and reference frame                                   |
| `motion_model` | `uint8` (used as an enumeration)    | Motion model                                                                |
| `pose`         | `geometry_msgs/PoseWithCovariance`  | Position and orientation with respect to the `header.frame_id` frame        |
| `twist`        | `geometry_msgs/TwistWithCovariance` | Linear and angular velocities with respect to the detection's body frame    |
| `accel`        | `geometry_msgs/AccelWithCovariance` | Linear and angular accelerations with respect to the detection's body frame |
