cmake_minimum_required(VERSION 3.13)
project(Cone)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -frtti")

set(CMAKE_BUILD_TYPE "Debug")
# Устанавливаем стандарт C++14
set(CMAKE_CXX_STANDARD 14)
set(APPEND CMAKE_PREFIX_PATH ./slicer_mrml_repository/new_vtk_install/install/lib/)

set(VTK_DIR ./build-vtk-wasm-2/)

# -----------------------------------------------------------------------------
# EMSCRIPTEN only
# -----------------------------------------------------------------------------
message("Start building of npx!")

if (NOT EMSCRIPTEN)
  message("Skipping example: This needs to run inside an Emscripten build environment")
  return ()
endif ()

# -----------------------------------------------------------------------------
# Handle VTK dependency
# -----------------------------------------------------------------------------

message(STATUS "VTK_DIR: ${VTK_DIR}")

find_package(VTK COMPONENTS)
# Вывод списка библиотек VTK
message("Список библиотек VTK:")

foreach(lib ${VTK_LIBRARIES})
  message("VTK_LIB: ${lib}")
endforeach()

list(REMOVE_ITEM VTK_LIBRARIES VTK::RenderingAnnotation)
#message(STATUS "Найденные компоненты VTK: ${VTK_LIBRARIES}")
include_directories(./slicer_mrml_repository/teem/)

if (NOT VTK_FOUND)
  message("Skipping example: ${VTK_NOT_FOUND_MESSAGE}")
  return ()
endif ()

# -----------------------------------------------------------------------------
# Compile example code
# -----------------------------------------------------------------------------

add_executable(Cone Cone.cxx)
set_target_properties(Cone PROPERTIES LINK_FLAGS "-s DEMANGLE_SUPPORT=1 --bind -s ASSERTIONS -s FORCE_FILESYSTEM")

message("Current project directory: ${CMAKE_CURRENT_SOURCE_DIR}")
include_directories(./slicer_mrml_repository/)
include_directories(./slicer_mrml_repository/MRML/)
include_directories(./slicer_mrml_repository/vtkTeem)
include_directories(./slicer_mrml_repository/Core/)
include_directories(./slicer_mrml_repository/ITK-5.3)
include_directories(./slicer_mrml_repository/libarchive)
include_directories(./slicer_mrml_repository/vtkSegmentationCore)
include_directories(./slicer_mrml_repository/vtkITK)
include_directories(./slicer_mrml_repository/slicerITK/ITK/Modules/Core/Common)
include_directories(./slicer_mrml_repository/slicerITK/ITK/Modules/Core/Common/src/)
include_directories(./slicer_mrml_repository/CMake)
include_directories(./vtk_new/ThirdParty/freetype/vtkfreetype/include/)
set(CMAKE_PREFIX_PATH ./slicer_mrml_repository/config_qt/Qt5)
set(CMAKE_MODULE_PATH ./slicer_mrml_repository/config_qt/Qt5)
set(Qt5Core_DIR ./slicer_mrml_repository/qt5/QtCore/)

include_directories(./slicer_mrml_repository/VTK)
include_directories(./slicer_mrml_repository/GL/)
include_directories(./slicer_mrml_repository/Qt5CoreConfig)
include_directories(./slicer_mrml_repository/config_qt/Qt5/)
include_directories(./slicer_mrml_repository/qt5/QtCore/)
include_directories(./slicer_mrml_repository/qt5/)
include_directories(./slicer_mrml_repository/qt5/QtWidgets/)
include_directories(./slicer_mrml_repository/qt5/QtGui/)


configure_file(
        "./slicer_mrml_repository/CMake/SlicerConfig.cmake.in"
        "./slicer_mrml_repository/CMake/SlicerConfig.cmake"
)


configure_file(
        "./slicer_mrml_repository/Core/vtkMRMLConfigure.h.in"
        "./slicer_mrml_repository/Core/vtkMRMLConfigure.h"
)

configure_file(
        "./slicer_mrml_repository/vtkAddon/vtkAddonConfigure.h.in"
        "./slicer_mrml_repository/vtkAddon/vtkAddonConfigure.h"
)

configure_file(
        "./slicer_mrml_repository/vtkTeem/vtkTeemConfigure.h.in"
        "./slicer_mrml_repository/vtkTeem/vtkTeemConfigure.h"
)


configure_file(
        "./slicer_mrml_repository/slicerITK/ITK/Modules/Core/Common/src/itkNamespace.h.in"
        "./slicer_mrml_repository/slicerITK/ITK/Modules/Core/Common/src/itkNamespace.h"
)

configure_file(
        "./slicer_mrml_repository/vtkSegmentationCore/vtkSegmentationCoreConfigure.h.in"
        "./slicer_mrml_repository/vtkSegmentationCore/vtkSegmentationCoreConfigure.h"
)

configure_file(
        "./slicer_mrml_repository/CMake/vtkSlicerVersionConfigure.h.in"
        "./slicer_mrml_repository/vtkSlicerVersionConfigure.h"
)

configure_file(
        "./slicer_mrml_repository/vtkITK/vtkITKConfigure.h.in"
        "./slicer_mrml_repository/vtkITK/vtkITKConfigure.h"
)

configure_file(
        "vtk_new/Utilities/KWSys/vtksys/SystemTools.hxx.in"
        "vtk_new/Utilities/KWSys/vtksys/SystemTools.hxx"
)

configure_file(
        "vtk_new/Utilities/KWSys/vtksys/Configure.hxx.in"
        "vtk_new/Utilities/KWSys/vtksys/Configure.hxx"
)

include_directories(install/include/vtk-9.2)

include_directories(./vtk_new/Utilities/KWSys/vtksys/)
include_directories(./vtk_new/Utilities/KWSys/)
include_directories(./vtk_new/Rendering/Core)
include_directories(./build-vtk-wasm-2/Common/Core)
include_directories(./build-vtk-wasm-2/Rendering/FreeType)
include_directories(./vtk_new/Common/ExecutionModel/)
include_directories(./vtk_new/IO/Export/)
include_directories(./vtk_new/Utilities/KWIML/)
include_directories(./build-vtk-wasm-2/Common/ExecutionModel/)
include_directories(./build-vtk-wasm-2/Filters/Sources/)
include_directories(./build-vtk-wasm-2/Filters/Parallel/)
include_directories(./vtk_new/cmake-build-debug/IO/Geometry/)
include_directories(./vtk_new/IO/Geometry)
include_directories(./vtk_new/IO/SQL/)
include_directories(./vtk_new/cmake-build-debug/IO/SQL)
include_directories(./slicer_mrml_repository/vtkAddon/)
include_directories(./vtk_new/)
include_directories(./vtk_new/Filters/Core)
include_directories(./vtk_new/Filters/Sources)
include_directories(./vtk_new/Common/Core)


set(VTKAddon_SRCS
        ./slicer_mrml_repository/vtkAddon/vtkCurveGenerator.cxx
        )

add_library(additional_vtk ${VTKAddon_SRCS})

set(MRMLCore_SRCS
        ./src/BasicRender/BasicRender.cpp
        ./src/Line/Line.cxx
        ./src/Markups/Markup.cpp
        ./slicer_mrml_repository/Core/vtkMRMLVolumeNode.cxx
        ./vtk_new/Interaction/Widgets/vtkFocalPlanePointPlacer.cxx
        ./vtk_new/Rendering/Label/vtkLabelHierarchyAlgorithm.cxx
        ./slicer_mrml_repository/Slicer/Libs/MRML/DisplayableManager/vtkMRMLAbstractWidget.cxx
        ./slicer_mrml_repository/Slicer/Libs/MRML/Logic/vtkMRMLSliceLogic.cxx
        ./vtk_new/Interaction/Widgets/vtkWidgetEventTranslator.cxx
        ./vtk_new/Interaction/Widgets/vtkWidgetEvent.cxx
        ./vtk_new/Interaction/Widgets/vtkEvent.cxx
        ./vtk_new/Rendering/Label/vtkPointSetToLabelHierarchy.cxx
        ./vtk_new/Interaction/Widgets/vtkPointPlacer.cxx
        ./vtk_new/Rendering/Label/vtkLabelRenderStrategy.cxx
        ./vtk_new/Rendering/Label/vtkFreeTypeLabelRenderStrategy.cxx
        ./vtk_new/Rendering/Label/vtkLabelHierarchyCompositeIterator.cxx
        ./vtk_new/Rendering/Label/vtkLabelHierarchy.cxx
        ./vtk_new/Rendering/Label/vtkLabelHierarchyIterator.cxx
        ./slicer_mrml_repository/Slicer/Libs/MRML/Logic/vtkMRMLApplicationLogic.cxx
        ./vtk_new/Common/ExecutionModel/vtkAlgorithm.cxx
        ./slicer_mrml_repository/Core/vtkCodedEntry.cxx
        ./vtk_new/Rendering/Label/vtkLabelPlacementMapper.cxx
        ./slicer_mrml_repository/Slicer/Libs/MRML/DisplayableManager/vtkMRMLInteractionEventData.cxx
        ./vtk_new/Common/Core/vtkStringArray.cxx
        ./slicer_mrml_repository/Slicer/Libs/MRML/DisplayableManager/vtkMRMLAbstractWidgetRepresentation.cxx
        ./slicer_mrml_repository/MRML/vtkMRMLMeasurementLength.cxx
        ./slicer_mrml_repository/MRML/vtkMRMLMarkupsCurveNode.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/MRML/vtkMRMLMarkupsDisplayNode.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/MRML/vtkMRMLMarkupsNode.cxx
        ./slicer_mrml_repository/MRML/vtkMRMLMarkupsLineNode.cxx
        ./slicer_mrml_repository/vtkAddon/vtkAddonMathUtilities.cxx
        ./slicer_mrml_repository/Modeling_vtk/vtkGeodesicPath.cxx
        ./slicer_mrml_repository/Modeling_vtk/vtkGeodesicPath.h
        ./slicer_mrml_repository/Modeling_vtk/vtkGraphGeodesicPath.cxx
        ./slicer_mrml_repository/Modeling_vtk/vtkGraphGeodesicPath.h
        ./slicer_mrml_repository/Modeling_vtk/vtkDijkstraGraphGeodesicPath.cxx
        #        ./slicer_mrml_repository/vtk-9.2/vtkDijkstraGraphGeodesicPath.h
        ./slicer_mrml_repository/vtkAddon/vtkSlicerDijkstraGraphGeodesicPath.cxx
        ./slicer_mrml_repository/vtkAddon/vtkSlicerDijkstraGraphGeodesicPath.h
        ./slicer_mrml_repository/vtkAddon/vtkParallelTransportFrame.cxx
        ./slicer_mrml_repository/vtkAddon/vtkLinearSpline.cxx
        ./slicer_mrml_repository/vtkAddon/vtkLinearSpline.h
        ./slicer_mrml_repository/vtkAddon/vtkParametricPolynomialApproximation.cxx
        ./slicer_mrml_repository/vtkAddon/vtkParametricPolynomialApproximation.h
        ./slicer_mrml_repository/Core/vtkEventBroker.cxx
        ./slicer_mrml_repository/Core/vtkMRMLMeasurement.cxx
        ./slicer_mrml_repository/MRML/vtkMRMLMeasurementLength.h
        ./slicer_mrml_repository/Core/vtkMRMLStaticMeasurement.cxx
        ./slicer_mrml_repository/Core/vtkMRMLLogic.cxx
        ./slicer_mrml_repository/Core/vtkMRMLAbstractLayoutNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLAbstractViewNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLCameraNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLClipModelsNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLColorNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLColors.cxx
        ./slicer_mrml_repository/Core/vtkMRMLColorTableNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLColorTableStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLCrosshairNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLDiffusionTensorDisplayPropertiesNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLDiffusionWeightedVolumeDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLDiffusionWeightedVolumeNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLDiffusionTensorVolumeNode.h
        ./slicer_mrml_repository/Core/vtkMRMLDiffusionTensorVolumeNode.cxx
        ./slicer_mrml_repository/Slicer/Libs/MRML/Core/vtkMRMLDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLDisplayableNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLFolderDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLHierarchyNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLHierarchyStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLDisplayableHierarchyNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLInteractionNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLLabelMapVolumeDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLLabelMapVolumeNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLLinearTransformNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLLinearTransformSequenceStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLLinearTransformSequenceStorageNode.h
        ./slicer_mrml_repository/MRML/vtkMRMLMarkupsFiducialNode.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerPointsRepresentation2D.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerPointsWidget.h
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerPointsRepresentation3D.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerPointsWidget.cxx
        ./slicer_mrml_repository/Core/vtkMRMLMarkupsStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLModelDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLModelHierarchyNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLModelNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLModelStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLNode.h
        ./slicer_mrml_repository/Core/vtkMRMLParser.cxx
        ./slicer_mrml_repository/Core/vtkMRMLPlotChartNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLPlotSeriesNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLPlotViewNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLProceduralColorNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLProceduralColorStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLROIListNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLROINode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLScalarVolumeDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLScalarVolumeNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSubjectHierarchyNode.h
        ./slicer_mrml_repository/Core/vtkMRMLStorableNode.h
        ./slicer_mrml_repository/Core/vtkMRMLStorableNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLDisplayableNode.h
        ./slicer_mrml_repository/Core/vtkMRMLDisplayableNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLScene.cxx
        ./slicer_mrml_repository/Core/vtkMRMLScene.h
        ./slicer_mrml_repository/Core/vtkMRMLTransformableNode.h
        ./slicer_mrml_repository/Core/vtkMRMLTransformableNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLVectorVolumeNode.h
        ./slicer_mrml_repository/Core/vtkMRMLVectorVolumeNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLDiffusionImageVolumeNode.h
        ./slicer_mrml_repository/Core/vtkMRMLDiffusionImageVolumeNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSceneViewNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSceneViewStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLScriptedModuleNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLScriptedModuleNode.h
        ./slicer_mrml_repository/Core/vtkMRMLSegmentationNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSegmentationNode.h
        ./slicer_mrml_repository/Core/vtkMRMLSegmentationDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSegmentationDisplayNode.h
        ./slicer_mrml_repository/Core/vtkMRMLSegmentationStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSegmentationStorageNode.h
        ./slicer_mrml_repository/Core/vtkMRMLSequenceNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSequenceNode.h
        ./slicer_mrml_repository/Core/vtkMRMLSequenceStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSequenceStorageNode.h
        ./slicer_mrml_repository/Core/vtkMRMLSelectionNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSliceCompositeNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSliceDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSliceNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSnapshotClipNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLStorableNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSubjectHierarchyConstants.h
        ./slicer_mrml_repository/Core/vtkMRMLSubjectHierarchyNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSubjectHierarchyNode.h
        ./slicer_mrml_repository/Core/vtkMRMLSubjectHierarchyLegacyNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLSubjectHierarchyLegacyNode.h
        ./slicer_mrml_repository/Core/vtkMRMLTableNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLTableStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLTableSQLiteStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLTableViewNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLTextNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLTextStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLTransformNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLTransformStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLTransformDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLTransformableNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLUnitNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLVectorVolumeDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLViewNode.cxx
#        ./slicer_mrml_repository/Core/vtkMRMLVolumeArchetypeStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLVolumeDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLGlyphableVolumeDisplayNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLGlyphableVolumeSliceDisplayNode.cxx
#        ./slicer_mrml_repository/Core/vtkMRMLVolumeHeaderlessStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLVolumeSequenceStorageNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLVolumeSequenceStorageNode.h
        ./slicer_mrml_repository/Core/vtkObservation.cxx
        ./slicer_mrml_repository/Core/vtkObserverManager.cxx
        ./slicer_mrml_repository/Core/vtkMRMLLayoutNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLNRRDStorageNode.h
        ./slicer_mrml_repository/Core/vtkMRMLNRRDStorageNode.cxx
        # Classes for remote data handling:
        ./slicer_mrml_repository/Core/vtkCacheManager.cxx
        ./slicer_mrml_repository/Core/vtkDataIOManager.cxx
        ./slicer_mrml_repository/Core/vtkDataTransfer.cxx
        ./slicer_mrml_repository/Core/vtkMRMLBSplineTransformNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLGridTransformNode.cxx
        ./slicer_mrml_repository/Core/vtkPermissionPrompter.cxx
        ./slicer_mrml_repository/Core/vtkURIHandler.cxx
        ./slicer_mrml_repository/Core/vtkTagTableCollection.cxx
        ./slicer_mrml_repository/Core/vtkTagTable.cxx
        ./slicer_mrml_repository/Core/vtkMRMLdGEMRICProceduralColorNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLPETProceduralColorNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLTensorVolumeNode.cxx
        )

string(REGEX REPLACE "\\.cxx" ".h" MRMLCore_SRCS_HEADERS "${MRMLCore_SRCS}")
source_group("Header Files" FILES ${MRMLCore_SRCS_HEADERS})
set(srcs ${MRMLCore_SRCS} ${MRMLCore_SRCS_HEADERS})

file(GLOB MY_SOURCES_VTK_TEEM "./slicer_mrml_repository/vtkTeem/*.cxx")
add_library(vtk_teem_static_lib STATIC ${MY_SOURCES_VTK_TEEM})

file(GLOB VTK_VECTOR "./vtk_new/Rendering/FreeType/*.cxx")
add_library(file_widgets ${FILE_WIDGETS} ${VTK_VECTOR})

set(name mrml_core)
add_library(${name} ${srcs})

#
set(FILE_LINE_CURSIVE_WIDGET
        ./slicer_mrml_repository/Slicer/Libs/vtkTeem/vtkDiffusionTensorMathematics.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkMarkupsGlyphSource2D.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkFastSelectVisiblePoints.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerLineRepresentation3D.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerMarkupsWidgetRepresentation3D.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerMarkupsWidgetRepresentation2D.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerMarkupsWidgetRepresentation.cxx
        #        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/MRML/vtkMRMLMarkupsDisplayNode.cxx
        #        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/MRML/vtkMRMLMarkupsNode.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerLineRepresentation2D.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerLineRepresentation3D.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerLineRepresentation3D.h
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerLineRepresentation2D.h
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerMarkupsWidget.cxx
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerLineWidget.h
        ./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/vtkSlicerLineWidget.cxx
        ./slicer_mrml_repository/Core/vtkMRMLInteractionNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLViewNode.cxx
        ./slicer_mrml_repository/Core/vtkMRMLDisplayNode
        )
#
include_directories(./slicer_mrml_repository/Slicer/Modules/Loadable/Markups/VTKWidgets/)
include_directories(./slicer_mrml_repository/Slicer/Libs/MRML/DisplayableManager/)
include_directories(./slicer_mrml_repository/Slicer/Libs/MRML/Logic/)
include_directories(./slicer_mrml_repository/Slicer/Base/Logic/)
include_directories(./src/BasicRender/)
include_directories(./src/Line/)
include_directories(./src/Markups/)

add_library(file_line_cursive_widgets ${FILE_LINE_CURSIVE_WIDGET})

message("INTERFACE_INCLUDE_DIRECTORIES. " ${INTERFACE_INCLUDE_DIRECTORIES})
#message("VTK_OPENGL_USE_GLES: " ${VTK_OPENGL_USE_GLES})
#set(VTK_OPENGL_USE_GLES "ON")


target_link_libraries(
        ${name}
        PRIVATE
        ${VTK_LIBRARIES}
)

target_include_directories(
        ${name}
        PUBLIC ./vtk_new/Rendering/Core/
)

target_link_libraries(Cone
        PRIVATE
        VTK::InteractionWidgets
        VTK::CommonColor
        VTK::CommonCore
        VTK::CommonDataModel
        VTK::FiltersSources
        VTK::FiltersParallel
        VTK::InteractionStyle
        VTK::RenderingCore
        VTK::RenderingFreeType
        VTK::CommonColor
        VTK::FiltersCore
        VTK::FiltersModeling
        VTK::IOImage
        VTK::InteractionStyle
        VTK::RenderingCore
        VTK::RenderingFreeType
        VTK::RenderingOpenGL2
        VTK::RenderingVolume
        VTK::IOImage
        VTK::FiltersSources      # VTK pipeline
        VTK::InteractionStyle    # Mouse handling
        VTK::RenderingWebGPU     # For Rendering with WebGPU
        VTK::RenderingUI         # For SDL2 Window InteractionWidgets
        vtk_teem_static_lib
        additional_vtk
        ${name}
        file_line_cursive_widgets
        )

# -----------------------------------------------------------------------------
# WebAssembly build options
# -----------------------------------------------------------------------------
set(emscripten_link_options)
set(emscripten_compile_options)

list(APPEND emscripten_link_options
        "SHELL:-s EXPORT_NAME=vtkRenderingApplicationExport"
        "-lembind"
                "SHELL:-s ALLOW_MEMORY_GROWTH=1"
                "SHELL:-s DEMANGLE_SUPPORT=1"
#        "SHELL:-sGL_UNSAFE_OPTS=1"
#        "SHELL:-s LEGACY_GL_EMULATION=1"
#       "SHELL:-s EMULATE_FUNCTION_POINTER_CASTS=0"
#       "SHELL:-s ERROR_ON_UNDEFINED_SYMBOLS=0"
#       "SHELL:-s ASSERTIONS=1"
       "SHELL:-s MODULARIZE=1"
                "SHELL:-s WASM=1"
#       "SHELL:-s FORCE_FILESYSTEM"
        )


set(emscripten_debug_options)
set(DEBUGINFO "PROFILE" CACHE STRING "Type of debug info")
set_property(CACHE DEBUGINFO PROPERTY
  STRINGS
    NONE              # -g0
    READABLE_JS       # -g1
    PROFILE           # -g2
    DEBUG_NATIVE      # -g3
)

if(DEBUGINFO STREQUAL "NONE")
  list(APPEND emscripten_debug_options
    "-g0"
  )
elseif(DEBUGINFO STREQUAL "READABLE_JS")
  list(APPEND emscripten_debug_options
    "-g1"
  )
  list(APPEND emscripten_link_options
    "SHELL:-s DEMANGLE_SUPPORT=1"
  )
elseif(DEBUGINFO STREQUAL "PROFILE")
  list(APPEND emscripten_debug_options
    "-g2"
  )
  list(APPEND emscripten_link_options
    "SHELL:-s DEMANGLE_SUPPORT=1"
  )
elseif(DEBUGINFO STREQUAL "DEBUG_NATIVE")
  list(APPEND emscripten_debug_options
    "-g3"
  )
  list(APPEND emscripten_link_options
    "SHELL:-s ASSERTIONS=1"
    "SHELL:-s DEMANGLE_SUPPORT=1"
  )
endif()


# -----------------------------------------------------------------------------
# Build options
# -----------------------------------------------------------------------------
set(emscripten_optimizations)
set(OPTIMIZE "SMALLEST_WITH_CLOSURE" CACHE STRING "Emscripten optimization")
set_property(CACHE OPTIMIZE PROPERTY
  STRINGS
    NO_OPTIMIZATION       # -O0
    LITTLE                # -O1
    MORE                  # -O2
    BEST                  # -O3
    SMALL                 # -Os
    SMALLEST              # -Oz
    SMALLEST_WITH_CLOSURE # -Oz --closure 1
)

if(OPTIMIZE STREQUAL "NO_OPTIMIZATION")
  list(APPEND emscripten_optimizations
    "-O0"
  )
elseif(OPTIMIZE STREQUAL "LITTLE")
  list(APPEND emscripten_optimizations
    "-O1"
  )
elseif(OPTIMIZE STREQUAL "MORE")
  list(APPEND emscripten_optimizations
    "-O2"
  )
elseif(OPTIMIZE STREQUAL "BEST")
  list(APPEND emscripten_optimizations
    "-O3"
  )
elseif(OPTIMIZE STREQUAL "SMALL")
  list(APPEND emscripten_optimizations
    "-Os"
  )
elseif(OPTIMIZE STREQUAL "SMALLEST")
  list(APPEND emscripten_optimizations
    "-Oz"
  )
elseif(OPTIMIZE STREQUAL "SMALLEST_WITH_CLOSURE")
  list(APPEND emscripten_optimizations
    "-Oz"
  )
  list(APPEND emscripten_link_options
    "--closure 1"
  )
endif()


target_compile_options(Cone
        PUBLIC
        ${emscripten_compile_options}
        ${emscripten_optimizations}
        ${emscripten_debug_options}
        )

target_link_options(Cone
        PUBLIC
        ${emscripten_link_options}
        ${emscripten_optimizations}
        ${emscripten_debug_options}
        )


# -----------------------------------------------------------------------------
# VTK modules initialization
# -----------------------------------------------------------------------------

vtk_module_autoinit(
        TARGETS  Cone

        MODULES  ${VTK_LIBRARIES}
)

# -----------------------------------------------------------------------------
# Copy HTML to build directory
# -----------------------------------------------------------------------------

message("emscripten_link_options = " ${emscripten_link_options})
message("emscripten_optimizations = " ${emscripten_optimizations})
message("emscripten_debug_options = " ${emscripten_debug_options})

add_custom_command(
        TARGET Cone
        POST_BUILD
        COMMAND
        ${CMAKE_COMMAND} -E copy_if_different
        "${CMAKE_CURRENT_SOURCE_DIR}/index.html"
        $<TARGET_FILE_DIR:Cone>
)
