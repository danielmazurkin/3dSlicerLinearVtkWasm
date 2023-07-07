# Install script for directory: /work/vtk_new/Filters/Modeling

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
    "/work/vtk_new/Filters/Modeling/vtkAdaptiveSubdivisionFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkBandedPolyDataContourFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkButterflySubdivisionFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkCollisionDetectionFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkContourLoopExtraction.h"
    "/work/vtk_new/Filters/Modeling/vtkCookieCutter.h"
    "/work/vtk_new/Filters/Modeling/vtkDijkstraGraphGeodesicPath.h"
    "/work/vtk_new/Filters/Modeling/vtkDijkstraImageGeodesicPath.h"
    "/work/vtk_new/Filters/Modeling/vtkFillHolesFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkFitToHeightMapFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkGeodesicPath.h"
    "/work/vtk_new/Filters/Modeling/vtkGraphGeodesicPath.h"
    "/work/vtk_new/Filters/Modeling/vtkHausdorffDistancePointSetFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkHyperTreeGridOutlineFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkImageDataOutlineFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkImprintFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkLinearCellExtrusionFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkLinearExtrusionFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkLinearSubdivisionFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkLoopSubdivisionFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkOutlineFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkPolyDataPointSampler.h"
    "/work/vtk_new/Filters/Modeling/vtkProjectedTexture.h"
    "/work/vtk_new/Filters/Modeling/vtkQuadRotationalExtrusionFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkRibbonFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkRotationalExtrusionFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkRuledSurfaceFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkSectorSource.h"
    "/work/vtk_new/Filters/Modeling/vtkSelectEnclosedPoints.h"
    "/work/vtk_new/Filters/Modeling/vtkSelectPolyData.h"
    "/work/vtk_new/Filters/Modeling/vtkSpherePuzzle.h"
    "/work/vtk_new/Filters/Modeling/vtkSpherePuzzleArrows.h"
    "/work/vtk_new/Filters/Modeling/vtkSubdivideTetra.h"
    "/work/vtk_new/Filters/Modeling/vtkTrimmedExtrusionFilter.h"
    "/work/vtk_new/Filters/Modeling/vtkVolumeOfRevolutionFilter.h"
    "/work/build-vtk-wasm/Filters/Modeling/vtkFiltersModelingModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkFiltersModeling-9.2.a")
endif()

