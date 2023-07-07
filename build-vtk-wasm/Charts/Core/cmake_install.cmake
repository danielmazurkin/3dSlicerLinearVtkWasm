# Install script for directory: /work/vtk_new/Charts/Core

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
    "/work/vtk_new/Charts/Core/vtkAxis.h"
    "/work/vtk_new/Charts/Core/vtkAxisExtended.h"
    "/work/vtk_new/Charts/Core/vtkCategoryLegend.h"
    "/work/vtk_new/Charts/Core/vtkChart.h"
    "/work/vtk_new/Charts/Core/vtkChartBox.h"
    "/work/vtk_new/Charts/Core/vtkChartHistogram2D.h"
    "/work/vtk_new/Charts/Core/vtkChartLegend.h"
    "/work/vtk_new/Charts/Core/vtkChartMatrix.h"
    "/work/vtk_new/Charts/Core/vtkChartParallelCoordinates.h"
    "/work/vtk_new/Charts/Core/vtkChartPie.h"
    "/work/vtk_new/Charts/Core/vtkChartXY.h"
    "/work/vtk_new/Charts/Core/vtkChartXYZ.h"
    "/work/vtk_new/Charts/Core/vtkColorLegend.h"
    "/work/vtk_new/Charts/Core/vtkColorTransferControlPointsItem.h"
    "/work/vtk_new/Charts/Core/vtkColorTransferFunctionItem.h"
    "/work/vtk_new/Charts/Core/vtkCompositeControlPointsItem.h"
    "/work/vtk_new/Charts/Core/vtkCompositeTransferFunctionItem.h"
    "/work/vtk_new/Charts/Core/vtkContextArea.h"
    "/work/vtk_new/Charts/Core/vtkContextPolygon.h"
    "/work/vtk_new/Charts/Core/vtkControlPointsItem.h"
    "/work/vtk_new/Charts/Core/vtkInteractiveArea.h"
    "/work/vtk_new/Charts/Core/vtkLookupTableItem.h"
    "/work/vtk_new/Charts/Core/vtkPiecewiseControlPointsItem.h"
    "/work/vtk_new/Charts/Core/vtkPiecewiseFunctionItem.h"
    "/work/vtk_new/Charts/Core/vtkPiecewisePointHandleItem.h"
    "/work/vtk_new/Charts/Core/vtkPlot.h"
    "/work/vtk_new/Charts/Core/vtkPlot3D.h"
    "/work/vtk_new/Charts/Core/vtkPlotArea.h"
    "/work/vtk_new/Charts/Core/vtkPlotBag.h"
    "/work/vtk_new/Charts/Core/vtkPlotBar.h"
    "/work/vtk_new/Charts/Core/vtkPlotBarRangeHandlesItem.h"
    "/work/vtk_new/Charts/Core/vtkPlotBox.h"
    "/work/vtk_new/Charts/Core/vtkPlotFunctionalBag.h"
    "/work/vtk_new/Charts/Core/vtkPlotGrid.h"
    "/work/vtk_new/Charts/Core/vtkPlotHistogram2D.h"
    "/work/vtk_new/Charts/Core/vtkPlotLine.h"
    "/work/vtk_new/Charts/Core/vtkPlotLine3D.h"
    "/work/vtk_new/Charts/Core/vtkPlotParallelCoordinates.h"
    "/work/vtk_new/Charts/Core/vtkPlotPie.h"
    "/work/vtk_new/Charts/Core/vtkPlotPoints.h"
    "/work/vtk_new/Charts/Core/vtkPlotPoints3D.h"
    "/work/vtk_new/Charts/Core/vtkPlotRangeHandlesItem.h"
    "/work/vtk_new/Charts/Core/vtkPlotStacked.h"
    "/work/vtk_new/Charts/Core/vtkPlotSurface.h"
    "/work/vtk_new/Charts/Core/vtkRangeHandlesItem.h"
    "/work/vtk_new/Charts/Core/vtkScalarsToColorsItem.h"
    "/work/vtk_new/Charts/Core/vtkScatterPlotMatrix.h"
    "/work/build-vtk-wasm/Charts/Core/vtkChartsCoreModule.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/work/build-vtk-wasm/lib/libvtkChartsCore-9.2.a")
endif()

