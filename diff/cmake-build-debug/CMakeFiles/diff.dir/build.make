# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2020.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\CLionProjects\diff

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\CLionProjects\diff\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/diff.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/diff.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/diff.dir/flags.make

CMakeFiles/diff.dir/main.cpp.obj: CMakeFiles/diff.dir/flags.make
CMakeFiles/diff.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\CLionProjects\diff\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/diff.dir/main.cpp.obj"
	D:\comp\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\diff.dir\main.cpp.obj -c D:\CLionProjects\diff\main.cpp

CMakeFiles/diff.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/diff.dir/main.cpp.i"
	D:\comp\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\CLionProjects\diff\main.cpp > CMakeFiles\diff.dir\main.cpp.i

CMakeFiles/diff.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/diff.dir/main.cpp.s"
	D:\comp\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\CLionProjects\diff\main.cpp -o CMakeFiles\diff.dir\main.cpp.s

# Object files for target diff
diff_OBJECTS = \
"CMakeFiles/diff.dir/main.cpp.obj"

# External object files for target diff
diff_EXTERNAL_OBJECTS =

diff.exe: CMakeFiles/diff.dir/main.cpp.obj
diff.exe: CMakeFiles/diff.dir/build.make
diff.exe: CMakeFiles/diff.dir/linklibs.rsp
diff.exe: CMakeFiles/diff.dir/objects1.rsp
diff.exe: CMakeFiles/diff.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\CLionProjects\diff\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable diff.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\diff.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/diff.dir/build: diff.exe

.PHONY : CMakeFiles/diff.dir/build

CMakeFiles/diff.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\diff.dir\cmake_clean.cmake
.PHONY : CMakeFiles/diff.dir/clean

CMakeFiles/diff.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\CLionProjects\diff D:\CLionProjects\diff D:\CLionProjects\diff\cmake-build-debug D:\CLionProjects\diff\cmake-build-debug D:\CLionProjects\diff\cmake-build-debug\CMakeFiles\diff.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/diff.dir/depend

