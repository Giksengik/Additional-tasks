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
CMAKE_SOURCE_DIR = "D:\github\Additional tasks\microbi"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\github\Additional tasks\microbi\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/microbi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/microbi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/microbi.dir/flags.make

CMakeFiles/microbi.dir/main.cpp.obj: CMakeFiles/microbi.dir/flags.make
CMakeFiles/microbi.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\github\Additional tasks\microbi\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/microbi.dir/main.cpp.obj"
	D:\comp\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\microbi.dir\main.cpp.obj -c "D:\github\Additional tasks\microbi\main.cpp"

CMakeFiles/microbi.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/microbi.dir/main.cpp.i"
	D:\comp\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\github\Additional tasks\microbi\main.cpp" > CMakeFiles\microbi.dir\main.cpp.i

CMakeFiles/microbi.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/microbi.dir/main.cpp.s"
	D:\comp\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\github\Additional tasks\microbi\main.cpp" -o CMakeFiles\microbi.dir\main.cpp.s

# Object files for target microbi
microbi_OBJECTS = \
"CMakeFiles/microbi.dir/main.cpp.obj"

# External object files for target microbi
microbi_EXTERNAL_OBJECTS =

microbi.exe: CMakeFiles/microbi.dir/main.cpp.obj
microbi.exe: CMakeFiles/microbi.dir/build.make
microbi.exe: CMakeFiles/microbi.dir/linklibs.rsp
microbi.exe: CMakeFiles/microbi.dir/objects1.rsp
microbi.exe: CMakeFiles/microbi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\github\Additional tasks\microbi\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable microbi.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\microbi.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/microbi.dir/build: microbi.exe

.PHONY : CMakeFiles/microbi.dir/build

CMakeFiles/microbi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\microbi.dir\cmake_clean.cmake
.PHONY : CMakeFiles/microbi.dir/clean

CMakeFiles/microbi.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\github\Additional tasks\microbi" "D:\github\Additional tasks\microbi" "D:\github\Additional tasks\microbi\cmake-build-debug" "D:\github\Additional tasks\microbi\cmake-build-debug" "D:\github\Additional tasks\microbi\cmake-build-debug\CMakeFiles\microbi.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/microbi.dir/depend

