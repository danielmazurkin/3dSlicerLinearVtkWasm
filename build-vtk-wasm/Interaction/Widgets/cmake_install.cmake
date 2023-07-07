# Install script for directory: /work/vtk_new/Interaction/Widgets

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
    "/work/vtk_new/Interaction/Widgets/vtk3DCursorRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtk3DCursorWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtk3DWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkAbstractPolygonalHandleRepresentation3D.h"
    "/work/vtk_new/Interaction/Widgets/vtkAbstractSplineRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkAbstractWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkAffineRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkAffineRepresentation2D.h"
    "/work/vtk_new/Interaction/Widgets/vtkAffineWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkAngleRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkAngleRepresentation2D.h"
    "/work/vtk_new/Interaction/Widgets/vtkAngleRepresentation3D.h"
    "/work/vtk_new/Interaction/Widgets/vtkAngleWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkAxesTransformRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkAxesTransformWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkBalloonRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkBalloonWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkBezierContourLineInterpolator.h"
    "/work/vtk_new/Interaction/Widgets/vtkBiDimensionalRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkBiDimensionalRepresentation2D.h"
    "/work/vtk_new/Interaction/Widgets/vtkBiDimensionalWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkBorderRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkBorderWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkBoundedPlanePointPlacer.h"
    "/work/vtk_new/Interaction/Widgets/vtkBoxRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkBoxWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkBoxWidget2.h"
    "/work/vtk_new/Interaction/Widgets/vtkBrokenLineWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkButtonRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkButtonWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkCamera3DRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkCamera3DWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkCameraHandleSource.h"
    "/work/vtk_new/Interaction/Widgets/vtkCameraOrientationWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkCameraOrientationRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkCameraPathRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkCameraPathWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkCameraRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkCameraWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkCaptionRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkCaptionWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkCellCentersPointPlacer.h"
    "/work/vtk_new/Interaction/Widgets/vtkCenteredSliderRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkCenteredSliderWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkCheckerboardRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkCheckerboardWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkClosedSurfacePointPlacer.h"
    "/work/vtk_new/Interaction/Widgets/vtkCompassRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkCompassWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkConstrainedPointHandleRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkContinuousValueWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkContinuousValueWidgetRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkContourLineInterpolator.h"
    "/work/vtk_new/Interaction/Widgets/vtkContourRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkContourWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkCoordinateFrameRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkCoordinateFrameWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkCurveRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkDijkstraImageContourLineInterpolator.h"
    "/work/vtk_new/Interaction/Widgets/vtkDisplaySizedImplicitPlaneWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkDisplaySizedImplicitPlaneRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkDistanceRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkDistanceRepresentation2D.h"
    "/work/vtk_new/Interaction/Widgets/vtkDistanceRepresentation3D.h"
    "/work/vtk_new/Interaction/Widgets/vtkDistanceWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkEllipsoidTensorProbeRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkEqualizerContextItem.h"
    "/work/vtk_new/Interaction/Widgets/vtkEvent.h"
    "/work/vtk_new/Interaction/Widgets/vtkFinitePlaneRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkFinitePlaneWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkFixedSizeHandleRepresentation3D.h"
    "/work/vtk_new/Interaction/Widgets/vtkFocalPlaneContourRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkFocalPlanePointPlacer.h"
    "/work/vtk_new/Interaction/Widgets/vtkHandleRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkHandleWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkHoverWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkImageActorPointPlacer.h"
    "/work/vtk_new/Interaction/Widgets/vtkImageCroppingRegionsWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkImageOrthoPlanes.h"
    "/work/vtk_new/Interaction/Widgets/vtkImagePlaneWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkImageTracerWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkImplicitCylinderRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkImplicitCylinderWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkImplicitImageRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkImplicitPlaneRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkImplicitPlaneWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkImplicitPlaneWidget2.h"
    "/work/vtk_new/Interaction/Widgets/vtkLightRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkLightWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkLinearContourLineInterpolator.h"
    "/work/vtk_new/Interaction/Widgets/vtkLineRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkLineWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkLineWidget2.h"
    "/work/vtk_new/Interaction/Widgets/vtkLogoRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkLogoWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkMagnifierRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkMagnifierWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkMeasurementCubeHandleRepresentation3D.h"
    "/work/vtk_new/Interaction/Widgets/vtkOrientationMarkerWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkOrientedGlyphContourRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkOrientedGlyphFocalPlaneContourRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkOrientedPolygonalHandleRepresentation3D.h"
    "/work/vtk_new/Interaction/Widgets/vtkParallelopipedRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkParallelopipedWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkPlaneWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkPlaybackRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkPlaybackWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkPointCloudRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkPointCloudWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkPointHandleRepresentation2D.h"
    "/work/vtk_new/Interaction/Widgets/vtkPointHandleRepresentation3D.h"
    "/work/vtk_new/Interaction/Widgets/vtkPointPlacer.h"
    "/work/vtk_new/Interaction/Widgets/vtkPointWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkPolyDataContourLineInterpolator.h"
    "/work/vtk_new/Interaction/Widgets/vtkPolyDataPointPlacer.h"
    "/work/vtk_new/Interaction/Widgets/vtkPolyDataSourceWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkPolygonalHandleRepresentation3D.h"
    "/work/vtk_new/Interaction/Widgets/vtkPolygonalSurfaceContourLineInterpolator.h"
    "/work/vtk_new/Interaction/Widgets/vtkPolygonalSurfacePointPlacer.h"
    "/work/vtk_new/Interaction/Widgets/vtkPolyLineRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkPolyLineWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkProgressBarRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkProgressBarWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkProp3DButtonRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkRectilinearWipeRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkRectilinearWipeWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkResliceCursor.h"
    "/work/vtk_new/Interaction/Widgets/vtkResliceCursorActor.h"
    "/work/vtk_new/Interaction/Widgets/vtkResliceCursorLineRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkResliceCursorPicker.h"
    "/work/vtk_new/Interaction/Widgets/vtkResliceCursorPolyDataAlgorithm.h"
    "/work/vtk_new/Interaction/Widgets/vtkResliceCursorRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkResliceCursorThickLineRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkResliceCursorWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkScalarBarRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkScalarBarWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkSeedRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkSeedWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkSliderRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkSliderRepresentation2D.h"
    "/work/vtk_new/Interaction/Widgets/vtkSliderRepresentation3D.h"
    "/work/vtk_new/Interaction/Widgets/vtkSliderWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkSphereHandleRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkSphereRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkSphereWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkSphereWidget2.h"
    "/work/vtk_new/Interaction/Widgets/vtkSplineRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkSplineWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkSplineWidget2.h"
    "/work/vtk_new/Interaction/Widgets/vtkTensorProbeRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkTensorProbeWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkTensorRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkTensorWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkTerrainContourLineInterpolator.h"
    "/work/vtk_new/Interaction/Widgets/vtkTerrainDataPointPlacer.h"
    "/work/vtk_new/Interaction/Widgets/vtkTextRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkTexturedButtonRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkTexturedButtonRepresentation2D.h"
    "/work/vtk_new/Interaction/Widgets/vtkTextWidget.h"
    "/work/vtk_new/Interaction/Widgets/vtkWidgetCallbackMapper.h"
    "/work/vtk_new/Interaction/Widgets/vtkWidgetEvent.h"
    "/work/vtk_new/Interaction/Widgets/vtkWidgetEventTranslator.h"
    "/work/vtk_new/Interaction/Widgets/vtkWidgetRepresentation.h"
    "/work/vtk_new/Interaction/Widgets/vtkWidgetSet.h"
    "/work/vtk_new/Interaction/Widgets/vtkXYPlotWidget.h"
    "/work/build-vtk-wasm/Interaction/Widgets/vtkInteractionWidgetsModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkInteractionWidgets-9.2.a")
endif()

