# To use google test: Simply link against gtest or gtest_main as needed. Eg
# add_executable(example example.cpp) target_link_libraries(example gtest_main)
# add_test(NAME example_test COMMAND example)
cmake_minimum_required(VERSION 3.2)
project(template-project-tests)

add_executable(
  template-project-tests
  main.cpp
  src/example-unit-test.cpp
  )

target_link_libraries(template-project-tests gtest)

install(TARGETS template-project-tests DESTINATION bin)

add_test(NAME template-project-tests COMMAND template-project-tests)
