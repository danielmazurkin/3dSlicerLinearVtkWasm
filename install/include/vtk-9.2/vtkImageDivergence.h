/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkImageDivergence.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkImageDivergence
 * @brief   Divergence of a vector field.
 *
 * vtkImageDivergence takes a 3D vector field
 * and creates a scalar field which
 * which represents the rate of change of the vector field.
 * The definition of Divergence:
 * Given V = P(x,y,z), Q(x,y,z), R(x,y,z),
 * Divergence = dP/dx + dQ/dy + dR/dz.
 */

#ifndef vtkImageDivergence_h
#define vtkImageDivergence_h

#include "vtkImagingMathModule.h" // For export macro
#include "vtkThreadedImageAlgorithm.h"

VTK_ABI_NAMESPACE_BEGIN
class VTKIMAGINGMATH_EXPORT vtkImageDivergence : public vtkThreadedImageAlgorithm
{
public:
  static vtkImageDivergence* New();
  vtkTypeMacro(vtkImageDivergence, vtkThreadedImageAlgorithm);
  void PrintSelf(ostream& os, vtkIndent indent) override;

protected:
  vtkImageDivergence();
  ~vtkImageDivergence() override = default;

  int RequestUpdateExtent(vtkInformation*, vtkInformationVector**, vtkInformationVector*) override;
  int RequestInformation(vtkInformation*, vtkInformationVector**, vtkInformationVector*) override;
  void ThreadedExecute(vtkImageData* inData, vtkImageData* outData, int ext[6], int id) override;

private:
  vtkImageDivergence(const vtkImageDivergence&) = delete;
  void operator=(const vtkImageDivergence&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
