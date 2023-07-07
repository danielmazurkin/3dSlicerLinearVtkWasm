# Install script for directory: /work/vtk_new/Filters/Hybrid

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
    "/work/vtk_new/Filters/Hybrid/vtkAdaptiveDataSetSurfaceFilter.h"
    "/work/vtk_new/Filters/Hybrid/vtkBSplineTransform.h"
    "/work/vtk_new/Filters/Hybrid/vtkDepthSortPolyData.h"
    "/work/vtk_new/Filters/Hybrid/vtkDSPFilterDefinition.h"
    "/work/vtk_new/Filters/Hybrid/vtkDSPFilterGroup.h"
    "/work/vtk_new/Filters/Hybrid/vtkEarthSource.h"
    "/work/vtk_new/Filters/Hybrid/vtkFacetReader.h"
    "/work/vtk_new/Filters/Hybrid/vtkForceTime.h"
    "/work/vtk_new/Filters/Hybrid/vtkGenerateTimeSteps.h"
    "/work/vtk_new/Filters/Hybrid/vtkGreedyTerrainDecimation.h"
    "/work/vtk_new/Filters/Hybrid/vtkGridTransform.h"
    "/work/vtk_new/Filters/Hybrid/vtkImageToPolyDataFilter.h"
    "/work/vtk_new/Filters/Hybrid/vtkImplicitModeller.h"
    "/work/vtk_new/Filters/Hybrid/vtkPCAAnalysisFilter.h"
    "/work/vtk_new/Filters/Hybrid/vtkPolyDataSilhouette.h"
    "/work/vtk_new/Filters/Hybrid/vtkProcrustesAlignmentFilter.h"
    "/work/vtk_new/Filters/Hybrid/vtkProjectedTerrainPath.h"
    "/work/vtk_new/Filters/Hybrid/vtkRenderLargeImage.h"
    "/work/vtk_new/Filters/Hybrid/vtkTemporalArrayOperatorFilter.h"
    "/work/vtk_new/Filters/Hybrid/vtkTemporalDataSetCache.h"
    "/work/vtk_new/Filters/Hybrid/vtkTemporalFractal.h"
    "/work/vtk_new/Filters/Hybrid/vtkTemporalInterpolator.h"
    "/work/vtk_new/Filters/Hybrid/vtkTemporalShiftScale.h"
    "/work/vtk_new/Filters/Hybrid/vtkTemporalSnapToTimeStep.h"
    "/work/vtk_new/Filters/Hybrid/vtkTransformToGrid.h"
    "/work/vtk_new/Filters/Hybrid/vtkWeightedTransformFilter.h"
    "/work/build-vtk-wasm/Filters/Hybrid/vtkFiltersHybridModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkFiltersHybrid-9.2.a")
endif()

