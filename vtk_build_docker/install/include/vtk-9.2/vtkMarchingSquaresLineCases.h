/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkMarchingSquaresLineCases.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
#ifndef vtkMarchingSquaresLineCases_h
#define vtkMarchingSquaresLineCases_h
//
// Marching squares cases for generating isolines.
//
#include "vtkCommonDataModelModule.h" // For export macro
#include "vtkSystemIncludes.h"

VTK_ABI_NAMESPACE_BEGIN
struct VTKCOMMONDATAMODEL_EXPORT vtkMarchingSquaresLineCases
{
  int edges[5];
  static vtkMarchingSquaresLineCases* GetCases();
};

VTK_ABI_NAMESPACE_END
#endif
// VTK-HeaderTest-Exclude: vtkMarchingSquaresLineCases.h
