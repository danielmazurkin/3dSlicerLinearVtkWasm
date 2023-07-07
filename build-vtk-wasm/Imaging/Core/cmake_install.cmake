# Install script for directory: /work/vtk_new/Imaging/Core

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
    "/work/vtk_new/Imaging/Core/vtkAbstractImageInterpolator.h"
    "/work/vtk_new/Imaging/Core/vtkExtractVOI.h"
    "/work/vtk_new/Imaging/Core/vtkGenericImageInterpolator.h"
    "/work/vtk_new/Imaging/Core/vtkImageAppendComponents.h"
    "/work/vtk_new/Imaging/Core/vtkImageBlend.h"
    "/work/vtk_new/Imaging/Core/vtkImageBSplineCoefficients.h"
    "/work/vtk_new/Imaging/Core/vtkImageBSplineInternals.h"
    "/work/vtk_new/Imaging/Core/vtkImageBSplineInterpolator.h"
    "/work/vtk_new/Imaging/Core/vtkImageCacheFilter.h"
    "/work/vtk_new/Imaging/Core/vtkImageCast.h"
    "/work/vtk_new/Imaging/Core/vtkImageChangeInformation.h"
    "/work/vtk_new/Imaging/Core/vtkImageClip.h"
    "/work/vtk_new/Imaging/Core/vtkImageConstantPad.h"
    "/work/vtk_new/Imaging/Core/vtkImageDataStreamer.h"
    "/work/vtk_new/Imaging/Core/vtkImageDecomposeFilter.h"
    "/work/vtk_new/Imaging/Core/vtkImageDifference.h"
    "/work/vtk_new/Imaging/Core/vtkImageExtractComponents.h"
    "/work/vtk_new/Imaging/Core/vtkImageFlip.h"
    "/work/vtk_new/Imaging/Core/vtkImageInterpolator.h"
    "/work/vtk_new/Imaging/Core/vtkImageIterateFilter.h"
    "/work/vtk_new/Imaging/Core/vtkImageMagnify.h"
    "/work/vtk_new/Imaging/Core/vtkImageMapToColors.h"
    "/work/vtk_new/Imaging/Core/vtkImageMask.h"
    "/work/vtk_new/Imaging/Core/vtkImageMirrorPad.h"
    "/work/vtk_new/Imaging/Core/vtkImagePadFilter.h"
    "/work/vtk_new/Imaging/Core/vtkImagePermute.h"
    "/work/vtk_new/Imaging/Core/vtkImagePointDataIterator.h"
    "/work/vtk_new/Imaging/Core/vtkImagePointIterator.h"
    "/work/vtk_new/Imaging/Core/vtkImageProbeFilter.h"
    "/work/vtk_new/Imaging/Core/vtkImageResample.h"
    "/work/vtk_new/Imaging/Core/vtkImageResize.h"
    "/work/vtk_new/Imaging/Core/vtkImageReslice.h"
    "/work/vtk_new/Imaging/Core/vtkImageResliceToColors.h"
    "/work/vtk_new/Imaging/Core/vtkImageShiftScale.h"
    "/work/vtk_new/Imaging/Core/vtkImageShrink3D.h"
    "/work/vtk_new/Imaging/Core/vtkImageSincInterpolator.h"
    "/work/vtk_new/Imaging/Core/vtkImageStencilAlgorithm.h"
    "/work/vtk_new/Imaging/Core/vtkImageStencilData.h"
    "/work/vtk_new/Imaging/Core/vtkImageStencilIterator.h"
    "/work/vtk_new/Imaging/Core/vtkImageStencilSource.h"
    "/work/vtk_new/Imaging/Core/vtkImageThreshold.h"
    "/work/vtk_new/Imaging/Core/vtkImageTranslateExtent.h"
    "/work/vtk_new/Imaging/Core/vtkImageWrapPad.h"
    "/work/vtk_new/Imaging/Core/vtkRTAnalyticSource.h"
    "/work/build-vtk-wasm/Imaging/Core/vtkImagingCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkImagingCore-9.2.a")
endif()

