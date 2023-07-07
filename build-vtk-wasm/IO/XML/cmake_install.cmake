# Install script for directory: /work/vtk_new/IO/XML

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
    "/work/vtk_new/IO/XML/vtkRTXMLPolyDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLCompositeDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLCompositeDataWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLDataObjectWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLDataSetWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLFileReadTester.h"
    "/work/vtk_new/IO/XML/vtkXMLGenericDataObjectReader.h"
    "/work/vtk_new/IO/XML/vtkXMLHierarchicalBoxDataFileConverter.h"
    "/work/vtk_new/IO/XML/vtkXMLHierarchicalBoxDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLHierarchicalBoxDataWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLHierarchicalDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLHyperTreeGridReader.h"
    "/work/vtk_new/IO/XML/vtkXMLHyperTreeGridWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLImageDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLImageDataWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLMultiBlockDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLMultiBlockDataWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLMultiGroupDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPDataObjectReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPHyperTreeGridReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPImageDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPPolyDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPRectilinearGridReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPStructuredDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPStructuredGridReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPTableReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPUnstructuredDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPUnstructuredGridReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPartitionedDataSetCollectionReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPartitionedDataSetReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPolyDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLPolyDataWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLReader.h"
    "/work/vtk_new/IO/XML/vtkXMLRectilinearGridReader.h"
    "/work/vtk_new/IO/XML/vtkXMLRectilinearGridWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLStructuredDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLStructuredDataWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLStructuredGridReader.h"
    "/work/vtk_new/IO/XML/vtkXMLStructuredGridWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLTableReader.h"
    "/work/vtk_new/IO/XML/vtkXMLTableWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLUniformGridAMRReader.h"
    "/work/vtk_new/IO/XML/vtkXMLUniformGridAMRWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLUnstructuredDataReader.h"
    "/work/vtk_new/IO/XML/vtkXMLUnstructuredDataWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLUnstructuredGridReader.h"
    "/work/vtk_new/IO/XML/vtkXMLUnstructuredGridWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLWriter.h"
    "/work/vtk_new/IO/XML/vtkXMLWriterBase.h"
    "/work/vtk_new/IO/XML/vtkXMLWriterC.h"
    "/work/build-vtk-wasm/IO/XML/vtkIOXMLModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkIOXML-9.2.a")
endif()

