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


class TestMsgFromYaml(unittest.TestCase):
    def test_msg_from_yaml_string_msg(self) -> None:
        yaml_string = """
            message_type: std_msgs/msg/String
            message_fields:
                data: 'test string'
        """

        msg = carma_message_utilities.msg_from_yaml(yaml_string)

        self.assertIsInstance(msg, String)
        self.assertEqual(msg.data, "test string")

    def test_msg_from_yaml_string_msg_empty_fields(self) -> None:
        yaml_string = """
            message_type: std_msgs/msg/String
            message_fields: {}
        """

        msg = carma_message_utilities.msg_from_yaml(yaml_string)

        self.assertIsInstance(msg, String)
        self.assertEqual(msg.data, "")

    def test_msg_from_yaml_string_msg_no_fields(self) -> None:
        yaml_string = """
            message_type: std_msgs/msg/String
        """

        msg = carma_message_utilities.msg_from_yaml(yaml_string)

        self.assertIsInstance(msg, String)
        self.assertEqual(msg.data, "")

    def test_msg_from_yaml_msg_no_type(self) -> None:
        yaml_string = """
            message_fields:
                data: 'test string'
        """

        with self.assertRaises(KeyError):
            carma_message_utilities.msg_from_yaml(yaml_string)

    def test_msg_from_yaml_empty_string(self) -> None:
        yaml_string = ""

        with self.assertRaises(TypeError):
            carma_message_utilities.msg_from_yaml(yaml_string)


class TestMsgFromYamlFile(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.test_files_path = (
            get_package_share_path("carma_message_utilities") / "tests/data"
        )

    def test_msg_from_yaml_file_string_msg(self) -> None:
        yaml_file = self.test_files_path / "string_msg.yaml"
        msg = carma_message_utilities.msg_from_yaml_file(yaml_file)

        self.assertIsInstance(msg, String)
        self.assertEqual(msg.data, "test string")

    def test_msg_from_yaml_file_string_msg_empty_fields(self) -> None:
        yaml_file = self.test_files_path / "string_msg_empty_fields.yaml"
        msg = carma_message_utilities.msg_from_yaml_file(yaml_file)

        self.assertIsInstance(msg, String)
        self.assertEqual(msg.data, "")

    def test_msg_from_yaml_file_string_msg_no_fields(self) -> None:
        yaml_file = self.test_files_path / "string_msg_no_fields.yaml"
        msg = carma_message_utilities.msg_from_yaml_file(yaml_file)

        self.assertIsInstance(msg, String)
        self.assertEqual(msg.data, "")

    def test_msg_from_yaml_file_msg_no_type(self) -> None:
        yaml_file = self.test_files_path / "msg_no_type.yaml"

        with self.assertRaises(KeyError):
            carma_message_utilities.msg_from_yaml_file(yaml_file)

    def test_msg_from_yaml_file_empty_file(self) -> None:
        yaml_file = self.test_files_path / "empty_file.yaml"

        with self.assertRaises(TypeError):
            carma_message_utilities.msg_from_yaml_file(yaml_file)


if __name__ == "__main__":
    unittest.main()
