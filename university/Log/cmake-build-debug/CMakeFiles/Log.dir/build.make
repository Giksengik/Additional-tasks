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
CMAKE_SOURCE_DIR = "D:\github\Additional tasks\Log"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\github\Additional tasks\Log\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Log.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Log.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Log.dir/flags.make

CMakeFiles/Log.dir/main.cpp.obj: CMakeFiles/Log.dir/flags.make
CMakeFiles/Log.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\github\Additional tasks\Log\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Log.dir/main.cpp.obj"
	D:\comp\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Log.dir\main.cpp.obj -c "D:\github\Additional tasks\Log\main.cpp"

CMakeFiles/Log.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Log.dir/main.cpp.i"
	D:\comp\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\github\Additional tasks\Log\main.cpp" > CMakeFiles\Log.dir\main.cpp.i

CMakeFiles/Log.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Log.dir/main.cpp.s"
	D:\comp\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\github\Additional tasks\Log\main.cpp" -o CMakeFiles\Log.dir\main.cpp.s

# Object files for target Log
Log_OBJECTS = \
"CMakeFiles/Log.dir/main.cpp.obj"

# External object files for target Log
Log_EXTERNAL_OBJECTS =

Log.exe: CMakeFiles/Log.dir/main.cpp.obj
Log.exe: CMakeFiles/Log.dir/build.make
Log.exe: CMakeFiles/Log.dir/linklibs.rsp
Log.exe: CMakeFiles/Log.dir/objects1.rsp
Log.exe: CMakeFiles/Log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\github\Additional tasks\Log\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Log.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Log.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Log.dir/build: Log.exe

.PHONY : CMakeFiles/Log.dir/build

CMakeFiles/Log.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Log.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Log.dir/clean

CMakeFiles/Log.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\github\Additional tasks\Log" "D:\github\Additional tasks\Log" "D:\github\Additional tasks\Log\cmake-build-debug" "D:\github\Additional tasks\Log\cmake-build-debug" "D:\github\Additional tasks\Log\cmake-build-debug\CMakeFiles\Log.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Log.dir/depend
