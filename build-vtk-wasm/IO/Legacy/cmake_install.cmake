# Install script for directory: /work/vtk_new/IO/Legacy

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2" TYPE FILE FILES
    "/work/vtk_new/IO/Legacy/vtkCompositeDataReader.h"
    "/work/vtk_new/IO/Legacy/vtkCompositeDataWriter.h"
    "/work/vtk_new/IO/Legacy/vtkDataObjectReader.h"
    "/work/vtk_new/IO/Legacy/vtkDataObjectWriter.h"
    "/work/vtk_new/IO/Legacy/vtkDataReader.h"
    "/work/vtk_new/IO/Legacy/vtkDataSetReader.h"
    "/work/vtk_new/IO/Legacy/vtkDataSetWriter.h"
    "/work/vtk_new/IO/Legacy/vtkDataWriter.h"
    "/work/vtk_new/IO/Legacy/vtkGenericDataObjectReader.h"
    "/work/vtk_new/IO/Legacy/vtkGenericDataObjectWriter.h"
    "/work/vtk_new/IO/Legacy/vtkGraphReader.h"
    "/work/vtk_new/IO/Legacy/vtkGraphWriter.h"
    "/work/vtk_new/IO/Legacy/vtkPixelExtentIO.h"
    "/work/vtk_new/IO/Legacy/vtkPolyDataReader.h"
    "/work/vtk_new/IO/Legacy/vtkPolyDataWriter.h"
    "/work/vtk_new/IO/Legacy/vtkRectilinearGridReader.h"
    "/work/vtk_new/IO/Legacy/vtkRectilinearGridWriter.h"
    "/work/vtk_new/IO/Legacy/vtkSimplePointsReader.h"
    "/work/vtk_new/IO/Legacy/vtkSimplePointsWriter.h"
    "/work/vtk_new/IO/Legacy/vtkStructuredGridReader.h"
    "/work/vtk_new/IO/Legacy/vtkStructuredGridWriter.h"
    "/work/vtk_new/IO/Legacy/vtkStructuredPointsReader.h"
    "/work/vtk_new/IO/Legacy/vtkStructuredPointsWriter.h"
    "/work/vtk_new/IO/Legacy/vtkTableReader.h"
    "/work/vtk_new/IO/Legacy/vtkTableWriter.h"
    "/work/vtk_new/IO/Legacy/vtkTreeReader.h"
    "/work/vtk_new/IO/Legacy/vtkTreeWriter.h"
    "/work/vtk_new/IO/Legacy/vtkUnstructuredGridReader.h"
    "/work/vtk_new/IO/Legacy/vtkUnstructuredGridWriter.h"
    "/work/build-vtk-wasm/IO/Legacy/vtkIOLegacyModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkIOLegacy-9.2.a")
endif()

