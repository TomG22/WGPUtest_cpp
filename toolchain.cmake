# Set the development's system-specific CMake configuration
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_GENERATOR_PLATFORM x64)
set(CMAKE_CXX_STANDARD 20)

# Used for LSP include path discovery
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(DCMAKE_CXX_USE_RESPONSE_FILE_FOR_INCLUDES OFF)
