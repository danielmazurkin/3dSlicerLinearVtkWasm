# Install script for directory: /work/vtk_new/Filters/Statistics

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
    "/work/vtk_new/Filters/Statistics/vtkAutoCorrelativeStatistics.h"
    "/work/vtk_new/Filters/Statistics/vtkBivariateLinearTableThreshold.h"
    "/work/vtk_new/Filters/Statistics/vtkComputeQuantiles.h"
    "/work/vtk_new/Filters/Statistics/vtkComputeQuartiles.h"
    "/work/vtk_new/Filters/Statistics/vtkContingencyStatistics.h"
    "/work/vtk_new/Filters/Statistics/vtkCorrelativeStatistics.h"
    "/work/vtk_new/Filters/Statistics/vtkDescriptiveStatistics.h"
    "/work/vtk_new/Filters/Statistics/vtkExtractFunctionalBagPlot.h"
    "/work/vtk_new/Filters/Statistics/vtkExtractHistogram.h"
    "/work/vtk_new/Filters/Statistics/vtkHighestDensityRegionsStatistics.h"
    "/work/vtk_new/Filters/Statistics/vtkKMeansDistanceFunctor.h"
    "/work/vtk_new/Filters/Statistics/vtkKMeansDistanceFunctorCalculator.h"
    "/work/vtk_new/Filters/Statistics/vtkKMeansStatistics.h"
    "/work/vtk_new/Filters/Statistics/vtkLengthDistribution.h"
    "/work/vtk_new/Filters/Statistics/vtkMultiCorrelativeStatistics.h"
    "/work/vtk_new/Filters/Statistics/vtkOrderStatistics.h"
    "/work/vtk_new/Filters/Statistics/vtkPCAStatistics.h"
    "/work/vtk_new/Filters/Statistics/vtkStatisticsAlgorithm.h"
    "/work/vtk_new/Filters/Statistics/vtkStrahlerMetric.h"
    "/work/vtk_new/Filters/Statistics/vtkStreamingStatistics.h"
    "/work/build-vtk-wasm/Filters/Statistics/vtkFiltersStatisticsModule.h"
    "/work/vtk_new/Filters/Statistics/vtkStatisticsAlgorithmPrivate.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkFiltersStatistics-9.2.a")
endif()

