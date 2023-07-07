# Install script for directory: /work/vtk_new/Infovis/Core

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
    "/work/vtk_new/Infovis/Core/vtkAddMembershipArray.h"
    "/work/vtk_new/Infovis/Core/vtkAdjacencyMatrixToEdgeTable.h"
    "/work/vtk_new/Infovis/Core/vtkArrayNorm.h"
    "/work/vtk_new/Infovis/Core/vtkArrayToTable.h"
    "/work/vtk_new/Infovis/Core/vtkCollapseGraph.h"
    "/work/vtk_new/Infovis/Core/vtkCollapseVerticesByArray.h"
    "/work/vtk_new/Infovis/Core/vtkContinuousScatterplot.h"
    "/work/vtk_new/Infovis/Core/vtkDataObjectToTable.h"
    "/work/vtk_new/Infovis/Core/vtkDotProductSimilarity.h"
    "/work/vtk_new/Infovis/Core/vtkEdgeCenters.h"
    "/work/vtk_new/Infovis/Core/vtkExpandSelectedGraph.h"
    "/work/vtk_new/Infovis/Core/vtkExtractSelectedGraph.h"
    "/work/vtk_new/Infovis/Core/vtkExtractSelectedTree.h"
    "/work/vtk_new/Infovis/Core/vtkGenerateIndexArray.h"
    "/work/vtk_new/Infovis/Core/vtkGraphHierarchicalBundleEdges.h"
    "/work/vtk_new/Infovis/Core/vtkGroupLeafVertices.h"
    "/work/vtk_new/Infovis/Core/vtkKCoreDecomposition.h"
    "/work/vtk_new/Infovis/Core/vtkMergeColumns.h"
    "/work/vtk_new/Infovis/Core/vtkMergeGraphs.h"
    "/work/vtk_new/Infovis/Core/vtkMergeTables.h"
    "/work/vtk_new/Infovis/Core/vtkMutableGraphHelper.h"
    "/work/vtk_new/Infovis/Core/vtkNetworkHierarchy.h"
    "/work/vtk_new/Infovis/Core/vtkPipelineGraphSource.h"
    "/work/vtk_new/Infovis/Core/vtkPruneTreeFilter.h"
    "/work/vtk_new/Infovis/Core/vtkRandomGraphSource.h"
    "/work/vtk_new/Infovis/Core/vtkReduceTable.h"
    "/work/vtk_new/Infovis/Core/vtkRemoveHiddenData.h"
    "/work/vtk_new/Infovis/Core/vtkRemoveIsolatedVertices.h"
    "/work/vtk_new/Infovis/Core/vtkSparseArrayToTable.h"
    "/work/vtk_new/Infovis/Core/vtkStreamGraph.h"
    "/work/vtk_new/Infovis/Core/vtkStringToCategory.h"
    "/work/vtk_new/Infovis/Core/vtkStringToNumeric.h"
    "/work/vtk_new/Infovis/Core/vtkTableToArray.h"
    "/work/vtk_new/Infovis/Core/vtkTableToGraph.h"
    "/work/vtk_new/Infovis/Core/vtkTableToSparseArray.h"
    "/work/vtk_new/Infovis/Core/vtkTableToTreeFilter.h"
    "/work/vtk_new/Infovis/Core/vtkThresholdGraph.h"
    "/work/vtk_new/Infovis/Core/vtkThresholdTable.h"
    "/work/vtk_new/Infovis/Core/vtkTransferAttributes.h"
    "/work/vtk_new/Infovis/Core/vtkTransposeMatrix.h"
    "/work/vtk_new/Infovis/Core/vtkTreeDifferenceFilter.h"
    "/work/vtk_new/Infovis/Core/vtkTreeFieldAggregator.h"
    "/work/vtk_new/Infovis/Core/vtkTreeLevelsFilter.h"
    "/work/vtk_new/Infovis/Core/vtkVertexDegree.h"
    "/work/vtk_new/Infovis/Core/vtkWordCloud.h"
    "/work/build-vtk-wasm/Infovis/Core/vtkInfovisCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkInfovisCore-9.2.a")
endif()

