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