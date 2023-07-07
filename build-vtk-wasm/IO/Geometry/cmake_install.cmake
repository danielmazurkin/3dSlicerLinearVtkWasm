# Install script for directory: /work/vtk_new/IO/Geometry

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
    "/work/vtk_new/IO/Geometry/vtkAVSucdReader.h"
    "/work/vtk_new/IO/Geometry/vtkBYUReader.h"
    "/work/vtk_new/IO/Geometry/vtkBYUWriter.h"
    "/work/vtk_new/IO/Geometry/vtkChacoReader.h"
    "/work/vtk_new/IO/Geometry/vtkFacetWriter.h"
    "/work/vtk_new/IO/Geometry/vtkFLUENTReader.h"
    "/work/vtk_new/IO/Geometry/vtkGAMBITReader.h"
    "/work/vtk_new/IO/Geometry/vtkGLTFDocumentLoader.h"
    "/work/vtk_new/IO/Geometry/vtkGLTFReader.h"
    "/work/vtk_new/IO/Geometry/vtkGLTFWriter.h"
    "/work/vtk_new/IO/Geometry/vtkHoudiniPolyDataWriter.h"
    "/work/vtk_new/IO/Geometry/vtkIVWriter.h"
    "/work/vtk_new/IO/Geometry/vtkMCubesReader.h"
    "/work/vtk_new/IO/Geometry/vtkMCubesWriter.h"
    "/work/vtk_new/IO/Geometry/vtkMFIXReader.h"
    "/work/vtk_new/IO/Geometry/vtkOBJReader.h"
    "/work/vtk_new/IO/Geometry/vtkOBJWriter.h"
    "/work/vtk_new/IO/Geometry/vtkOpenFOAMReader.h"
    "/work/vtk_new/IO/Geometry/vtkParticleReader.h"
    "/work/vtk_new/IO/Geometry/vtkProStarReader.h"
    "/work/vtk_new/IO/Geometry/vtkPTSReader.h"
    "/work/vtk_new/IO/Geometry/vtkSTLReader.h"
    "/work/vtk_new/IO/Geometry/vtkSTLWriter.h"
    "/work/vtk_new/IO/Geometry/vtkTecplotReader.h"
    "/work/vtk_new/IO/Geometry/vtkWindBladeReader.h"
    "/work/build-vtk-wasm/IO/Geometry/vtkIOGeometryModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkIOGeometry-9.2.a")
endif()

