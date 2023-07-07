# Install script for directory: /work/vtk_new/Rendering/Context2D

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
    "/work/vtk_new/Rendering/Context2D/vtkAbstractContextBufferId.h"
    "/work/vtk_new/Rendering/Context2D/vtkAbstractContextItem.h"
    "/work/vtk_new/Rendering/Context2D/vtkBlockItem.h"
    "/work/vtk_new/Rendering/Context2D/vtkBrush.h"
    "/work/vtk_new/Rendering/Context2D/vtkContext2D.h"
    "/work/vtk_new/Rendering/Context2D/vtkContext3D.h"
    "/work/vtk_new/Rendering/Context2D/vtkContextActor.h"
    "/work/vtk_new/Rendering/Context2D/vtkContextClip.h"
    "/work/vtk_new/Rendering/Context2D/vtkContextDevice2D.h"
    "/work/vtk_new/Rendering/Context2D/vtkContextDevice3D.h"
    "/work/vtk_new/Rendering/Context2D/vtkContextItem.h"
    "/work/vtk_new/Rendering/Context2D/vtkContextKeyEvent.h"
    "/work/vtk_new/Rendering/Context2D/vtkContextMapper2D.h"
    "/work/vtk_new/Rendering/Context2D/vtkContextMouseEvent.h"
    "/work/vtk_new/Rendering/Context2D/vtkContextScene.h"
    "/work/vtk_new/Rendering/Context2D/vtkContextTransform.h"
    "/work/vtk_new/Rendering/Context2D/vtkImageItem.h"
    "/work/vtk_new/Rendering/Context2D/vtkLabeledContourPolyDataItem.h"
    "/work/vtk_new/Rendering/Context2D/vtkMarkerUtilities.h"
    "/work/vtk_new/Rendering/Context2D/vtkPen.h"
    "/work/vtk_new/Rendering/Context2D/vtkPolyDataItem.h"
    "/work/vtk_new/Rendering/Context2D/vtkPropItem.h"
    "/work/vtk_new/Rendering/Context2D/vtkTooltipItem.h"
    "/work/build-vtk-wasm/Rendering/Context2D/vtkRenderingContext2DModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkRenderingContext2D-9.2.a")
endif()

