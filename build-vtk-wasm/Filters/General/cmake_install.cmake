# Install script for directory: /work/vtk_new/Filters/General

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
    "/work/vtk_new/Filters/General/vtkAnimateModes.h"
    "/work/vtk_new/Filters/General/vtkAnnotationLink.h"
    "/work/vtk_new/Filters/General/vtkAppendLocationAttributes.h"
    "/work/vtk_new/Filters/General/vtkAppendPoints.h"
    "/work/vtk_new/Filters/General/vtkApproximatingSubdivisionFilter.h"
    "/work/vtk_new/Filters/General/vtkAreaContourSpectrumFilter.h"
    "/work/vtk_new/Filters/General/vtkAxes.h"
    "/work/vtk_new/Filters/General/vtkBlankStructuredGrid.h"
    "/work/vtk_new/Filters/General/vtkBlankStructuredGridWithImage.h"
    "/work/vtk_new/Filters/General/vtkBlockIdScalars.h"
    "/work/vtk_new/Filters/General/vtkBooleanOperationPolyDataFilter.h"
    "/work/vtk_new/Filters/General/vtkBoxClipDataSet.h"
    "/work/vtk_new/Filters/General/vtkBrownianPoints.h"
    "/work/vtk_new/Filters/General/vtkCellDerivatives.h"
    "/work/vtk_new/Filters/General/vtkCellValidator.h"
    "/work/vtk_new/Filters/General/vtkCleanUnstructuredGrid.h"
    "/work/vtk_new/Filters/General/vtkCleanUnstructuredGridCells.h"
    "/work/vtk_new/Filters/General/vtkClipClosedSurface.h"
    "/work/vtk_new/Filters/General/vtkClipConvexPolyData.h"
    "/work/vtk_new/Filters/General/vtkClipDataSet.h"
    "/work/vtk_new/Filters/General/vtkClipVolume.h"
    "/work/vtk_new/Filters/General/vtkCoincidentPoints.h"
    "/work/vtk_new/Filters/General/vtkContourTriangulator.h"
    "/work/vtk_new/Filters/General/vtkCountFaces.h"
    "/work/vtk_new/Filters/General/vtkCountVertices.h"
    "/work/vtk_new/Filters/General/vtkCursor2D.h"
    "/work/vtk_new/Filters/General/vtkCursor3D.h"
    "/work/vtk_new/Filters/General/vtkCurvatures.h"
    "/work/vtk_new/Filters/General/vtkDataSetGradient.h"
    "/work/vtk_new/Filters/General/vtkDataSetGradientPrecompute.h"
    "/work/vtk_new/Filters/General/vtkDataSetTriangleFilter.h"
    "/work/vtk_new/Filters/General/vtkDateToNumeric.h"
    "/work/vtk_new/Filters/General/vtkDeflectNormals.h"
    "/work/vtk_new/Filters/General/vtkDeformPointSet.h"
    "/work/vtk_new/Filters/General/vtkDensifyPolyData.h"
    "/work/vtk_new/Filters/General/vtkDicer.h"
    "/work/vtk_new/Filters/General/vtkDiscreteFlyingEdges2D.h"
    "/work/vtk_new/Filters/General/vtkDiscreteFlyingEdges3D.h"
    "/work/vtk_new/Filters/General/vtkDiscreteFlyingEdgesClipper2D.h"
    "/work/vtk_new/Filters/General/vtkDiscreteMarchingCubes.h"
    "/work/vtk_new/Filters/General/vtkDistancePolyDataFilter.h"
    "/work/vtk_new/Filters/General/vtkEdgePoints.h"
    "/work/vtk_new/Filters/General/vtkEqualizerFilter.h"
    "/work/vtk_new/Filters/General/vtkExtractArray.h"
    "/work/vtk_new/Filters/General/vtkExtractGhostCells.h"
    "/work/vtk_new/Filters/General/vtkExtractSelectedFrustum.h"
    "/work/vtk_new/Filters/General/vtkExtractSelectionBase.h"
    "/work/vtk_new/Filters/General/vtkFiniteElementFieldDistributor.h"
    "/work/vtk_new/Filters/General/vtkGradientFilter.h"
    "/work/vtk_new/Filters/General/vtkGraphLayoutFilter.h"
    "/work/vtk_new/Filters/General/vtkGraphToPoints.h"
    "/work/vtk_new/Filters/General/vtkGraphWeightEuclideanDistanceFilter.h"
    "/work/vtk_new/Filters/General/vtkGraphWeightFilter.h"
    "/work/vtk_new/Filters/General/vtkGroupDataSetsFilter.h"
    "/work/vtk_new/Filters/General/vtkGroupTimeStepsFilter.h"
    "/work/vtk_new/Filters/General/vtkHierarchicalDataLevelFilter.h"
    "/work/vtk_new/Filters/General/vtkHyperStreamline.h"
    "/work/vtk_new/Filters/General/vtkIconGlyphFilter.h"
    "/work/vtk_new/Filters/General/vtkImageDataToPointSet.h"
    "/work/vtk_new/Filters/General/vtkImageMarchingCubes.h"
    "/work/vtk_new/Filters/General/vtkInterpolateDataSetAttributes.h"
    "/work/vtk_new/Filters/General/vtkInterpolatingSubdivisionFilter.h"
    "/work/vtk_new/Filters/General/vtkIntersectionPolyDataFilter.h"
    "/work/vtk_new/Filters/General/vtkJoinTables.h"
    "/work/vtk_new/Filters/General/vtkLevelIdScalars.h"
    "/work/vtk_new/Filters/General/vtkLinkEdgels.h"
    "/work/vtk_new/Filters/General/vtkLoopBooleanPolyDataFilter.h"
    "/work/vtk_new/Filters/General/vtkMarchingContourFilter.h"
    "/work/vtk_new/Filters/General/vtkMatricizeArray.h"
    "/work/vtk_new/Filters/General/vtkMergeArrays.h"
    "/work/vtk_new/Filters/General/vtkMergeCells.h"
    "/work/vtk_new/Filters/General/vtkMergeTimeFilter.h"
    "/work/vtk_new/Filters/General/vtkMergeVectorComponents.h"
    "/work/vtk_new/Filters/General/vtkMultiBlockDataGroupFilter.h"
    "/work/vtk_new/Filters/General/vtkMultiBlockMergeFilter.h"
    "/work/vtk_new/Filters/General/vtkMultiThreshold.h"
    "/work/vtk_new/Filters/General/vtkNormalizeMatrixVectors.h"
    "/work/vtk_new/Filters/General/vtkOBBDicer.h"
    "/work/vtk_new/Filters/General/vtkOBBTree.h"
    "/work/vtk_new/Filters/General/vtkOverlappingAMRLevelIdScalars.h"
    "/work/vtk_new/Filters/General/vtkPassArrays.h"
    "/work/vtk_new/Filters/General/vtkPassSelectedArrays.h"
    "/work/vtk_new/Filters/General/vtkPointConnectivityFilter.h"
    "/work/vtk_new/Filters/General/vtkPolyDataStreamer.h"
    "/work/vtk_new/Filters/General/vtkPolyDataToReebGraphFilter.h"
    "/work/vtk_new/Filters/General/vtkProbePolyhedron.h"
    "/work/vtk_new/Filters/General/vtkQuadraturePointInterpolator.h"
    "/work/vtk_new/Filters/General/vtkQuadraturePointsGenerator.h"
    "/work/vtk_new/Filters/General/vtkQuadratureSchemeDictionaryGenerator.h"
    "/work/vtk_new/Filters/General/vtkQuantizePolyDataPoints.h"
    "/work/vtk_new/Filters/General/vtkRandomAttributeGenerator.h"
    "/work/vtk_new/Filters/General/vtkRectilinearGridClip.h"
    "/work/vtk_new/Filters/General/vtkRectilinearGridToPointSet.h"
    "/work/vtk_new/Filters/General/vtkRectilinearGridToTetrahedra.h"
    "/work/vtk_new/Filters/General/vtkRecursiveDividingCubes.h"
    "/work/vtk_new/Filters/General/vtkReflectionFilter.h"
    "/work/vtk_new/Filters/General/vtkRemovePolyData.h"
    "/work/vtk_new/Filters/General/vtkRotationFilter.h"
    "/work/vtk_new/Filters/General/vtkSampleImplicitFunctionFilter.h"
    "/work/vtk_new/Filters/General/vtkShrinkFilter.h"
    "/work/vtk_new/Filters/General/vtkShrinkPolyData.h"
    "/work/vtk_new/Filters/General/vtkSpatialRepresentationFilter.h"
    "/work/vtk_new/Filters/General/vtkSphericalHarmonics.h"
    "/work/vtk_new/Filters/General/vtkSplineFilter.h"
    "/work/vtk_new/Filters/General/vtkSplitByCellScalarFilter.h"
    "/work/vtk_new/Filters/General/vtkSplitColumnComponents.h"
    "/work/vtk_new/Filters/General/vtkSplitField.h"
    "/work/vtk_new/Filters/General/vtkStructuredGridClip.h"
    "/work/vtk_new/Filters/General/vtkSubPixelPositionEdgels.h"
    "/work/vtk_new/Filters/General/vtkSubdivisionFilter.h"
    "/work/vtk_new/Filters/General/vtkSynchronizeTimeFilter.h"
    "/work/vtk_new/Filters/General/vtkTableBasedClipDataSet.h"
    "/work/vtk_new/Filters/General/vtkTableFFT.h"
    "/work/vtk_new/Filters/General/vtkTableToPolyData.h"
    "/work/vtk_new/Filters/General/vtkTableToStructuredGrid.h"
    "/work/vtk_new/Filters/General/vtkTemporalPathLineFilter.h"
    "/work/vtk_new/Filters/General/vtkTemporalStatistics.h"
    "/work/vtk_new/Filters/General/vtkTessellatorFilter.h"
    "/work/vtk_new/Filters/General/vtkTimeSourceExample.h"
    "/work/vtk_new/Filters/General/vtkTransformFilter.h"
    "/work/vtk_new/Filters/General/vtkTransformPolyDataFilter.h"
    "/work/vtk_new/Filters/General/vtkUncertaintyTubeFilter.h"
    "/work/vtk_new/Filters/General/vtkVertexGlyphFilter.h"
    "/work/vtk_new/Filters/General/vtkVolumeContourSpectrumFilter.h"
    "/work/vtk_new/Filters/General/vtkVoxelContoursToSurfaceFilter.h"
    "/work/vtk_new/Filters/General/vtkWarpLens.h"
    "/work/vtk_new/Filters/General/vtkWarpScalar.h"
    "/work/vtk_new/Filters/General/vtkWarpTo.h"
    "/work/vtk_new/Filters/General/vtkWarpVector.h"
    "/work/vtk_new/Filters/General/vtkYoungsMaterialInterface.h"
    "/work/build-vtk-wasm/Filters/General/vtkFiltersGeneralModule.h"
    "/work/vtk_new/Filters/General/vtkJoinTables.txx"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkFiltersGeneral-9.2.a")
endif()

