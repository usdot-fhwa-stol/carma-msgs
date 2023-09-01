# `DetectionList` message description file

This message type (defined by `DetectionList.msg`) serves as a container for several detections, each represented by a
[`Detection.msg`](detection.md) message.

## Message fields

| Field Name   | Type                                                  | Description              |
| ------------ | ----------------------------------------------------- | ------------------------ |
| `detections` | `carma_cooperative_perception_interfaces/Detection[]` | Contained detection data |
