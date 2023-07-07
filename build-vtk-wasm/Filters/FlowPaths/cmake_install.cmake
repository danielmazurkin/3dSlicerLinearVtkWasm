# Install script for directory: /work/vtk_new/Filters/FlowPaths

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
    "/work/vtk_new/Filters/FlowPaths/vtkAbstractInterpolatedVelocityField.h"
    "/work/vtk_new/Filters/FlowPaths/vtkAMRInterpolatedVelocityField.h"
    "/work/vtk_new/Filters/FlowPaths/vtkCachingInterpolatedVelocityField.h"
    "/work/vtk_new/Filters/FlowPaths/vtkCellLocatorInterpolatedVelocityField.h"
    "/work/vtk_new/Filters/FlowPaths/vtkCompositeInterpolatedVelocityField.h"
    "/work/vtk_new/Filters/FlowPaths/vtkEvenlySpacedStreamlines2D.h"
    "/work/vtk_new/Filters/FlowPaths/vtkInterpolatedVelocityField.h"
    "/work/vtk_new/Filters/FlowPaths/vtkLagrangianBasicIntegrationModel.h"
    "/work/vtk_new/Filters/FlowPaths/vtkLagrangianMatidaIntegrationModel.h"
    "/work/vtk_new/Filters/FlowPaths/vtkLagrangianParticle.h"
    "/work/vtk_new/Filters/FlowPaths/vtkLagrangianParticleTracker.h"
    "/work/vtk_new/Filters/FlowPaths/vtkLinearTransformCellLocator.h"
    "/work/vtk_new/Filters/FlowPaths/vtkModifiedBSPTree.h"
    "/work/vtk_new/Filters/FlowPaths/vtkParallelVectors.h"
    "/work/vtk_new/Filters/FlowPaths/vtkParticlePathFilter.h"
    "/work/vtk_new/Filters/FlowPaths/vtkParticleTracer.h"
    "/work/vtk_new/Filters/FlowPaths/vtkParticleTracerBase.h"
    "/work/vtk_new/Filters/FlowPaths/vtkStreaklineFilter.h"
    "/work/vtk_new/Filters/FlowPaths/vtkStreamSurface.h"
    "/work/vtk_new/Filters/FlowPaths/vtkStreamTracer.h"
    "/work/vtk_new/Filters/FlowPaths/vtkTemporalInterpolatedVelocityField.h"
    "/work/vtk_new/Filters/FlowPaths/vtkVectorFieldTopology.h"
    "/work/vtk_new/Filters/FlowPaths/vtkVortexCore.h"
    "/work/build-vtk-wasm/Filters/FlowPaths/vtkFiltersFlowPathsModule.h"
    "/work/vtk_new/Filters/FlowPaths/vtkLagrangianThreadedData.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkFiltersFlowPaths-9.2.a")
endif()

