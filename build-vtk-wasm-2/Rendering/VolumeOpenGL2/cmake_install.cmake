# Install script for directory: /work/vtk_new/Rendering/VolumeOpenGL2

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
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkMultiBlockUnstructuredGridVolumeMapper.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkMultiBlockVolumeMapper.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLGPUVolumeRayCastMapper.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLProjectedTetrahedraMapper.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLRayCastImageDisplayHelper.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkSmartVolumeMapper.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkVolumeTexture.h"
    "/work/build-vtk-wasm-2/Rendering/VolumeOpenGL2/vtkRenderingVolumeOpenGL2Module.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLVolumeGradientOpacityTable.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLVolumeLookupTable.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLVolumeMaskGradientOpacityTransferFunction2D.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLVolumeMaskTransferFunction2D.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLVolumeOpacityTable.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLVolumeRGBTable.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLVolumeTransferFunction2D.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkVolumeInputHelper.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLVolumeLookupTables.h"
    "/work/vtk_new/Rendering/VolumeOpenGL2/vtkOpenGLVolumeLookupTables.txx"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm-2/lib/libvtkRenderingVolumeOpenGL2-9.2.a")
endif()

