# Install script for directory: /work/vtk_new/Filters/Core

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
    "/work/vtk_new/Filters/Core/vtk3DLinearGridCrinkleExtractor.h"
    "/work/vtk_new/Filters/Core/vtk3DLinearGridPlaneCutter.h"
    "/work/vtk_new/Filters/Core/vtkAppendArcLength.h"
    "/work/vtk_new/Filters/Core/vtkAppendCompositeDataLeaves.h"
    "/work/vtk_new/Filters/Core/vtkAppendDataSets.h"
    "/work/vtk_new/Filters/Core/vtkAppendFilter.h"
    "/work/vtk_new/Filters/Core/vtkAppendPolyData.h"
    "/work/vtk_new/Filters/Core/vtkAppendSelection.h"
    "/work/vtk_new/Filters/Core/vtkArrayCalculator.h"
    "/work/vtk_new/Filters/Core/vtkArrayRename.h"
    "/work/vtk_new/Filters/Core/vtkAssignAttribute.h"
    "/work/vtk_new/Filters/Core/vtkAttributeDataToFieldDataFilter.h"
    "/work/vtk_new/Filters/Core/vtkAttributeDataToTableFilter.h"
    "/work/vtk_new/Filters/Core/vtkBinCellDataFilter.h"
    "/work/vtk_new/Filters/Core/vtkBinnedDecimation.h"
    "/work/vtk_new/Filters/Core/vtkCellCenters.h"
    "/work/vtk_new/Filters/Core/vtkCellDataToPointData.h"
    "/work/vtk_new/Filters/Core/vtkCenterOfMass.h"
    "/work/vtk_new/Filters/Core/vtkCleanPolyData.h"
    "/work/vtk_new/Filters/Core/vtkClipPolyData.h"
    "/work/vtk_new/Filters/Core/vtkCompositeCutter.h"
    "/work/vtk_new/Filters/Core/vtkCompositeDataProbeFilter.h"
    "/work/vtk_new/Filters/Core/vtkConnectivityFilter.h"
    "/work/vtk_new/Filters/Core/vtkConstrainedSmoothingFilter.h"
    "/work/vtk_new/Filters/Core/vtkContour3DLinearGrid.h"
    "/work/vtk_new/Filters/Core/vtkContourFilter.h"
    "/work/vtk_new/Filters/Core/vtkContourGrid.h"
    "/work/vtk_new/Filters/Core/vtkContourHelper.h"
    "/work/vtk_new/Filters/Core/vtkConvertToMultiBlockDataSet.h"
    "/work/vtk_new/Filters/Core/vtkConvertToPartitionedDataSetCollection.h"
    "/work/vtk_new/Filters/Core/vtkConvertToPolyhedra.h"
    "/work/vtk_new/Filters/Core/vtkCutter.h"
    "/work/vtk_new/Filters/Core/vtkDataObjectGenerator.h"
    "/work/vtk_new/Filters/Core/vtkDataObjectToDataSetFilter.h"
    "/work/vtk_new/Filters/Core/vtkDataSetEdgeSubdivisionCriterion.h"
    "/work/vtk_new/Filters/Core/vtkDataSetToDataObjectFilter.h"
    "/work/vtk_new/Filters/Core/vtkDecimatePolylineFilter.h"
    "/work/vtk_new/Filters/Core/vtkDecimatePro.h"
    "/work/vtk_new/Filters/Core/vtkDelaunay2D.h"
    "/work/vtk_new/Filters/Core/vtkDelaunay3D.h"
    "/work/vtk_new/Filters/Core/vtkEdgeSubdivisionCriterion.h"
    "/work/vtk_new/Filters/Core/vtkElevationFilter.h"
    "/work/vtk_new/Filters/Core/vtkExecutionTimer.h"
    "/work/vtk_new/Filters/Core/vtkExplicitStructuredGridCrop.h"
    "/work/vtk_new/Filters/Core/vtkExplicitStructuredGridToUnstructuredGrid.h"
    "/work/vtk_new/Filters/Core/vtkExtractCells.h"
    "/work/vtk_new/Filters/Core/vtkExtractCellsAlongPolyLine.h"
    "/work/vtk_new/Filters/Core/vtkExtractEdges.h"
    "/work/vtk_new/Filters/Core/vtkFeatureEdges.h"
    "/work/vtk_new/Filters/Core/vtkFieldDataToAttributeDataFilter.h"
    "/work/vtk_new/Filters/Core/vtkFlyingEdges2D.h"
    "/work/vtk_new/Filters/Core/vtkFlyingEdges3D.h"
    "/work/vtk_new/Filters/Core/vtkFlyingEdgesPlaneCutter.h"
    "/work/vtk_new/Filters/Core/vtkGlyph2D.h"
    "/work/vtk_new/Filters/Core/vtkGlyph3D.h"
    "/work/vtk_new/Filters/Core/vtkGridSynchronizedTemplates3D.h"
    "/work/vtk_new/Filters/Core/vtkHedgeHog.h"
    "/work/vtk_new/Filters/Core/vtkHull.h"
    "/work/vtk_new/Filters/Core/vtkHyperTreeGridProbeFilter.h"
    "/work/vtk_new/Filters/Core/vtkIdFilter.h"
    "/work/vtk_new/Filters/Core/vtkImageAppend.h"
    "/work/vtk_new/Filters/Core/vtkImageDataToExplicitStructuredGrid.h"
    "/work/vtk_new/Filters/Core/vtkImplicitPolyDataDistance.h"
    "/work/vtk_new/Filters/Core/vtkImplicitProjectOnPlaneDistance.h"
    "/work/vtk_new/Filters/Core/vtkMarchingCubes.h"
    "/work/vtk_new/Filters/Core/vtkMarchingSquares.h"
    "/work/vtk_new/Filters/Core/vtkMaskFields.h"
    "/work/vtk_new/Filters/Core/vtkMaskPoints.h"
    "/work/vtk_new/Filters/Core/vtkMaskPolyData.h"
    "/work/vtk_new/Filters/Core/vtkMassProperties.h"
    "/work/vtk_new/Filters/Core/vtkMergeDataObjectFilter.h"
    "/work/vtk_new/Filters/Core/vtkMergeFields.h"
    "/work/vtk_new/Filters/Core/vtkMergeFilter.h"
    "/work/vtk_new/Filters/Core/vtkMoleculeAppend.h"
    "/work/vtk_new/Filters/Core/vtkMultiObjectMassProperties.h"
    "/work/vtk_new/Filters/Core/vtkPackLabels.h"
    "/work/vtk_new/Filters/Core/vtkPassThrough.h"
    "/work/vtk_new/Filters/Core/vtkPlaneCutter.h"
    "/work/vtk_new/Filters/Core/vtkPointDataToCellData.h"
    "/work/vtk_new/Filters/Core/vtkPolyDataConnectivityFilter.h"
    "/work/vtk_new/Filters/Core/vtkPolyDataEdgeConnectivityFilter.h"
    "/work/vtk_new/Filters/Core/vtkPolyDataNormals.h"
    "/work/vtk_new/Filters/Core/vtkPolyDataPlaneClipper.h"
    "/work/vtk_new/Filters/Core/vtkPolyDataPlaneCutter.h"
    "/work/vtk_new/Filters/Core/vtkPolyDataTangents.h"
    "/work/vtk_new/Filters/Core/vtkPolyDataToUnstructuredGrid.h"
    "/work/vtk_new/Filters/Core/vtkProbeFilter.h"
    "/work/vtk_new/Filters/Core/vtkQuadricClustering.h"
    "/work/vtk_new/Filters/Core/vtkQuadricDecimation.h"
    "/work/vtk_new/Filters/Core/vtkRearrangeFields.h"
    "/work/vtk_new/Filters/Core/vtkRectilinearSynchronizedTemplates.h"
    "/work/vtk_new/Filters/Core/vtkRemoveDuplicatePolys.h"
    "/work/vtk_new/Filters/Core/vtkRemoveUnusedPoints.h"
    "/work/vtk_new/Filters/Core/vtkResampleToImage.h"
    "/work/vtk_new/Filters/Core/vtkResampleWithDataSet.h"
    "/work/vtk_new/Filters/Core/vtkReverseSense.h"
    "/work/vtk_new/Filters/Core/vtkSimpleElevationFilter.h"
    "/work/vtk_new/Filters/Core/vtkSmoothPolyDataFilter.h"
    "/work/vtk_new/Filters/Core/vtkSphereTreeFilter.h"
    "/work/vtk_new/Filters/Core/vtkStructuredDataPlaneCutter.h"
    "/work/vtk_new/Filters/Core/vtkStaticCleanPolyData.h"
    "/work/vtk_new/Filters/Core/vtkStaticCleanUnstructuredGrid.h"
    "/work/vtk_new/Filters/Core/vtkStreamerBase.h"
    "/work/vtk_new/Filters/Core/vtkStreamingTessellator.h"
    "/work/vtk_new/Filters/Core/vtkStripper.h"
    "/work/vtk_new/Filters/Core/vtkStructuredGridAppend.h"
    "/work/vtk_new/Filters/Core/vtkStructuredGridOutlineFilter.h"
    "/work/vtk_new/Filters/Core/vtkSurfaceNets2D.h"
    "/work/vtk_new/Filters/Core/vtkSurfaceNets3D.h"
    "/work/vtk_new/Filters/Core/vtkSynchronizedTemplates2D.h"
    "/work/vtk_new/Filters/Core/vtkSynchronizedTemplates3D.h"
    "/work/vtk_new/Filters/Core/vtkSynchronizedTemplatesCutter3D.h"
    "/work/vtk_new/Filters/Core/vtkTensorGlyph.h"
    "/work/vtk_new/Filters/Core/vtkThreshold.h"
    "/work/vtk_new/Filters/Core/vtkThresholdPoints.h"
    "/work/vtk_new/Filters/Core/vtkTransposeTable.h"
    "/work/vtk_new/Filters/Core/vtkTriangleFilter.h"
    "/work/vtk_new/Filters/Core/vtkTriangleMeshPointNormals.h"
    "/work/vtk_new/Filters/Core/vtkTubeBender.h"
    "/work/vtk_new/Filters/Core/vtkTubeFilter.h"
    "/work/vtk_new/Filters/Core/vtkUnstructuredGridQuadricDecimation.h"
    "/work/vtk_new/Filters/Core/vtkUnstructuredGridToExplicitStructuredGrid.h"
    "/work/vtk_new/Filters/Core/vtkVectorDot.h"
    "/work/vtk_new/Filters/Core/vtkVectorNorm.h"
    "/work/vtk_new/Filters/Core/vtkVoronoi2D.h"
    "/work/vtk_new/Filters/Core/vtkWindowedSincPolyDataFilter.h"
    "/work/build-vtk-wasm/Filters/Core/vtkFiltersCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkFiltersCore-9.2.a")
endif()

