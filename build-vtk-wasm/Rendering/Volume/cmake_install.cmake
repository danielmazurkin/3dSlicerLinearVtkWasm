# Install script for directory: /work/vtk_new/Rendering/Volume

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
    "/work/vtk_new/Rendering/Volume/vtkBlockSortHelper.h"
    "/work/vtk_new/Rendering/Volume/vtkDirectionEncoder.h"
    "/work/vtk_new/Rendering/Volume/vtkEncodedGradientEstimator.h"
    "/work/vtk_new/Rendering/Volume/vtkEncodedGradientShader.h"
    "/work/vtk_new/Rendering/Volume/vtkFiniteDifferenceGradientEstimator.h"
    "/work/vtk_new/Rendering/Volume/vtkFixedPointRayCastImage.h"
    "/work/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOHelper.h"
    "/work/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOShadeHelper.h"
    "/work/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeHelper.h"
    "/work/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeShadeHelper.h"
    "/work/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastHelper.h"
    "/work/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastMapper.h"
    "/work/vtk_new/Rendering/Volume/vtkFixedPointVolumeRayCastMIPHelper.h"
    "/work/vtk_new/Rendering/Volume/vtkGPUVolumeRayCastMapper.h"
    "/work/vtk_new/Rendering/Volume/vtkMultiVolume.h"
    "/work/vtk_new/Rendering/Volume/vtkOSPRayVolumeInterface.h"
    "/work/vtk_new/Rendering/Volume/vtkProjectedTetrahedraMapper.h"
    "/work/vtk_new/Rendering/Volume/vtkRayCastImageDisplayHelper.h"
    "/work/vtk_new/Rendering/Volume/vtkRecursiveSphereDirectionEncoder.h"
    "/work/vtk_new/Rendering/Volume/vtkSphericalDirectionEncoder.h"
    "/work/vtk_new/Rendering/Volume/vtkUnstructuredGridBunykRayCastFunction.h"
    "/work/vtk_new/Rendering/Volume/vtkUnstructuredGridHomogeneousRayIntegrator.h"
    "/work/vtk_new/Rendering/Volume/vtkUnstructuredGridLinearRayIntegrator.h"
    "/work/vtk_new/Rendering/Volume/vtkUnstructuredGridPartialPreIntegration.h"
    "/work/vtk_new/Rendering/Volume/vtkUnstructuredGridPreIntegration.h"
    "/work/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeMapper.h"
    "/work/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeRayCastFunction.h"
    "/work/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeRayCastIterator.h"
    "/work/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeRayCastMapper.h"
    "/work/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeRayIntegrator.h"
    "/work/vtk_new/Rendering/Volume/vtkUnstructuredGridVolumeZSweepMapper.h"
    "/work/vtk_new/Rendering/Volume/vtkVolumeMapper.h"
    "/work/vtk_new/Rendering/Volume/vtkVolumeOutlineSource.h"
    "/work/vtk_new/Rendering/Volume/vtkVolumePicker.h"
    "/work/vtk_new/Rendering/Volume/vtkVolumeRayCastSpaceLeapingImageFilter.h"
    "/work/build-vtk-wasm/Rendering/Volume/vtkRenderingVolumeModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkRenderingVolume-9.2.a")
endif()

