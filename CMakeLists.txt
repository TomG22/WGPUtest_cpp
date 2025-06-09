# Initialize the project
cmake_minimum_required(VERSION 3.10)
project(WGPUtest)
set(CMAKE_CXX_STANDARD 20)

# Specify the executable and link the project source files
add_executable(${PROJECT_NAME} main.cpp)
