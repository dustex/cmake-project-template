cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

# ---- Project ----
project(template-project 
    VERSION 0.1.0
    LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)

# ---- Include guards ----
if(${PROJECT_SOURCE_DIR} STREQUAL ${PROJECT_BINARY_DIR})
    message(FATAL_ERROR "In-source builds not allowed. Please make a new directory (the build directory) and run CMake from there.")
endif()


enable_testing()

include(cmake/googletest-setup.cmake)
include(cmake/qt-setup.cmake)
include(cmake/code-coverage.cmake)

# Add source directories
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/src)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/test)

# Formatting of CMake files
include(cmake/formatting.cmake)
# store here  globbing expression

#TODO the lines underneath are just for testing the cmake formatting tool
file(
  GLOB_RECURSE
  CMAKE_FILES
  CMakeLists.txt
  )

file(
  GLOB_RECURSE
  DOT_CMAKE_FILES
  cmake/*.cmake
)

message("+++ CMAKE_CURRENT_SOURCE_DIR: " ${CMAKE_CURRENT_SOURCE_DIR})
message("+++ CMAKE_FILES: " ${CMAKE_FILES})
message("+++ DOT_CMAKE_FILES: " ${DOT_CMAKE_FILES})

cmake_format(cmake-format ${CMAKE_FILES})
cmake_format(cmake-format-dot-files ${DOT_CMAKE_FILES})
