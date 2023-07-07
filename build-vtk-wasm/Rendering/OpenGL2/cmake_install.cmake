# Install script for directory: /work/vtk_new/Rendering/OpenGL2

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
    "/work/build-vtk-wasm/Rendering/OpenGL2/vtkOpenGLError.h"
    "/work/build-vtk-wasm/Rendering/OpenGL2/vtkRenderingOpenGLConfigure.h"
    "/work/build-vtk-wasm/Rendering/OpenGL2/vtkTextureObjectVS.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkCameraPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkClearRGBPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkClearZPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkCompositePolyDataMapper2.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkDataTransferHelper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkDefaultPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkDepthImageProcessingPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkDepthOfFieldPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkDepthPeelingPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkDualDepthPeelingPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkEDLShading.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkEquirectangularToCubeMapTexture.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkFramebufferPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkGaussianBlurPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkGenericOpenGLRenderWindow.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkHiddenLineRemovalPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkImageProcessingPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkLightingMapPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkLightsPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpaquePass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLActor.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLBatchedPolyDataMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLBillboardTextActor3D.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLBufferObject.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLCamera.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLCellToVTKCellMap.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLCompositePolyDataMapperDelegator.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLFXAAFilter.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLFXAAPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLFluidMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLFramebufferObject.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLGL2PSHelper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLGlyph3DHelper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLGlyph3DMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLHardwareSelector.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLHelper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLHyperTreeGridMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLImageAlgorithmHelper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLImageMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLImageSliceMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLIndexBufferObject.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLInstanceCulling.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLLabeledContourMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLLight.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLPointGaussianMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLPolyDataMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLPolyDataMapper2D.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLProperty.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLQuadHelper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderTimer.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderTimerLog.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderUtilities.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderWindow.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLRenderer.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLShaderCache.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLShaderProperty.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLSkybox.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLSphereMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLState.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLStickMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLTextActor.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLTextActor3D.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLTextMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLTexture.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLUniforms.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLVertexArrayObject.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLVertexBufferObject.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLVertexBufferObjectCache.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLVertexBufferObjectGroup.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOrderIndependentTranslucentPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOutlineGlowPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOverlayPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkPBRIrradianceTexture.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkPBRLUTTexture.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkPBRPrefilterTexture.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkPanoramicProjectionPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkPixelBufferObject.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkPointFillPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkRenderPassCollection.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkRenderStepsPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkRenderbuffer.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkSSAAPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkSSAOPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkSequencePass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkShader.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkShaderProgram.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkShadowMapBakerPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkShadowMapPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkSimpleMotionBlurPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkSobelGradientMagnitudePass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkTextureObject.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkTextureUnitManager.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkToneMappingPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkTransformFeedback.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkTranslucentPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkValuePass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkVolumetricPass.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLES30PolyDataMapper.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkOpenGLES30PolyDataMapper2D.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkDummyGPUInfoList.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkSDL2OpenGLRenderWindow.h"
    "/work/build-vtk-wasm/Rendering/OpenGL2/vtkRenderingOpenGL2Module.h"
    "/work/vtk_new/Rendering/OpenGL2/vtkCompositeMapperHelper2.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkRenderingOpenGL2-9.2.a")
endif()

