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

# Utility rule file for rpm.

# Include the progress variables for this target.
include CMakeFiles/rpm.dir/progress.make

CMakeFiles/rpm: agl-low-can-service.spec


agl-low-can-service.spec: libs/bitfield-c/libbitfield-c.a
agl-low-can-service.spec: libs/ini-config/libini-config.a
agl-low-can-service.spec: libs/isotp-c/libisotp-c.a
agl-low-can-service.spec: libs/openxc-message-format/libopenxc-message-format.a
agl-low-can-service.spec: libs/uds-c/libuds-c.a
agl-low-can-service.spec: low-can-binding/afb-low-can.so
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating agl-low-can-service.spec"
	rpmbuild --define="%_sourcedir /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/conf.d/packaging" -ba /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/conf.d/packaging/agl-low-can-service.spec

rpm: CMakeFiles/rpm
rpm: agl-low-can-service.spec
rpm: CMakeFiles/rpm.dir/build.make
	/opt/poky-agl/4.0.2/sysroots/x86_64-aglsdk-linux/usr/bin/cmake -E cmake_echo_color --cyan ++\ Install\ widget\ file\ using\ in\ the\ target\ :\ afm-util\ install\ low-can-service.wgt
.PHONY : rpm

# Rule to build all files generated by this target.
CMakeFiles/rpm.dir/build: rpm

.PHONY : CMakeFiles/rpm.dir/build

CMakeFiles/rpm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rpm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rpm.dir/clean

CMakeFiles/rpm.dir/depend:
	cd /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/build /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/build /home/vgn5kor/AGL_apps/gerrit_apps/low-level-can-service/build/CMakeFiles/rpm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rpm.dir/depend

