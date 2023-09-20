# CARMA message utilities

This package contains utilities for interacting with ROS messages. Some notable
functionality includes:

- loading message data from YAML files

## Loading messages from YAML files

With the `msg_from_yaml()` and `msg_from_yaml_file()` functions, you can load
ROS 2 messages directory from a YAML-formatted string or a YAML file,
respectively. To help with loading the proper message, these functions assume
the provided YAML strings (or files) use the format shown in the following
example:

```yaml
---
message_type: std_msgs/msg/String
message_fields:
  data: "hello world"
```

The `message_type` key indicates the stored data's corresponding ROS 2 message
type. The `message_fields` key should be followed by key-value pairs the
message's fields. Here is another example showing how to load a `std_msgs/msg/Header` message:

```python
import carma_message_utilities

yaml_string = """
    message_type: std_msgs/msg/Header
    message_fields:
        stamp:
            sec: 12
            nanosec: 224
        frame_id: 'map'
"""

msg = carma_message_utilities.msg_from_yaml(yaml_string)
```
