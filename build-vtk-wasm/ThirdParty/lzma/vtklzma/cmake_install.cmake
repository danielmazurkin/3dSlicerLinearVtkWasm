# Install script for directory: /work/vtk_new/ThirdParty/lzma/vtklzma

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtklzma/src/liblzma/api" TYPE FILE FILES
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/base.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/bcj.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/block.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/check.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/container.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/delta.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/filter.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/hardware.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/index.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/index_hash.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/lzma12.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/stream_flags.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/version.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma/vli.h"
    "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/vtk_lzma_mangle.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtklzma-9.2.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtklzma/src/liblzma/api/" TYPE DIRECTORY FILES "/work/vtk_new/ThirdParty/lzma/vtklzma/src/liblzma/api/lzma")
endif()

