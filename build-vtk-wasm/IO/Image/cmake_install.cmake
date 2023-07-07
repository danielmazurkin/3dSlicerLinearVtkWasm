# Install script for directory: /work/vtk_new/IO/Image

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
    "/work/vtk_new/IO/Image/vtkBMPReader.h"
    "/work/vtk_new/IO/Image/vtkBMPWriter.h"
    "/work/vtk_new/IO/Image/vtkDEMReader.h"
    "/work/vtk_new/IO/Image/vtkDICOMImageReader.h"
    "/work/vtk_new/IO/Image/vtkGESignaReader.h"
    "/work/vtk_new/IO/Image/vtkHDRReader.h"
    "/work/vtk_new/IO/Image/vtkImageExport.h"
    "/work/vtk_new/IO/Image/vtkImageImport.h"
    "/work/vtk_new/IO/Image/vtkImageImportExecutive.h"
    "/work/vtk_new/IO/Image/vtkImageReader.h"
    "/work/vtk_new/IO/Image/vtkImageReader2.h"
    "/work/vtk_new/IO/Image/vtkImageReader2Collection.h"
    "/work/vtk_new/IO/Image/vtkImageReader2Factory.h"
    "/work/vtk_new/IO/Image/vtkImageWriter.h"
    "/work/vtk_new/IO/Image/vtkJPEGReader.h"
    "/work/vtk_new/IO/Image/vtkJPEGWriter.h"
    "/work/vtk_new/IO/Image/vtkJSONImageWriter.h"
    "/work/vtk_new/IO/Image/vtkMedicalImageProperties.h"
    "/work/vtk_new/IO/Image/vtkMedicalImageReader2.h"
    "/work/vtk_new/IO/Image/vtkMetaImageReader.h"
    "/work/vtk_new/IO/Image/vtkMetaImageWriter.h"
    "/work/vtk_new/IO/Image/vtkMRCReader.h"
    "/work/vtk_new/IO/Image/vtkNIFTIImageHeader.h"
    "/work/vtk_new/IO/Image/vtkNIFTIImageReader.h"
    "/work/vtk_new/IO/Image/vtkNIFTIImageWriter.h"
    "/work/vtk_new/IO/Image/vtkNrrdReader.h"
    "/work/vtk_new/IO/Image/vtkOMETIFFReader.h"
    "/work/vtk_new/IO/Image/vtkPNGReader.h"
    "/work/vtk_new/IO/Image/vtkPNGWriter.h"
    "/work/vtk_new/IO/Image/vtkPNMReader.h"
    "/work/vtk_new/IO/Image/vtkPNMWriter.h"
    "/work/vtk_new/IO/Image/vtkPostScriptWriter.h"
    "/work/vtk_new/IO/Image/vtkSEPReader.h"
    "/work/vtk_new/IO/Image/vtkSLCReader.h"
    "/work/vtk_new/IO/Image/vtkTGAReader.h"
    "/work/vtk_new/IO/Image/vtkTIFFReader.h"
    "/work/vtk_new/IO/Image/vtkTIFFWriter.h"
    "/work/vtk_new/IO/Image/vtkVolume16Reader.h"
    "/work/vtk_new/IO/Image/vtkVolumeReader.h"
    "/work/build-vtk-wasm/IO/Image/vtkIOImageModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkIOImage-9.2.a")
endif()

