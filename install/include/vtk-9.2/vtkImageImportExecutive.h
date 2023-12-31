/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkImageImportExecutive.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkImageImportExecutive
 *
 * vtkImageImportExecutive
 */

#ifndef vtkImageImportExecutive_h
#define vtkImageImportExecutive_h

#include "vtkIOImageModule.h" // For export macro
#include "vtkStreamingDemandDrivenPipeline.h"

VTK_ABI_NAMESPACE_BEGIN
class VTKIOIMAGE_EXPORT vtkImageImportExecutive : public vtkStreamingDemandDrivenPipeline
{
public:
  static vtkImageImportExecutive* New();
  vtkTypeMacro(vtkImageImportExecutive, vtkStreamingDemandDrivenPipeline);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  /**
   * Override to implement some requests with callbacks.
   */
  vtkTypeBool ProcessRequest(
    vtkInformation* request, vtkInformationVector** inInfo, vtkInformationVector* outInfo) override;

protected:
  vtkImageImportExecutive() = default;
  ~vtkImageImportExecutive() override = default;

private:
  vtkImageImportExecutive(const vtkImageImportExecutive&) = delete;
  void operator=(const vtkImageImportExecutive&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
