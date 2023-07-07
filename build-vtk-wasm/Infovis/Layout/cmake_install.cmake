# Install script for directory: /work/vtk_new/Infovis/Layout

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
    "/work/vtk_new/Infovis/Layout/vtkArcParallelEdgeStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkAreaLayout.h"
    "/work/vtk_new/Infovis/Layout/vtkAreaLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkAssignCoordinates.h"
    "/work/vtk_new/Infovis/Layout/vtkAssignCoordinatesLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkAttributeClustering2DLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkBoxLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkCirclePackFrontChainLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkCirclePackLayout.h"
    "/work/vtk_new/Infovis/Layout/vtkCirclePackLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkCirclePackToPolyData.h"
    "/work/vtk_new/Infovis/Layout/vtkCircularLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkClustering2DLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkCommunity2DLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkConeLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkConstrained2DLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkCosmicTreeLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkEdgeLayout.h"
    "/work/vtk_new/Infovis/Layout/vtkEdgeLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkFast2DLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkForceDirectedLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkGeoEdgeStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkGeoMath.h"
    "/work/vtk_new/Infovis/Layout/vtkGraphLayout.h"
    "/work/vtk_new/Infovis/Layout/vtkGraphLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkIncrementalForceLayout.h"
    "/work/vtk_new/Infovis/Layout/vtkKCoreLayout.h"
    "/work/vtk_new/Infovis/Layout/vtkPassThroughEdgeStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkPassThroughLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkPerturbCoincidentVertices.h"
    "/work/vtk_new/Infovis/Layout/vtkRandomLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkSimple2DLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkSimple3DCirclesStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkSliceAndDiceLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkSpanTreeLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkSplineGraphEdges.h"
    "/work/vtk_new/Infovis/Layout/vtkSquarifyLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkStackedTreeLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkTreeLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkTreeMapLayout.h"
    "/work/vtk_new/Infovis/Layout/vtkTreeMapLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkTreeMapToPolyData.h"
    "/work/vtk_new/Infovis/Layout/vtkTreeOrbitLayoutStrategy.h"
    "/work/vtk_new/Infovis/Layout/vtkTreeRingToPolyData.h"
    "/work/build-vtk-wasm/Infovis/Layout/vtkInfovisLayoutModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkInfovisLayout-9.2.a")
endif()

