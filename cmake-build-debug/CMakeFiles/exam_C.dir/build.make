# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /cygdrive/c/Users/Win/.CLion2018.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/Win/.CLion2018.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/Win/CLionProjects/exam_C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/Win/CLionProjects/exam_C/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/exam_C.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/exam_C.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/exam_C.dir/flags.make

CMakeFiles/exam_C.dir/main.c.o: CMakeFiles/exam_C.dir/flags.make
CMakeFiles/exam_C.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Win/CLionProjects/exam_C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/exam_C.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/exam_C.dir/main.c.o   -c /cygdrive/c/Users/Win/CLionProjects/exam_C/main.c

CMakeFiles/exam_C.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/exam_C.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Win/CLionProjects/exam_C/main.c > CMakeFiles/exam_C.dir/main.c.i

CMakeFiles/exam_C.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/exam_C.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Win/CLionProjects/exam_C/main.c -o CMakeFiles/exam_C.dir/main.c.s

# Object files for target exam_C
exam_C_OBJECTS = \
"CMakeFiles/exam_C.dir/main.c.o"

# External object files for target exam_C
exam_C_EXTERNAL_OBJECTS =

exam_C.exe: CMakeFiles/exam_C.dir/main.c.o
exam_C.exe: CMakeFiles/exam_C.dir/build.make
exam_C.exe: CMakeFiles/exam_C.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Win/CLionProjects/exam_C/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable exam_C.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/exam_C.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/exam_C.dir/build: exam_C.exe

.PHONY : CMakeFiles/exam_C.dir/build

CMakeFiles/exam_C.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exam_C.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exam_C.dir/clean

CMakeFiles/exam_C.dir/depend:
	cd /cygdrive/c/Users/Win/CLionProjects/exam_C/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Win/CLionProjects/exam_C /cygdrive/c/Users/Win/CLionProjects/exam_C /cygdrive/c/Users/Win/CLionProjects/exam_C/cmake-build-debug /cygdrive/c/Users/Win/CLionProjects/exam_C/cmake-build-debug /cygdrive/c/Users/Win/CLionProjects/exam_C/cmake-build-debug/CMakeFiles/exam_C.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/exam_C.dir/depend

