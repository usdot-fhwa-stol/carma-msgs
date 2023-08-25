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

find_package(ament_cmake_auto REQUIRED)

# This will pull dependencies from <build_depend>...</build_depend> tags in the
# package.xml file. It saves us from having to call find_package(...) for each
# dependency.
ament_auto_find_build_dependencies()

# From carma_cmake_common (ament_auto finds the package)
carma_check_ros_version(2)

if(carma_multiple_object_tracking_interfaces_BUILD_TESTS)
  find_package(ament_lint_auto REQUIRED)

  # This will pull dependencies from <test_depend>...</test_depend> tags in the
  # package.xml file. It saves us from having to call find_package(...) for
  # each dependency.
  ament_lint_auto_find_test_dependencies()
endif()
