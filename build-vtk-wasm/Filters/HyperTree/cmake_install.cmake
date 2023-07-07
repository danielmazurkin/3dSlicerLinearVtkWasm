# Install script for directory: /work/vtk_new/Filters/HyperTree

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
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridAxisClip.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridAxisCut.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridAxisReflection.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridCellCenters.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridContour.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridDepthLimiter.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridEvaluateCoarse.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridGeometry.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridGradient.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridPlaneCutter.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridThreshold.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridToDualGrid.h"
    "/work/vtk_new/Filters/HyperTree/vtkHyperTreeGridToUnstructuredGrid.h"
    "/work/vtk_new/Filters/HyperTree/vtkImageDataToHyperTreeGrid.h"
    "/work/build-vtk-wasm/Filters/HyperTree/vtkFiltersHyperTreeModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkFiltersHyperTree-9.2.a")
endif()

