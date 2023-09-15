# Copyright 2023 Leidos
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from rosidl_runtime_py import set_message_fields
from rosidl_runtime_py.utilities import get_message

import yaml


def msg_from_yaml_file(filename: str):
    with open(filename, "r") as file:
        return msg_from_yaml(file)


def msg_from_yaml(stream):
    yaml_data = yaml.safe_load(stream)

    msg_type = get_message(yaml_data["message_type"])
    msg = msg_type()
    set_message_fields(msg, yaml_data["message_fields"])

    return msg
