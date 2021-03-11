# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.17)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget lldCommon lldCore lldDriver lldMachO lldYAML lldReaderWriter lld lldCOFF lldELF lldMachO2 lldMinGW lldWasm)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target lldCommon
add_library(lldCommon STATIC IMPORTED)

set_target_properties(lldCommon PROPERTIES
  INTERFACE_LINK_LIBRARIES "-lpthread;LLVMCodeGen;LLVMCore;LLVMDebugInfoDWARF;LLVMDemangle;LLVMMC;LLVMOption;LLVMSupport;LLVMTarget"
)

# Create imported target lldCore
add_library(lldCore STATIC IMPORTED)

set_target_properties(lldCore PROPERTIES
  INTERFACE_LINK_LIBRARIES "-lpthread;LLVMBinaryFormat;LLVMMC;LLVMSupport"
)

# Create imported target lldDriver
add_library(lldDriver STATIC IMPORTED)

set_target_properties(lldDriver PROPERTIES
  INTERFACE_LINK_LIBRARIES "lldCommon;lldCore;lldMachO;lldReaderWriter;lldYAML;LLVMOption;LLVMSupport"
)

# Create imported target lldMachO
add_library(lldMachO STATIC IMPORTED)

set_target_properties(lldMachO PROPERTIES
  INTERFACE_LINK_LIBRARIES "lldCommon;lldCore;lldYAML;-lpthread;LLVMDebugInfoDWARF;LLVMDemangle;LLVMObject;LLVMSupport;LLVMTextAPI"
)

# Create imported target lldYAML
add_library(lldYAML STATIC IMPORTED)

set_target_properties(lldYAML PROPERTIES
  INTERFACE_LINK_LIBRARIES "lldCore;LLVMSupport"
)

# Create imported target lldReaderWriter
add_library(lldReaderWriter STATIC IMPORTED)

set_target_properties(lldReaderWriter PROPERTIES
  INTERFACE_LINK_LIBRARIES "lldCore;LLVMObject;LLVMSupport"
)

# Create imported target lld
add_executable(lld IMPORTED)
set_property(TARGET lld PROPERTY ENABLE_EXPORTS 1)

# Create imported target lldCOFF
add_library(lldCOFF STATIC IMPORTED)

set_target_properties(lldCOFF PROPERTIES
  INTERFACE_LINK_LIBRARIES "lldCommon;-lpthread;LLVMAArch64CodeGen;LLVMAArch64AsmParser;LLVMAArch64Desc;LLVMAArch64Disassembler;LLVMAArch64Info;LLVMAArch64Utils;LLVMBinaryFormat;LLVMCore;LLVMDebugInfoCodeView;LLVMDebugInfoDWARF;LLVMDebugInfoMSF;LLVMDebugInfoPDB;LLVMDemangle;LLVMLibDriver;LLVMLTO;LLVMMC;LLVMObject;LLVMOption;LLVMPasses;LLVMSupport;LLVMWindowsManifest"
)

# Create imported target lldELF
add_library(lldELF STATIC IMPORTED)

set_target_properties(lldELF PROPERTIES
  INTERFACE_LINK_LIBRARIES "lldCommon;-lpthread;LLVMAArch64CodeGen;LLVMAArch64AsmParser;LLVMAArch64Desc;LLVMAArch64Disassembler;LLVMAArch64Info;LLVMAArch64Utils;LLVMBinaryFormat;LLVMBitWriter;LLVMCore;LLVMDebugInfoDWARF;LLVMDemangle;LLVMLTO;LLVMMC;LLVMObject;LLVMOption;LLVMPasses;LLVMSupport"
)

# Create imported target lldMachO2
add_library(lldMachO2 STATIC IMPORTED)

set_target_properties(lldMachO2 PROPERTIES
  INTERFACE_LINK_LIBRARIES "lldCommon;-lpthread;LLVMAArch64CodeGen;LLVMAArch64AsmParser;LLVMAArch64Desc;LLVMAArch64Disassembler;LLVMAArch64Info;LLVMAArch64Utils;LLVMBinaryFormat;LLVMCore;LLVMObject;LLVMOption;LLVMSupport;LLVMTextAPI"
)

# Create imported target lldMinGW
add_library(lldMinGW STATIC IMPORTED)

set_target_properties(lldMinGW PROPERTIES
  INTERFACE_LINK_LIBRARIES "lldCOFF;lldCommon;LLVMOption;LLVMSupport"
)

# Create imported target lldWasm
add_library(lldWasm STATIC IMPORTED)

set_target_properties(lldWasm PROPERTIES
  INTERFACE_LINK_LIBRARIES "lldCommon;LLVMAArch64CodeGen;LLVMAArch64AsmParser;LLVMAArch64Desc;LLVMAArch64Disassembler;LLVMAArch64Info;LLVMAArch64Utils;LLVMBinaryFormat;LLVMCore;LLVMDemangle;LLVMLTO;LLVMMC;LLVMObject;LLVMOption;LLVMPasses;LLVMSupport"
)

if(CMAKE_VERSION VERSION_LESS 2.8.12)
  message(FATAL_ERROR "This file relies on consumers using CMake 2.8.12 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/LLDTargets-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# Make sure the targets which have been exported in some other
# export set exist.
unset(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)
foreach(_target "LLVMCodeGen" "LLVMCore" "LLVMDebugInfoDWARF" "LLVMDemangle" "LLVMMC" "LLVMOption" "LLVMSupport" "LLVMTarget" "LLVMBinaryFormat" "LLVMObject" "LLVMTextAPI" "LLVMAArch64CodeGen" "LLVMAArch64AsmParser" "LLVMAArch64Desc" "LLVMAArch64Disassembler" "LLVMAArch64Info" "LLVMAArch64Utils" "LLVMDebugInfoCodeView" "LLVMDebugInfoMSF" "LLVMDebugInfoPDB" "LLVMLibDriver" "LLVMLTO" "LLVMPasses" "LLVMWindowsManifest" "LLVMBitWriter" )
  if(NOT TARGET "${_target}" )
    set(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets "${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets} ${_target}")
  endif()
endforeach()

if(DEFINED ${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)
  if(CMAKE_FIND_PACKAGE_NAME)
    set( ${CMAKE_FIND_PACKAGE_NAME}_FOUND FALSE)
    set( ${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE "The following imported targets are referenced, but are missing: ${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets}")
  else()
    message(FATAL_ERROR "The following imported targets are referenced, but are missing: ${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets}")
  endif()
endif()
unset(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
