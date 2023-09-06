# `TrackList` message description file

This message type (defined by `TrackList.msg`) serves as a container for several tracks, each represented by a
[`Track.msg`](track.md) message.

## Message fields

| Field Name | Type                                              | Description          |
| ---------- | ------------------------------------------------- | -------------------- |
| `tracks`   | `carma_cooperative_perception_interfaces/Track[]` | Contained track data |
