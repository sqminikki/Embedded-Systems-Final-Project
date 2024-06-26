# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /app

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /app/build

# Include any dependencies generated for this target.
include CMakeFiles/subscriber.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/subscriber.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/subscriber.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/subscriber.dir/flags.make

CMakeFiles/subscriber.dir/subscriber.c.o: CMakeFiles/subscriber.dir/flags.make
CMakeFiles/subscriber.dir/subscriber.c.o: ../subscriber.c
CMakeFiles/subscriber.dir/subscriber.c.o: CMakeFiles/subscriber.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/subscriber.dir/subscriber.c.o"
	//duo-sdk/riscv64-linux-musl-x86_64/bin/riscv64-unknown-linux-musl-gcc --sysroot=//duo-sdk/rootfs $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/subscriber.dir/subscriber.c.o -MF CMakeFiles/subscriber.dir/subscriber.c.o.d -o CMakeFiles/subscriber.dir/subscriber.c.o -c /app/subscriber.c

CMakeFiles/subscriber.dir/subscriber.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/subscriber.dir/subscriber.c.i"
	//duo-sdk/riscv64-linux-musl-x86_64/bin/riscv64-unknown-linux-musl-gcc --sysroot=//duo-sdk/rootfs $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/subscriber.c > CMakeFiles/subscriber.dir/subscriber.c.i

CMakeFiles/subscriber.dir/subscriber.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/subscriber.dir/subscriber.c.s"
	//duo-sdk/riscv64-linux-musl-x86_64/bin/riscv64-unknown-linux-musl-gcc --sysroot=//duo-sdk/rootfs $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/subscriber.c -o CMakeFiles/subscriber.dir/subscriber.c.s

# Object files for target subscriber
subscriber_OBJECTS = \
"CMakeFiles/subscriber.dir/subscriber.c.o"

# External object files for target subscriber
subscriber_EXTERNAL_OBJECTS =

subscriber: CMakeFiles/subscriber.dir/subscriber.c.o
subscriber: CMakeFiles/subscriber.dir/build.make
subscriber: ../install_cv1800b_cjson/lib/libcjson.so
subscriber: ../install_cv1800b_mqtt/lib/libmosquitto.so
subscriber: ../install_cv1800b_openssl/lib/libssl.so
subscriber: ../install_cv1800b_openssl/lib/libcrypto.so
subscriber: libssd1306.a
subscriber: libbmp280.a
subscriber: libmorse.a
subscriber: CMakeFiles/subscriber.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/app/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable subscriber"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/subscriber.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/subscriber.dir/build: subscriber
.PHONY : CMakeFiles/subscriber.dir/build

CMakeFiles/subscriber.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/subscriber.dir/cmake_clean.cmake
.PHONY : CMakeFiles/subscriber.dir/clean

CMakeFiles/subscriber.dir/depend:
	cd /app/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app /app /app/build /app/build /app/build/CMakeFiles/subscriber.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/subscriber.dir/depend

