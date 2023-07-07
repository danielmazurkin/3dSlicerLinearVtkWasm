# Install script for directory: /work/vtk_new/Common/ExecutionModel

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
    "/work/vtk_new/Common/ExecutionModel/vtkAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkAlgorithmOutput.h"
    "/work/vtk_new/Common/ExecutionModel/vtkAnnotationLayersAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkArrayDataAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkCachedStreamingDemandDrivenPipeline.h"
    "/work/vtk_new/Common/ExecutionModel/vtkCastToConcrete.h"
    "/work/vtk_new/Common/ExecutionModel/vtkCellGridAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkCompositeDataPipeline.h"
    "/work/vtk_new/Common/ExecutionModel/vtkCompositeDataSetAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkDataObjectAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkDataSetAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkDemandDrivenPipeline.h"
    "/work/vtk_new/Common/ExecutionModel/vtkDirectedGraphAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkEnsembleSource.h"
    "/work/vtk_new/Common/ExecutionModel/vtkExecutive.h"
    "/work/vtk_new/Common/ExecutionModel/vtkExplicitStructuredGridAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkExtentRCBPartitioner.h"
    "/work/vtk_new/Common/ExecutionModel/vtkExtentSplitter.h"
    "/work/vtk_new/Common/ExecutionModel/vtkExtentTranslator.h"
    "/work/vtk_new/Common/ExecutionModel/vtkFilteringInformationKeyManager.h"
    "/work/vtk_new/Common/ExecutionModel/vtkGraphAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkHierarchicalBoxDataSetAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkHyperTreeGridAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkImageAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkImageInPlaceFilter.h"
    "/work/vtk_new/Common/ExecutionModel/vtkImageProgressIterator.h"
    "/work/vtk_new/Common/ExecutionModel/vtkImageToStructuredGrid.h"
    "/work/vtk_new/Common/ExecutionModel/vtkImageToStructuredPoints.h"
    "/work/vtk_new/Common/ExecutionModel/vtkInformationDataObjectMetaDataKey.h"
    "/work/vtk_new/Common/ExecutionModel/vtkInformationExecutivePortKey.h"
    "/work/vtk_new/Common/ExecutionModel/vtkInformationExecutivePortVectorKey.h"
    "/work/vtk_new/Common/ExecutionModel/vtkInformationIntegerRequestKey.h"
    "/work/vtk_new/Common/ExecutionModel/vtkMoleculeAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkMultiBlockDataSetAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkMultiTimeStepAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkParallelReader.h"
    "/work/vtk_new/Common/ExecutionModel/vtkPartitionedDataSetAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkPartitionedDataSetCollectionAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkPassInputTypeAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkPiecewiseFunctionAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkPiecewiseFunctionShiftScale.h"
    "/work/vtk_new/Common/ExecutionModel/vtkPointSetAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkPolyDataAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkProgressObserver.h"
    "/work/vtk_new/Common/ExecutionModel/vtkReaderAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkRectilinearGridAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkSMPProgressObserver.h"
    "/work/vtk_new/Common/ExecutionModel/vtkScalarTree.h"
    "/work/vtk_new/Common/ExecutionModel/vtkSelectionAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkSimpleImageToImageFilter.h"
    "/work/vtk_new/Common/ExecutionModel/vtkSimpleReader.h"
    "/work/vtk_new/Common/ExecutionModel/vtkSimpleScalarTree.h"
    "/work/vtk_new/Common/ExecutionModel/vtkSpanSpace.h"
    "/work/vtk_new/Common/ExecutionModel/vtkSphereTree.h"
    "/work/vtk_new/Common/ExecutionModel/vtkStreamingDemandDrivenPipeline.h"
    "/work/vtk_new/Common/ExecutionModel/vtkStructuredGridAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkTableAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkThreadedCompositeDataPipeline.h"
    "/work/vtk_new/Common/ExecutionModel/vtkThreadedImageAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkTreeAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkTrivialConsumer.h"
    "/work/vtk_new/Common/ExecutionModel/vtkTrivialProducer.h"
    "/work/vtk_new/Common/ExecutionModel/vtkUndirectedGraphAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkUniformGridPartitioner.h"
    "/work/vtk_new/Common/ExecutionModel/vtkUnstructuredGridAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkUnstructuredGridBaseAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkNonOverlappingAMRAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkOverlappingAMRAlgorithm.h"
    "/work/vtk_new/Common/ExecutionModel/vtkUniformGridAMRAlgorithm.h"
    "/work/build-vtk-wasm/Common/ExecutionModel/vtkCommonExecutionModelModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkCommonExecutionModel-9.2.a")
endif()

