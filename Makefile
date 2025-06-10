# Platform specific configuration
MY_CMAKE := /mnt/c/Program\ Files/CMake/bin/cmake.exe
MY_TOOLCHAIN := toolchain.cmake


# General project build configuration
PROJ_NAME := WGPUtest


all: $(PROJ_NAME)


# CMake configuration step
configure:
	mkdir -p build
	$(MY_CMAKE) -S . -B build \
		-DCMAKE_TOOLCHAIN_FILE=$(MY_TOOLCHAIN)


# CMake build step
$(PROJ_NAME): configure
	$(MY_CMAKE) --build build


# Utility targets
rebuild: clean $(PROJ_NAME)


clean:
	rm -rf build/*


.PHONY: all configure $(PROJ_NAME) rebuild clean
