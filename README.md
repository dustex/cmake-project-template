
# CMake C++ Project Template

This template project has everything included to start with TDD right away.

## Features
 * Google Test and Google Mock integration
 * clang-format integration
 * clang-tidy integration
 * cmake-format integration


## Usage

### Prerequisites

You will need:

 * (must) A modern C/C++ compiler.
 * (must) CMake 3.1+ installed.
 * (may)  The [LLVM compiler](https://llvm.org/builds/) if clang-format and clang-tidy shall be used.
 * (may)  [Python 3](https://www.python.org/download/releases/3.0/) and [cmake-format](https://github.com/cheshirekow/cmake_format) if cmake-format shall be used.
 * (may)  An IDE like [Jetbrains CLion](https://www.jetbrains.com/clion/) or [VisualStudio 2019](https://visualstudio.microsoft.com/de/vs/)


## Folder Structrue

 * `cmake/*` - The cmake tools and helper files
 * `src/*` - C++ code
 * `test/lib` - C++ libraries used for tests (eg, Google Test)
 * `test/src` - C++ test suite
 * `bin/`, `lib/`, `include/` empty directories, until the `make install` command installs the project artifacts there.

## Tests:

 * A `test` folder with the automated tests and fixtures that mimics the directory structure of `src`.
 * For every C++ file in `src/A/B/<name>.cpp` there is a corresponding test file `test/A/B/<name>_test.cpp`
 * Tests compile into a single binary `test/bin/runner` that is run on a command line to run the tests.
 * `test/lib` folder with a git submodule in `test/lib/googletest`, and possibly other libraries.


## License

&copy; 2020 Christian Feichtinger.

Open sourced under MIT license, the terms of which can be read here — [MIT License](http://opensource.org/licenses/MIT).
