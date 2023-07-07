# Install script for directory: /work/vtk_new/Filters/Parallel

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
    "/work/vtk_new/Filters/Parallel/vtkBlockDistribution.h"
    "/work/vtk_new/Filters/Parallel/vtkAdaptiveTemporalInterpolator.h"
    "/work/vtk_new/Filters/Parallel/vtkAggregateDataSetFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkAlignImageDataSetFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkAngularPeriodicFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkCollectGraph.h"
    "/work/vtk_new/Filters/Parallel/vtkCollectPolyData.h"
    "/work/vtk_new/Filters/Parallel/vtkCollectTable.h"
    "/work/vtk_new/Filters/Parallel/vtkCutMaterial.h"
    "/work/vtk_new/Filters/Parallel/vtkDistributedDataFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkDuplicatePolyData.h"
    "/work/vtk_new/Filters/Parallel/vtkExtractCTHPart.h"
    "/work/vtk_new/Filters/Parallel/vtkExtractPolyDataPiece.h"
    "/work/vtk_new/Filters/Parallel/vtkExtractUnstructuredGridPiece.h"
    "/work/vtk_new/Filters/Parallel/vtkExtractUserDefinedPiece.h"
    "/work/vtk_new/Filters/Parallel/vtkGenerateProcessIds.h"
    "/work/vtk_new/Filters/Parallel/vtkHyperTreeGridGhostCellsGenerator.h"
    "/work/vtk_new/Filters/Parallel/vtkPHyperTreeGridProbeFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkIntegrateAttributes.h"
    "/work/vtk_new/Filters/Parallel/vtkPeriodicFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkPCellDataToPointData.h"
    "/work/vtk_new/Filters/Parallel/vtkPConvertToMultiBlockDataSet.h"
    "/work/vtk_new/Filters/Parallel/vtkPExtractDataArraysOverTime.h"
    "/work/vtk_new/Filters/Parallel/vtkPExtractExodusGlobalTemporalVariables.h"
    "/work/vtk_new/Filters/Parallel/vtkPExtractSelectedArraysOverTime.h"
    "/work/vtk_new/Filters/Parallel/vtkPieceRequestFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkPieceScalars.h"
    "/work/vtk_new/Filters/Parallel/vtkPipelineSize.h"
    "/work/vtk_new/Filters/Parallel/vtkPKdTree.h"
    "/work/vtk_new/Filters/Parallel/vtkPLinearExtrusionFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkPMaskPoints.h"
    "/work/vtk_new/Filters/Parallel/vtkPMergeArrays.h"
    "/work/vtk_new/Filters/Parallel/vtkPOutlineCornerFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkPOutlineFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkPOutlineFilterInternals.h"
    "/work/vtk_new/Filters/Parallel/vtkPPolyDataNormals.h"
    "/work/vtk_new/Filters/Parallel/vtkPProbeFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkPProjectSphereFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkPReflectionFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkPResampleFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkPartitionBalancer.h"
    "/work/vtk_new/Filters/Parallel/vtkProcessIdScalars.h"
    "/work/vtk_new/Filters/Parallel/vtkPSphereSource.h"
    "/work/vtk_new/Filters/Parallel/vtkPTextureMapToSphere.h"
    "/work/vtk_new/Filters/Parallel/vtkPYoungsMaterialInterface.h"
    "/work/vtk_new/Filters/Parallel/vtkRectilinearGridOutlineFilter.h"
    "/work/vtk_new/Filters/Parallel/vtkRemoveGhosts.h"
    "/work/vtk_new/Filters/Parallel/vtkTransmitPolyDataPiece.h"
    "/work/vtk_new/Filters/Parallel/vtkTransmitRectilinearGridPiece.h"
    "/work/vtk_new/Filters/Parallel/vtkTransmitStructuredDataPiece.h"
    "/work/vtk_new/Filters/Parallel/vtkTransmitStructuredGridPiece.h"
    "/work/vtk_new/Filters/Parallel/vtkTransmitUnstructuredGridPiece.h"
    "/work/build-vtk-wasm/Filters/Parallel/vtkFiltersParallelModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkFiltersParallel-9.2.a")
endif()

