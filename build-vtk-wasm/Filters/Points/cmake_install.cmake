# Install script for directory: /work/vtk_new/Filters/Points

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
    "/work/vtk_new/Filters/Points/vtkBoundedPointSource.h"
    "/work/vtk_new/Filters/Points/vtkConnectedPointsFilter.h"
    "/work/vtk_new/Filters/Points/vtkConvertToPointCloud.h"
    "/work/vtk_new/Filters/Points/vtkDensifyPointCloudFilter.h"
    "/work/vtk_new/Filters/Points/vtkEllipsoidalGaussianKernel.h"
    "/work/vtk_new/Filters/Points/vtkEuclideanClusterExtraction.h"
    "/work/vtk_new/Filters/Points/vtkExtractEnclosedPoints.h"
    "/work/vtk_new/Filters/Points/vtkExtractHierarchicalBins.h"
    "/work/vtk_new/Filters/Points/vtkExtractPointCloudPiece.h"
    "/work/vtk_new/Filters/Points/vtkExtractPoints.h"
    "/work/vtk_new/Filters/Points/vtkExtractSurface.h"
    "/work/vtk_new/Filters/Points/vtkFitImplicitFunction.h"
    "/work/vtk_new/Filters/Points/vtkGaussianKernel.h"
    "/work/vtk_new/Filters/Points/vtkGeneralizedKernel.h"
    "/work/vtk_new/Filters/Points/vtkHierarchicalBinningFilter.h"
    "/work/vtk_new/Filters/Points/vtkInterpolationKernel.h"
    "/work/vtk_new/Filters/Points/vtkLinearKernel.h"
    "/work/vtk_new/Filters/Points/vtkMaskPointsFilter.h"
    "/work/vtk_new/Filters/Points/vtkPCACurvatureEstimation.h"
    "/work/vtk_new/Filters/Points/vtkPCANormalEstimation.h"
    "/work/vtk_new/Filters/Points/vtkPointCloudFilter.h"
    "/work/vtk_new/Filters/Points/vtkPointDensityFilter.h"
    "/work/vtk_new/Filters/Points/vtkPointInterpolator.h"
    "/work/vtk_new/Filters/Points/vtkPointInterpolator2D.h"
    "/work/vtk_new/Filters/Points/vtkPointOccupancyFilter.h"
    "/work/vtk_new/Filters/Points/vtkPointSmoothingFilter.h"
    "/work/vtk_new/Filters/Points/vtkPoissonDiskSampler.h"
    "/work/vtk_new/Filters/Points/vtkProbabilisticVoronoiKernel.h"
    "/work/vtk_new/Filters/Points/vtkProjectPointsToPlane.h"
    "/work/vtk_new/Filters/Points/vtkRadiusOutlierRemoval.h"
    "/work/vtk_new/Filters/Points/vtkSPHCubicKernel.h"
    "/work/vtk_new/Filters/Points/vtkSPHInterpolator.h"
    "/work/vtk_new/Filters/Points/vtkSPHKernel.h"
    "/work/vtk_new/Filters/Points/vtkSPHQuarticKernel.h"
    "/work/vtk_new/Filters/Points/vtkSPHQuinticKernel.h"
    "/work/vtk_new/Filters/Points/vtkShepardKernel.h"
    "/work/vtk_new/Filters/Points/vtkSignedDistance.h"
    "/work/vtk_new/Filters/Points/vtkStatisticalOutlierRemoval.h"
    "/work/vtk_new/Filters/Points/vtkUnsignedDistance.h"
    "/work/vtk_new/Filters/Points/vtkVoronoiKernel.h"
    "/work/vtk_new/Filters/Points/vtkVoxelGrid.h"
    "/work/vtk_new/Filters/Points/vtkWendlandQuinticKernel.h"
    "/work/build-vtk-wasm/Filters/Points/vtkFiltersPointsModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkFiltersPoints-9.2.a")
endif()

