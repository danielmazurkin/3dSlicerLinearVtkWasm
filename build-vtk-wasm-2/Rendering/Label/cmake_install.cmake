# Install script for directory: /work/vtk_new/Rendering/Label

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
    "/work/vtk_new/Rendering/Label/vtkDynamic2DLabelMapper.h"
    "/work/vtk_new/Rendering/Label/vtkFreeTypeLabelRenderStrategy.h"
    "/work/vtk_new/Rendering/Label/vtkLabeledDataMapper.h"
    "/work/vtk_new/Rendering/Label/vtkLabeledTreeMapDataMapper.h"
    "/work/vtk_new/Rendering/Label/vtkLabelHierarchy.h"
    "/work/vtk_new/Rendering/Label/vtkLabelHierarchyAlgorithm.h"
    "/work/vtk_new/Rendering/Label/vtkLabelHierarchyCompositeIterator.h"
    "/work/vtk_new/Rendering/Label/vtkLabelHierarchyIterator.h"
    "/work/vtk_new/Rendering/Label/vtkLabelPlacementMapper.h"
    "/work/vtk_new/Rendering/Label/vtkLabelPlacer.h"
    "/work/vtk_new/Rendering/Label/vtkLabelRenderStrategy.h"
    "/work/vtk_new/Rendering/Label/vtkLabelSizeCalculator.h"
    "/work/vtk_new/Rendering/Label/vtkPointSetToLabelHierarchy.h"
    "/work/build-vtk-wasm-2/Rendering/Label/vtkRenderingLabelModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm-2/lib/libvtkRenderingLabel-9.2.a")
endif()

