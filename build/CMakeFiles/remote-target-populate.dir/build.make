# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /opt/poky-agl/4.0.2/sysroots/x86_64-aglsdk-linux/usr/bin/cmake

# The command to remove a file.
RM = /opt/poky-agl/4.0.2/sysroots/x86_64-aglsdk-linux/usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/build

# Utility rule file for remote-target-populate.

# Include the progress variables for this target.
include CMakeFiles/remote-target-populate.dir/progress.make

CMakeFiles/remote-target-populate:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "[31m*** Fatal: RSYNC_TARGET RSYNC_PREFIX environment variables required with 'make remote-target-populate'[m"
	exit -1

remote-target-populate: CMakeFiles/remote-target-populate
remote-target-populate: CMakeFiles/remote-target-populate.dir/build.make

.PHONY : remote-target-populate

# Rule to build all files generated by this target.
CMakeFiles/remote-target-populate.dir/build: remote-target-populate

.PHONY : CMakeFiles/remote-target-populate.dir/build

CMakeFiles/remote-target-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/remote-target-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/remote-target-populate.dir/clean

CMakeFiles/remote-target-populate.dir/depend:
	cd /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/build /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/build /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/build/CMakeFiles/remote-target-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/remote-target-populate.dir/depend

