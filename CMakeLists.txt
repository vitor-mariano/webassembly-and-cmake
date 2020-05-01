cmake_minimum_required(VERSION 3.17)

project(WebAssemblyAndCMake VERSION 0.1.0)

add_executable("${PROJECT_NAME}" src/main.cpp)

configure_file(src/WebAssemblyAndCMake.h.in src/WebAssemblyAndCMake.h)

target_include_directories("${PROJECT_NAME}" PUBLIC "${PROJECT_BINARY_DIR}/src")

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CMAKE_CXX_COMPILER "em++")
set(CMAKE_EXECUTABLE_SUFFIX ".wasm")

set_target_properties(${PROJECT_NAME} PROPERTIES LINK_FLAGS "-O3 -s WASM=1")
