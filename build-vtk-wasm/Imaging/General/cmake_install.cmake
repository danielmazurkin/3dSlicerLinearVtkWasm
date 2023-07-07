# Install script for directory: /work/vtk_new/Imaging/General

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
    "/work/vtk_new/Imaging/General/vtkImageAnisotropicDiffusion2D.h"
    "/work/vtk_new/Imaging/General/vtkImageAnisotropicDiffusion3D.h"
    "/work/vtk_new/Imaging/General/vtkImageCheckerboard.h"
    "/work/vtk_new/Imaging/General/vtkImageCityBlockDistance.h"
    "/work/vtk_new/Imaging/General/vtkImageConvolve.h"
    "/work/vtk_new/Imaging/General/vtkImageCorrelation.h"
    "/work/vtk_new/Imaging/General/vtkImageEuclideanDistance.h"
    "/work/vtk_new/Imaging/General/vtkImageEuclideanToPolar.h"
    "/work/vtk_new/Imaging/General/vtkImageGaussianSmooth.h"
    "/work/vtk_new/Imaging/General/vtkImageGradient.h"
    "/work/vtk_new/Imaging/General/vtkImageGradientMagnitude.h"
    "/work/vtk_new/Imaging/General/vtkImageHybridMedian2D.h"
    "/work/vtk_new/Imaging/General/vtkImageLaplacian.h"
    "/work/vtk_new/Imaging/General/vtkImageMedian3D.h"
    "/work/vtk_new/Imaging/General/vtkImageNormalize.h"
    "/work/vtk_new/Imaging/General/vtkImageRange3D.h"
    "/work/vtk_new/Imaging/General/vtkImageSeparableConvolution.h"
    "/work/vtk_new/Imaging/General/vtkImageSlab.h"
    "/work/vtk_new/Imaging/General/vtkImageSlabReslice.h"
    "/work/vtk_new/Imaging/General/vtkImageSobel2D.h"
    "/work/vtk_new/Imaging/General/vtkImageSobel3D.h"
    "/work/vtk_new/Imaging/General/vtkImageSpatialAlgorithm.h"
    "/work/vtk_new/Imaging/General/vtkImageVariance3D.h"
    "/work/build-vtk-wasm/Imaging/General/vtkImagingGeneralModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkImagingGeneral-9.2.a")
endif()

