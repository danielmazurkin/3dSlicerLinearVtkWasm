# Install script for directory: /work/vtk_new/Common/Math

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
    "/work/vtk_new/Common/Math/vtkTuple.h"
    "/work/vtk_new/Common/Math/vtkAmoebaMinimizer.h"
    "/work/vtk_new/Common/Math/vtkFFT.h"
    "/work/vtk_new/Common/Math/vtkFunctionSet.h"
    "/work/vtk_new/Common/Math/vtkInitialValueProblemSolver.h"
    "/work/vtk_new/Common/Math/vtkMatrix3x3.h"
    "/work/vtk_new/Common/Math/vtkMatrix4x4.h"
    "/work/vtk_new/Common/Math/vtkPolynomialSolversUnivariate.h"
    "/work/vtk_new/Common/Math/vtkQuaternionInterpolator.h"
    "/work/vtk_new/Common/Math/vtkRungeKutta2.h"
    "/work/vtk_new/Common/Math/vtkRungeKutta4.h"
    "/work/vtk_new/Common/Math/vtkRungeKutta45.h"
    "/work/vtk_new/Common/Math/vtkQuaternion.h"
    "/work/build-vtk-wasm/Common/Math/vtkCommonMathModule.h"
    "/work/vtk_new/Common/Math/vtkReservoirSampler.h"
    "/work/vtk_new/Common/Math/vtkFFT.txx"
    "/work/vtk_new/Common/Math/vtkQuaternion.txx"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkCommonMath-9.2.a")
endif()

