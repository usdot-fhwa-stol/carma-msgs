# carma_cmake_common

This package contains CMake build macros and functions that support CARMA Platform development.

## Standard Usage

### package.xml

```xml
<build_depend>carma_cmake_common</build_depend>
```

### CMakeLists.txt

```cmake
find_package(carma_cmake_common REQUIRED) # Find the package
carma_check_ros_version(2)                # Check the ros version in use. Skips package build if not the correct version
carma_package()                           # Setup standard CMake configurations like supported C++ version
```
