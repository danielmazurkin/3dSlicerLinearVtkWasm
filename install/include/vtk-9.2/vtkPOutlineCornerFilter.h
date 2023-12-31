/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkPOutlineCornerFilter.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkPOutlineCornerFilter
 * @brief   create wireframe outline corners for arbitrary data set
 *
 * vtkPOutlineCornerFilter works like vtkOutlineCornerFilter,
 * but it looks for data
 * partitions in other processes.  It assumes the filter is operated
 * in a data parallel pipeline.
 */

#ifndef vtkPOutlineCornerFilter_h
#define vtkPOutlineCornerFilter_h

#include "vtkFiltersParallelModule.h" // For export macro
#include "vtkPolyDataAlgorithm.h"
VTK_ABI_NAMESPACE_BEGIN
class vtkOutlineCornerSource;
class vtkMultiProcessController;
class vtkAppendPolyData;
class vtkPOutlineFilterInternals;

class VTKFILTERSPARALLEL_EXPORT vtkPOutlineCornerFilter : public vtkPolyDataAlgorithm
{
public:
  vtkTypeMacro(vtkPOutlineCornerFilter, vtkPolyDataAlgorithm);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  /**
   * Construct outline corner filter with default corner factor = 0.2
   */
  static vtkPOutlineCornerFilter* New();

  /**
   * Set/Get the factor that controls the relative size of the corners
   * to the length of the corresponding bounds
   * Typically vtkSetClampMacro(CornerFactor, double, 0.001, 0.5) would
   * used but since we are chaining this to an internal method we rewrite
   * the code in the macro
   */
  virtual void SetCornerFactor(double cornerFactor);
  virtual double GetCornerFactorMinValue() { return 0.001; }
  virtual double GetCornerFactorMaxValue() { return 0.5; }

  vtkGetMacro(CornerFactor, double);

  ///@{
  /**
   * Set and get the controller.
   */
  virtual void SetController(vtkMultiProcessController*);
  vtkGetObjectMacro(Controller, vtkMultiProcessController);
  ///@}

protected:
  vtkPOutlineCornerFilter();
  ~vtkPOutlineCornerFilter() override;

  vtkMultiProcessController* Controller;
  vtkOutlineCornerSource* OutlineCornerSource;
  int RequestData(vtkInformation*, vtkInformationVector**, vtkInformationVector*) override;
  int FillInputPortInformation(int port, vtkInformation* info) override;

  double CornerFactor;

private:
  vtkPOutlineCornerFilter(const vtkPOutlineCornerFilter&) = delete;
  void operator=(const vtkPOutlineCornerFilter&) = delete;

  vtkPOutlineFilterInternals* Internals;
};

VTK_ABI_NAMESPACE_END
#endif
