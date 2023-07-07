# Install script for directory: /work/vtk_new/Rendering/Core

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
    "/work/vtk_new/Rendering/Core/vtkGPUInfoListArray.h"
    "/work/vtk_new/Rendering/Core/vtkPythagoreanQuadruples.h"
    "/work/vtk_new/Rendering/Core/vtkRayCastStructures.h"
    "/work/vtk_new/Rendering/Core/vtkRenderingCoreEnums.h"
    "/work/vtk_new/Rendering/Core/vtkStateStorage.h"
    "/work/build-vtk-wasm/Rendering/Core/vtkTDxConfigure.h"
    "/work/vtk_new/Rendering/Core/vtkTDxMotionEventInfo.h"
    "/work/vtk_new/Rendering/Core/vtkAbstractHyperTreeGridMapper.h"
    "/work/vtk_new/Rendering/Core/vtkAbstractMapper.h"
    "/work/vtk_new/Rendering/Core/vtkAbstractMapper3D.h"
    "/work/vtk_new/Rendering/Core/vtkAbstractPicker.h"
    "/work/vtk_new/Rendering/Core/vtkAbstractVolumeMapper.h"
    "/work/vtk_new/Rendering/Core/vtkActor.h"
    "/work/vtk_new/Rendering/Core/vtkActor2D.h"
    "/work/vtk_new/Rendering/Core/vtkActor2DCollection.h"
    "/work/vtk_new/Rendering/Core/vtkActorCollection.h"
    "/work/vtk_new/Rendering/Core/vtkAssembly.h"
    "/work/vtk_new/Rendering/Core/vtkAvatar.h"
    "/work/vtk_new/Rendering/Core/vtkBackgroundColorMonitor.h"
    "/work/vtk_new/Rendering/Core/vtkBillboardTextActor3D.h"
    "/work/vtk_new/Rendering/Core/vtkCamera.h"
    "/work/vtk_new/Rendering/Core/vtkCameraActor.h"
    "/work/vtk_new/Rendering/Core/vtkCameraInterpolator.h"
    "/work/vtk_new/Rendering/Core/vtkCellCenterDepthSort.h"
    "/work/vtk_new/Rendering/Core/vtkCellGridMapper.h"
    "/work/vtk_new/Rendering/Core/vtkColorTransferFunction.h"
    "/work/vtk_new/Rendering/Core/vtkCompositeDataDisplayAttributes.h"
    "/work/vtk_new/Rendering/Core/vtkCompositeDataDisplayAttributesLegacy.h"
    "/work/vtk_new/Rendering/Core/vtkCompositePolyDataMapper.h"
    "/work/vtk_new/Rendering/Core/vtkCompositePolyDataMapperDelegator.h"
    "/work/vtk_new/Rendering/Core/vtkCoordinate.h"
    "/work/vtk_new/Rendering/Core/vtkCuller.h"
    "/work/vtk_new/Rendering/Core/vtkCullerCollection.h"
    "/work/vtk_new/Rendering/Core/vtkDataSetMapper.h"
    "/work/vtk_new/Rendering/Core/vtkDiscretizableColorTransferFunction.h"
    "/work/vtk_new/Rendering/Core/vtkDistanceToCamera.h"
    "/work/vtk_new/Rendering/Core/vtkFXAAOptions.h"
    "/work/vtk_new/Rendering/Core/vtkFlagpoleLabel.h"
    "/work/vtk_new/Rendering/Core/vtkFollower.h"
    "/work/vtk_new/Rendering/Core/vtkFrameBufferObjectBase.h"
    "/work/vtk_new/Rendering/Core/vtkFrustumCoverageCuller.h"
    "/work/vtk_new/Rendering/Core/vtkGPUInfo.h"
    "/work/vtk_new/Rendering/Core/vtkGPUInfoList.h"
    "/work/vtk_new/Rendering/Core/vtkGenericVertexAttributeMapping.h"
    "/work/vtk_new/Rendering/Core/vtkGlyph3DMapper.h"
    "/work/vtk_new/Rendering/Core/vtkGraphMapper.h"
    "/work/vtk_new/Rendering/Core/vtkGraphToGlyphs.h"
    "/work/vtk_new/Rendering/Core/vtkGraphicsFactory.h"
    "/work/vtk_new/Rendering/Core/vtkHardwarePicker.h"
    "/work/vtk_new/Rendering/Core/vtkHardwareSelector.h"
    "/work/vtk_new/Rendering/Core/vtkHardwareWindow.h"
    "/work/vtk_new/Rendering/Core/vtkHierarchicalPolyDataMapper.h"
    "/work/vtk_new/Rendering/Core/vtkImageActor.h"
    "/work/vtk_new/Rendering/Core/vtkImageMapper.h"
    "/work/vtk_new/Rendering/Core/vtkImageMapper3D.h"
    "/work/vtk_new/Rendering/Core/vtkImageProperty.h"
    "/work/vtk_new/Rendering/Core/vtkImageSlice.h"
    "/work/vtk_new/Rendering/Core/vtkImageSliceMapper.h"
    "/work/vtk_new/Rendering/Core/vtkInteractorEventRecorder.h"
    "/work/vtk_new/Rendering/Core/vtkInteractorObserver.h"
    "/work/vtk_new/Rendering/Core/vtkLabeledContourMapper.h"
    "/work/vtk_new/Rendering/Core/vtkLight.h"
    "/work/vtk_new/Rendering/Core/vtkLightActor.h"
    "/work/vtk_new/Rendering/Core/vtkLightCollection.h"
    "/work/vtk_new/Rendering/Core/vtkLightKit.h"
    "/work/vtk_new/Rendering/Core/vtkLogLookupTable.h"
    "/work/vtk_new/Rendering/Core/vtkLookupTableWithEnabling.h"
    "/work/vtk_new/Rendering/Core/vtkMapArrayValues.h"
    "/work/vtk_new/Rendering/Core/vtkMapper.h"
    "/work/vtk_new/Rendering/Core/vtkMapper2D.h"
    "/work/vtk_new/Rendering/Core/vtkMapperCollection.h"
    "/work/vtk_new/Rendering/Core/vtkObserverMediator.h"
    "/work/vtk_new/Rendering/Core/vtkPointGaussianMapper.h"
    "/work/vtk_new/Rendering/Core/vtkPolyDataMapper.h"
    "/work/vtk_new/Rendering/Core/vtkPolyDataMapper2D.h"
    "/work/vtk_new/Rendering/Core/vtkProp.h"
    "/work/vtk_new/Rendering/Core/vtkProp3D.h"
    "/work/vtk_new/Rendering/Core/vtkProp3DCollection.h"
    "/work/vtk_new/Rendering/Core/vtkProp3DFollower.h"
    "/work/vtk_new/Rendering/Core/vtkPropAssembly.h"
    "/work/vtk_new/Rendering/Core/vtkPropCollection.h"
    "/work/vtk_new/Rendering/Core/vtkProperty.h"
    "/work/vtk_new/Rendering/Core/vtkProperty2D.h"
    "/work/vtk_new/Rendering/Core/vtkRenderPass.h"
    "/work/vtk_new/Rendering/Core/vtkRenderState.h"
    "/work/vtk_new/Rendering/Core/vtkRenderTimerLog.h"
    "/work/vtk_new/Rendering/Core/vtkRenderWindow.h"
    "/work/vtk_new/Rendering/Core/vtkRenderWindowCollection.h"
    "/work/vtk_new/Rendering/Core/vtkRenderWindowInteractor.h"
    "/work/vtk_new/Rendering/Core/vtkRenderWindowInteractor3D.h"
    "/work/vtk_new/Rendering/Core/vtkRenderer.h"
    "/work/vtk_new/Rendering/Core/vtkRendererCollection.h"
    "/work/vtk_new/Rendering/Core/vtkRendererDelegate.h"
    "/work/vtk_new/Rendering/Core/vtkRendererSource.h"
    "/work/vtk_new/Rendering/Core/vtkResizingWindowToImageFilter.h"
    "/work/vtk_new/Rendering/Core/vtkSelectVisiblePoints.h"
    "/work/vtk_new/Rendering/Core/vtkShaderProperty.h"
    "/work/vtk_new/Rendering/Core/vtkSkybox.h"
    "/work/vtk_new/Rendering/Core/vtkStereoCompositor.h"
    "/work/vtk_new/Rendering/Core/vtkTextActor.h"
    "/work/vtk_new/Rendering/Core/vtkTextActor3D.h"
    "/work/vtk_new/Rendering/Core/vtkTexture.h"
    "/work/vtk_new/Rendering/Core/vtkTexturedActor2D.h"
    "/work/vtk_new/Rendering/Core/vtkTransformCoordinateSystems.h"
    "/work/vtk_new/Rendering/Core/vtkTransformInterpolator.h"
    "/work/vtk_new/Rendering/Core/vtkTupleInterpolator.h"
    "/work/vtk_new/Rendering/Core/vtkUniforms.h"
    "/work/vtk_new/Rendering/Core/vtkViewDependentErrorMetric.h"
    "/work/vtk_new/Rendering/Core/vtkViewport.h"
    "/work/vtk_new/Rendering/Core/vtkVisibilitySort.h"
    "/work/vtk_new/Rendering/Core/vtkVolume.h"
    "/work/vtk_new/Rendering/Core/vtkVolumeCollection.h"
    "/work/vtk_new/Rendering/Core/vtkVolumeProperty.h"
    "/work/vtk_new/Rendering/Core/vtkWindowLevelLookupTable.h"
    "/work/vtk_new/Rendering/Core/vtkWindowToImageFilter.h"
    "/work/vtk_new/Rendering/Core/vtkAssemblyNode.h"
    "/work/vtk_new/Rendering/Core/vtkAssemblyPath.h"
    "/work/vtk_new/Rendering/Core/vtkAssemblyPaths.h"
    "/work/vtk_new/Rendering/Core/vtkAreaPicker.h"
    "/work/vtk_new/Rendering/Core/vtkPicker.h"
    "/work/vtk_new/Rendering/Core/vtkAbstractPropPicker.h"
    "/work/vtk_new/Rendering/Core/vtkLODProp3D.h"
    "/work/vtk_new/Rendering/Core/vtkPropPicker.h"
    "/work/vtk_new/Rendering/Core/vtkPickingManager.h"
    "/work/vtk_new/Rendering/Core/vtkWorldPointPicker.h"
    "/work/vtk_new/Rendering/Core/vtkCellPicker.h"
    "/work/vtk_new/Rendering/Core/vtkPointPicker.h"
    "/work/vtk_new/Rendering/Core/vtkRenderedAreaPicker.h"
    "/work/vtk_new/Rendering/Core/vtkScenePicker.h"
    "/work/vtk_new/Rendering/Core/vtkInteractorStyle.h"
    "/work/vtk_new/Rendering/Core/vtkInteractorStyle3D.h"
    "/work/vtk_new/Rendering/Core/vtkInteractorStyleSwitchBase.h"
    "/work/vtk_new/Rendering/Core/vtkTDxInteractorStyle.h"
    "/work/vtk_new/Rendering/Core/vtkTDxInteractorStyleCamera.h"
    "/work/vtk_new/Rendering/Core/vtkTDxInteractorStyleSettings.h"
    "/work/vtk_new/Rendering/Core/vtkStringToImage.h"
    "/work/vtk_new/Rendering/Core/vtkTextMapper.h"
    "/work/vtk_new/Rendering/Core/vtkTextProperty.h"
    "/work/vtk_new/Rendering/Core/vtkTextPropertyCollection.h"
    "/work/vtk_new/Rendering/Core/vtkTextRenderer.h"
    "/work/vtk_new/Rendering/Core/vtkAbstractInteractionDevice.h"
    "/work/vtk_new/Rendering/Core/vtkAbstractRenderDevice.h"
    "/work/vtk_new/Rendering/Core/vtkRenderWidget.h"
    "/work/build-vtk-wasm/Rendering/Core/vtkRenderingCoreModule.h"
    "/work/vtk_new/Rendering/Core/vtkNoise200x200.h"
    "/work/vtk_new/Rendering/Core/vtkCIEDE2000.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkRenderingCore-9.2.a")
endif()

