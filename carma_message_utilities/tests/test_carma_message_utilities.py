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

import unittest

from ament_index_python import get_package_share_path

import carma_message_utilities

from std_msgs.msg import String


class TestCarmaMessageUtilities(unittest.TestCase):
    def test_msg_from_yaml(self):
        yaml_string = """
            message_type: std_msgs/msg/String
            message_fields:
                data: 'test string'
        """

        msg = carma_message_utilities.msg_from_yaml(yaml_string)

        self.assertIsInstance(msg, String)
        self.assertEqual(msg.data, "test string")

    def test_msg_from_yaml_file(self):
        filename = (
            get_package_share_path("carma_message_utilities") / "tests/data/string_msg.yaml"
        )

        msg = carma_message_utilities.msg_from_yaml_file(filename)

        self.assertIsInstance(msg, String)
        self.assertEqual(msg.data, "test string")
