# Install script for directory: /work/vtk_new/Rendering/Annotation

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
    "/work/vtk_new/Rendering/Annotation/vtkAnnotatedCubeActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkArcPlotter.h"
    "/work/vtk_new/Rendering/Annotation/vtkAxesActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkAxisActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkAxisActor2D.h"
    "/work/vtk_new/Rendering/Annotation/vtkAxisFollower.h"
    "/work/vtk_new/Rendering/Annotation/vtkBarChartActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkCaptionActor2D.h"
    "/work/vtk_new/Rendering/Annotation/vtkConvexHull2D.h"
    "/work/vtk_new/Rendering/Annotation/vtkCornerAnnotation.h"
    "/work/vtk_new/Rendering/Annotation/vtkCubeAxesActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkCubeAxesActor2D.h"
    "/work/vtk_new/Rendering/Annotation/vtkGraphAnnotationLayersFilter.h"
    "/work/vtk_new/Rendering/Annotation/vtkLeaderActor2D.h"
    "/work/vtk_new/Rendering/Annotation/vtkLegendBoxActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkLegendScaleActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkParallelCoordinatesActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkPieChartActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkPolarAxesActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkProp3DAxisFollower.h"
    "/work/vtk_new/Rendering/Annotation/vtkScalarBarActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkSpiderPlotActor.h"
    "/work/vtk_new/Rendering/Annotation/vtkXYPlotActor.h"
    "/work/build-vtk-wasm/Rendering/Annotation/vtkRenderingAnnotationModule.h"
    "/work/vtk_new/Rendering/Annotation/vtkScalarBarActorInternal.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkRenderingAnnotation-9.2.a")
endif()

