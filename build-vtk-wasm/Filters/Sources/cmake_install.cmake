# Install script for directory: /work/vtk_new/Filters/Sources

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
    "/work/vtk_new/Filters/Sources/vtkArcSource.h"
    "/work/vtk_new/Filters/Sources/vtkArrowSource.h"
    "/work/vtk_new/Filters/Sources/vtkButtonSource.h"
    "/work/vtk_new/Filters/Sources/vtkCapsuleSource.h"
    "/work/vtk_new/Filters/Sources/vtkCellTypeSource.h"
    "/work/vtk_new/Filters/Sources/vtkConeSource.h"
    "/work/vtk_new/Filters/Sources/vtkCubeSource.h"
    "/work/vtk_new/Filters/Sources/vtkCylinderSource.h"
    "/work/vtk_new/Filters/Sources/vtkDiagonalMatrixSource.h"
    "/work/vtk_new/Filters/Sources/vtkDiskSource.h"
    "/work/vtk_new/Filters/Sources/vtkEllipseArcSource.h"
    "/work/vtk_new/Filters/Sources/vtkEllipticalButtonSource.h"
    "/work/vtk_new/Filters/Sources/vtkFrustumSource.h"
    "/work/vtk_new/Filters/Sources/vtkGlyphSource2D.h"
    "/work/vtk_new/Filters/Sources/vtkGraphToPolyData.h"
    "/work/vtk_new/Filters/Sources/vtkHandleSource.h"
    "/work/vtk_new/Filters/Sources/vtkHyperTreeGridPreConfiguredSource.h"
    "/work/vtk_new/Filters/Sources/vtkHyperTreeGridSource.h"
    "/work/vtk_new/Filters/Sources/vtkLineSource.h"
    "/work/vtk_new/Filters/Sources/vtkOutlineCornerFilter.h"
    "/work/vtk_new/Filters/Sources/vtkOutlineCornerSource.h"
    "/work/vtk_new/Filters/Sources/vtkOutlineSource.h"
    "/work/vtk_new/Filters/Sources/vtkParametricFunctionSource.h"
    "/work/vtk_new/Filters/Sources/vtkPartitionedDataSetSource.h"
    "/work/vtk_new/Filters/Sources/vtkPartitionedDataSetCollectionSource.h"
    "/work/vtk_new/Filters/Sources/vtkPlaneSource.h"
    "/work/vtk_new/Filters/Sources/vtkPlatonicSolidSource.h"
    "/work/vtk_new/Filters/Sources/vtkPointHandleSource.h"
    "/work/vtk_new/Filters/Sources/vtkPointSource.h"
    "/work/vtk_new/Filters/Sources/vtkPolyLineSource.h"
    "/work/vtk_new/Filters/Sources/vtkPolyPointSource.h"
    "/work/vtk_new/Filters/Sources/vtkProgrammableDataObjectSource.h"
    "/work/vtk_new/Filters/Sources/vtkProgrammableSource.h"
    "/work/vtk_new/Filters/Sources/vtkRandomHyperTreeGridSource.h"
    "/work/vtk_new/Filters/Sources/vtkRectangularButtonSource.h"
    "/work/vtk_new/Filters/Sources/vtkRegularPolygonSource.h"
    "/work/vtk_new/Filters/Sources/vtkSelectionSource.h"
    "/work/vtk_new/Filters/Sources/vtkSphereSource.h"
    "/work/vtk_new/Filters/Sources/vtkSuperquadricSource.h"
    "/work/vtk_new/Filters/Sources/vtkTessellatedBoxSource.h"
    "/work/vtk_new/Filters/Sources/vtkTextSource.h"
    "/work/vtk_new/Filters/Sources/vtkTexturedSphereSource.h"
    "/work/vtk_new/Filters/Sources/vtkUniformHyperTreeGridSource.h"
    "/work/build-vtk-wasm/Filters/Sources/vtkFiltersSourcesModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkFiltersSources-9.2.a")
endif()

