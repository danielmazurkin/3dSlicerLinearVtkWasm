# Install script for directory: /work/vtk_new/ThirdParty/libxml2/vtklibxml2

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtklibxml2/include/libxml" TYPE FILE FILES
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/c14n.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/catalog.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/chvalid.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/debugXML.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/dict.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/encoding.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/entities.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/globals.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/hash.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/HTMLparser.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/HTMLtree.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/list.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/nanoftp.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/nanohttp.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/parser.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/parserInternals.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/pattern.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/relaxng.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/SAX.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/SAX2.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/schemasInternals.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/schematron.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/threads.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/tree.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/uri.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/valid.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/vtk_libxml2_mangle.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xinclude.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xlink.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlIO.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlautomata.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlerror.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlexports.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlmemory.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlmodule.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlreader.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlregexp.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlsave.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlschemas.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlschemastypes.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlstring.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlunicode.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xmlwriter.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xpath.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xpathInternals.h"
    "/work/vtk_new/ThirdParty/libxml2/vtklibxml2/include/libxml/xpointer.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtklibxml2-9.2.a")
endif()

