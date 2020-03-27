project(template-project)

cmake_minimum_required(VERSION 3.12)

set(CMAKE_CXX_STANDARD 14)

enable_testing()

include(cmake/googletest-setup.cmake)

# Code Coverage Tools Support
if("${CMAKE_C_COMPILER_ID}" MATCHES "(Apple)?[Cc]lang"
   OR "${CMAKE_CXXCOMPILER_ID}" MATCHES "(Apple)?[Cc]lang"
   )
  message("+++ Building with llvm Code Coverage Tools")
  set(CMAKE_CXX_FLAGS "-fprofile-instr-generate -fcoverage-mapping")
elseif(CMAKE_COMPILER_IS_GNUCXX)
  message("+++ Building with lcov Code Coverage Tools")
  set(CMAKE_CXX_FLAGS "--coverage")
else()
  message("+++ No compatible compiler for Code Coverage Tools")
endif()

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
  C:/Users/Chris/Google/Drive/Software_Entwicklung_privat/Algorithms_and_Coding_Training/CMakeLists.txt
  )

file(
  GLOB_RECURSE
  DOT_CMAKE_FILES
  C:/Users/Chris/Google/Drive/Software_Entwicklung_privat/Algorithms_and_Coding_Training/*.cmake
)

message("+++ CMAKE_CURRENT_SOURCE_DIR: " ${CMAKE_CURRENT_SOURCE_DIR})
message("+++ CMAKE_FILES: " ${CMAKE_FILES})
message("+++ DOT_CMAKE_FILES: " ${DOT_CMAKE_FILES})

cmake_format(cmake-format ${CMAKE_FILES})
cmake_format(cmake-format-dot-files ${DOT_CMAKE_FILES})
