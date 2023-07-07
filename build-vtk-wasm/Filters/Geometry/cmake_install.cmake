# Install script for directory: /work/vtk_new/Filters/Geometry

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
    "/work/vtk_new/Filters/Geometry/vtkAbstractGridConnectivity.h"
    "/work/vtk_new/Filters/Geometry/vtkAttributeSmoothingFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkCompositeDataGeometryFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkDataSetRegionSurfaceFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkDataSetSurfaceFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkExplicitStructuredGridSurfaceFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkGeometryFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkHierarchicalDataSetGeometryFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkImageDataGeometryFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkImageDataToUniformGrid.h"
    "/work/vtk_new/Filters/Geometry/vtkLinearToQuadraticCellsFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkMarkBoundaryFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkProjectSphereFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkRecoverGeometryWireframe.h"
    "/work/vtk_new/Filters/Geometry/vtkRectilinearGridGeometryFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkRectilinearGridPartitioner.h"
    "/work/vtk_new/Filters/Geometry/vtkStructuredAMRGridConnectivity.h"
    "/work/vtk_new/Filters/Geometry/vtkStructuredAMRNeighbor.h"
    "/work/vtk_new/Filters/Geometry/vtkStructuredGridConnectivity.h"
    "/work/vtk_new/Filters/Geometry/vtkStructuredGridGeometryFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkStructuredGridPartitioner.h"
    "/work/vtk_new/Filters/Geometry/vtkStructuredNeighbor.h"
    "/work/vtk_new/Filters/Geometry/vtkStructuredPointsGeometryFilter.h"
    "/work/vtk_new/Filters/Geometry/vtkUnstructuredGridGeometryFilter.h"
    "/work/build-vtk-wasm/Filters/Geometry/vtkFiltersGeometryModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkFiltersGeometry-9.2.a")
endif()

