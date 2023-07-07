# Install script for directory: /work/vtk_new/ThirdParty/libharu/vtklibharu

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/work/build-vtk-wasm/ThirdParty/libharu/vtklibharu/src/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-9.2/vtklibharu/include" TYPE FILE FILES
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_types.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_consts.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_version.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_annotation.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_catalog.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_conf.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_destination.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_doc.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_encoder.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_encrypt.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_encryptdict.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_error.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_ext_gstate.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_font.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_fontdef.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_gstate.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_image.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_info.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_list.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_mmgr.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_objects.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_outline.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_pages.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_page_label.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_streams.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_u3d.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_utils.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_pdfa.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_3dmeasure.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/hpdf_exdata.h"
    "/work/vtk_new/ThirdParty/libharu/vtklibharu/include/vtk_haru_mangle.h"
    "/work/build-vtk-wasm/ThirdParty/libharu/vtklibharu/include/hpdf_config.h"
    )
endif()

