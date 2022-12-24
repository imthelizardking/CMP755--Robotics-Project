# This file is configured by CMake automatically as DartConfiguration.tcl
# If you choose not to use CMake, this file may be hand configured, by
# filling in the required variables.


# Configuration directories and files
SourceDirectory: C:/Users/Yusuf/Documents/MATLAB/CMP755--Robotics-Project/matlab/Eigen3
BuildDirectory: C:/Users/Yusuf/Documents/MATLAB/CMP755--Robotics-Project/matlab/New folder

# Where to place the cost data store
CostDataFile: 

# Site is something like machine.domain, i.e. pragmatic.crd
Site: desktop-n5l3tpe

# Build name is osname-revision-compiler, i.e. Linux-2.4.2-2smp-c++
BuildName: unknownwin-19.32.31329.0-fma-omp-rowmaj-external_blas-64bit-cxx11

# Subprojects
LabelsForSubprojects: 

# Submission information
SubmitURL: http://my.cdash.org/submit.php?project=Eigen
SubmitInactivityTimeout: 

# Dashboard start time
NightlyStartTime: 00:00:00 UTC

# Commands for the build/test/submit cycle
ConfigureCommand: "C:/Program Files/CMake/bin/cmake.exe" "C:/Users/Yusuf/Documents/MATLAB/CMP755--Robotics-Project/matlab/Eigen3"
MakeCommand: C:/Program Files/CMake/bin/cmake.exe --build . --target buildtests --config "${CTEST_CONFIGURATION_TYPE}" --  
DefaultCTestConfigurationType: Release

# version control
UpdateVersionOnly: 

# CVS options
# Default is "-d -P -A"
CVSCommand: 
CVSUpdateOptions: 

# Subversion options
SVNCommand: 
SVNOptions: 
SVNUpdateOptions: 

# Git options
GITCommand: 
GITInitSubmodules: 
GITUpdateOptions: 
GITUpdateCustom: 

# Perforce options
P4Command: 
P4Client: 
P4Options: 
P4UpdateOptions: 
P4UpdateCustom: 

# Generic update command
UpdateCommand: 
UpdateOptions: 
UpdateType: 

# Compiler info
Compiler: C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.32.31326/bin/Hostx64/x64/cl.exe
CompilerVersion: 19.32.31329.0

# Dynamic analysis (MemCheck)
PurifyCommand: 
ValgrindCommand: 
ValgrindCommandOptions: 
DrMemoryCommand: 
DrMemoryCommandOptions: 
CudaSanitizerCommand: 
CudaSanitizerCommandOptions: 
MemoryCheckType: 
MemoryCheckSanitizerOptions: 
MemoryCheckCommand: MEMORYCHECK_COMMAND-NOTFOUND
MemoryCheckCommandOptions: 
MemoryCheckSuppressionFile: 

# Coverage
CoverageCommand: COVERAGE_COMMAND-NOTFOUND
CoverageExtraFlags: -l

# Testing options
# TimeOut is the amount of time in seconds to wait for processes
# to complete during testing.  After TimeOut seconds, the
# process will be summarily terminated.
# Currently set to 25 minutes
TimeOut: 1500

# During parallel testing CTest will not start a new test if doing
# so would cause the system load to exceed this value.
TestLoad: 

UseLaunchers: 0
CurlOptions: 
# warning, if you add new options here that have to do with submit,
# you have to update cmCTestSubmitCommand.cxx

# For CTest submissions that timeout, these options
# specify behavior for retrying the submission
CTestSubmitRetryDelay: 5
CTestSubmitRetryCount: 3