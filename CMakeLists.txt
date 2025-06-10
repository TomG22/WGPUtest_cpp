# Initialize the project
cmake_minimum_required(VERSION 3.10)
project(WGPUtest)


# Fetch the wgpu dependency
include(FetchContent)

FetchContent_Declare(
    wgpu_native
    URL https://github.com/gfx-rs/wgpu-native/releases/download/v25.0.2.1/wgpu-windows-x86_64-msvc-debug.zip
    URL_HASH SHA256=c626a273627d2872a0f03ef5703d2b6ff403ca246d5999449be4707f2bea5c4b
    DOWNLOAD_EXTRACT_TIMESTAMP TRUE
)

FetchContent_Populate(wgpu_native)


# Add the executable and link the project source files
add_executable(${PROJECT_NAME} main.cpp)


# Add include directories
target_include_directories(${PROJECT_NAME} PRIVATE
    ${wgpu_native_SOURCE_DIR}/include
)


# Add dependencies
target_link_libraries(${PROJECT_NAME} PRIVATE
    ${wgpu_native_SOURCE_DIR}/lib/wgpu_native.lib
)
