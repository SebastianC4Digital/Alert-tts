# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sebastian/Documents/Alert-TTS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sebastian/Documents/Alert-TTS/build

# Include any dependencies generated for this target.
include CMakeFiles/alert.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/alert.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/alert.dir/flags.make

CMakeFiles/alert.dir/main.cpp.o: CMakeFiles/alert.dir/flags.make
CMakeFiles/alert.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sebastian/Documents/Alert-TTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/alert.dir/main.cpp.o"
	/usr/bin/g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/alert.dir/main.cpp.o -c /home/sebastian/Documents/Alert-TTS/main.cpp

CMakeFiles/alert.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alert.dir/main.cpp.i"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sebastian/Documents/Alert-TTS/main.cpp > CMakeFiles/alert.dir/main.cpp.i

CMakeFiles/alert.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alert.dir/main.cpp.s"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sebastian/Documents/Alert-TTS/main.cpp -o CMakeFiles/alert.dir/main.cpp.s

CMakeFiles/alert.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/alert.dir/main.cpp.o.requires

CMakeFiles/alert.dir/main.cpp.o.provides: CMakeFiles/alert.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/alert.dir/build.make CMakeFiles/alert.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/alert.dir/main.cpp.o.provides

CMakeFiles/alert.dir/main.cpp.o.provides.build: CMakeFiles/alert.dir/main.cpp.o


# Object files for target alert
alert_OBJECTS = \
"CMakeFiles/alert.dir/main.cpp.o"

# External object files for target alert
alert_EXTERNAL_OBJECTS =

alert: CMakeFiles/alert.dir/main.cpp.o
alert: CMakeFiles/alert.dir/build.make
alert: CMakeFiles/alert.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sebastian/Documents/Alert-TTS/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable alert"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/alert.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/alert.dir/build: alert

.PHONY : CMakeFiles/alert.dir/build

CMakeFiles/alert.dir/requires: CMakeFiles/alert.dir/main.cpp.o.requires

.PHONY : CMakeFiles/alert.dir/requires

CMakeFiles/alert.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/alert.dir/cmake_clean.cmake
.PHONY : CMakeFiles/alert.dir/clean

CMakeFiles/alert.dir/depend:
	cd /home/sebastian/Documents/Alert-TTS/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sebastian/Documents/Alert-TTS /home/sebastian/Documents/Alert-TTS /home/sebastian/Documents/Alert-TTS/build /home/sebastian/Documents/Alert-TTS/build /home/sebastian/Documents/Alert-TTS/build/CMakeFiles/alert.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/alert.dir/depend

