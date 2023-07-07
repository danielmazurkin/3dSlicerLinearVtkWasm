# Install script for directory: /work/vtk_new/IO/Core

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
    "/work/vtk_new/IO/Core/vtkUpdateCellsV8toV9.h"
    "/work/vtk_new/IO/Core/vtkAbstractParticleWriter.h"
    "/work/vtk_new/IO/Core/vtkAbstractPolyDataReader.h"
    "/work/vtk_new/IO/Core/vtkArrayDataReader.h"
    "/work/vtk_new/IO/Core/vtkArrayDataWriter.h"
    "/work/vtk_new/IO/Core/vtkArrayReader.h"
    "/work/vtk_new/IO/Core/vtkArrayWriter.h"
    "/work/vtk_new/IO/Core/vtkASCIITextCodec.h"
    "/work/vtk_new/IO/Core/vtkBase64InputStream.h"
    "/work/vtk_new/IO/Core/vtkBase64OutputStream.h"
    "/work/vtk_new/IO/Core/vtkBase64Utilities.h"
    "/work/vtk_new/IO/Core/vtkDataCompressor.h"
    "/work/vtk_new/IO/Core/vtkDelimitedTextWriter.h"
    "/work/vtk_new/IO/Core/vtkFileResourceStream.h"
    "/work/vtk_new/IO/Core/vtkGlobFileNames.h"
    "/work/vtk_new/IO/Core/vtkInputStream.h"
    "/work/vtk_new/IO/Core/vtkJavaScriptDataWriter.h"
    "/work/vtk_new/IO/Core/vtkLZ4DataCompressor.h"
    "/work/vtk_new/IO/Core/vtkLZMADataCompressor.h"
    "/work/vtk_new/IO/Core/vtkMemoryResourceStream.h"
    "/work/vtk_new/IO/Core/vtkNumberToString.h"
    "/work/vtk_new/IO/Core/vtkOutputStream.h"
    "/work/vtk_new/IO/Core/vtkResourceParser.h"
    "/work/vtk_new/IO/Core/vtkResourceStream.h"
    "/work/vtk_new/IO/Core/vtkSortFileNames.h"
    "/work/vtk_new/IO/Core/vtkTextCodec.h"
    "/work/vtk_new/IO/Core/vtkTextCodecFactory.h"
    "/work/vtk_new/IO/Core/vtkUTF16TextCodec.h"
    "/work/vtk_new/IO/Core/vtkUTF8TextCodec.h"
    "/work/vtk_new/IO/Core/vtkWriter.h"
    "/work/vtk_new/IO/Core/vtkZLibDataCompressor.h"
    "/work/build-vtk-wasm/IO/Core/vtkIOCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkIOCore-9.2.a")
endif()

