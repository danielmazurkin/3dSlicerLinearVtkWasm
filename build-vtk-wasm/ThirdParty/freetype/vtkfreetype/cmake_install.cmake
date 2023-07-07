# Install script for directory: /work/vtk_new/ThirdParty/freetype/vtkfreetype

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkfreetype-9.2.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtkfreetype/include" TYPE FILE FILES
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/ft2build.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/vtk_freetype_mangle.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtkfreetype/include/freetype" TYPE FILE FILES
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/freetype.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftadvanc.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftbbox.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftbdf.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftbitmap.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftbzip2.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftcache.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftcid.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftcolor.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftdriver.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/fterrdef.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/fterrors.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftfntfmt.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftgasp.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftglyph.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftgxval.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftgzip.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftimage.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftincrem.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftlcdfil.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftlist.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftlogging.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftlzw.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftmac.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftmm.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftmodapi.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftmoderr.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftotval.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftoutln.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftparams.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftpfr.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftrender.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftsizes.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftsnames.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftstroke.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftsynth.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftsystem.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/fttrigon.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/fttypes.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ftwinfnt.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/t1tables.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/ttnameid.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/tttables.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/tttags.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtkfreetype/include/freetype/config" TYPE FILE FILES
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftconfig.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftheader.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftmodule.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftoption.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/config/ftstdlib.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/config/integer-types.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/config/mac-support.h"
    "/work/vtk_new/ThirdParty/freetype/vtkfreetype/include/freetype/config/public-macros.h"
    )
endif()

