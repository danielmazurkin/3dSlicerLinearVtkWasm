# Install script for directory: /work/vtk_new/Common/ComputationalGeometry

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
    "/work/vtk_new/Common/ComputationalGeometry/vtkBilinearQuadIntersection.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkCardinalSpline.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkKochanekSpline.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricBohemianDome.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricBour.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricBoy.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricCatalanMinimal.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricConicSpiral.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricCrossCap.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricDini.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricEllipsoid.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricEnneper.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricFigure8Klein.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricFunction.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricHenneberg.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricKlein.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricKuen.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricMobius.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricPluckerConoid.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricPseudosphere.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricRandomHills.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricRoman.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricSpline.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricSuperEllipsoid.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricSuperToroid.h"
    "/work/vtk_new/Common/ComputationalGeometry/vtkParametricTorus.h"
    "/work/build-vtk-wasm/Common/ComputationalGeometry/vtkCommonComputationalGeometryModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkCommonComputationalGeometry-9.2.a")
endif()

