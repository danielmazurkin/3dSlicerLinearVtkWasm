/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkSOADataArrayTemplateInstantiate.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

// This file generates an instantiation of vtkSOADataArrayTemplate.
// For AoS arrays, this is done in the more derived classes, for example
// compiling vtkFloatArray.cxx instantiates vtkAOSDataArrayTemplate<float>.

#define VTK_SOA_DATA_ARRAY_TEMPLATE_INSTANTIATING
#include "vtkSOADataArrayTemplate.txx"

VTK_SOA_DATA_ARRAY_TEMPLATE_INSTANTIATE(unsigned short);
