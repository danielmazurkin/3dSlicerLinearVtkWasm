/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkSynchronizedTemplates2D.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkSynchronizedTemplates2D
 * @brief   generate isoline(s) from a structured points set
 *
 * vtkSynchronizedTemplates2D is a 2D implementation of the synchronized
 * template algorithm. Note that vtkContourFilter will automatically
 * use this class when appropriate.
 *
 * @warning
 * This filter is specialized to 2D images.
 *
 * @sa
 * vtkContourFilter vtkFlyingEdges2D vtkMarchingSquares
 * vtkSynchronizedTemplates3D vtkDiscreteFlyingEdges2D
 */

#ifndef vtkSynchronizedTemplates2D_h
#define vtkSynchronizedTemplates2D_h

#include "vtkFiltersCoreModule.h" // For export macro
#include "vtkPolyDataAlgorithm.h"

#include "vtkContourValues.h" // Needed for direct access to ContourValues

VTK_ABI_NAMESPACE_BEGIN
class vtkImageData;

class VTKFILTERSCORE_EXPORT vtkSynchronizedTemplates2D : public vtkPolyDataAlgorithm
{
public:
  static vtkSynchronizedTemplates2D* New();
  vtkTypeMacro(vtkSynchronizedTemplates2D, vtkPolyDataAlgorithm);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  /**
   * Because we delegate to vtkContourValues
   */
  vtkMTimeType GetMTime() override;

  /**
   * Set a particular contour value at contour number i. The index i ranges
   * between 0<=i<NumberOfContours.
   */
  void SetValue(int i, double value) { this->ContourValues->SetValue(i, value); }

  /**
   * Get the ith contour value.
   */
  double GetValue(int i) { return this->ContourValues->GetValue(i); }

  /**
   * Get a pointer to an array of contour values. There will be
   * GetNumberOfContours() values in the list.
   */
  double* GetValues() { return this->ContourValues->GetValues(); }

  /**
   * Fill a supplied list with contour values. There will be
   * GetNumberOfContours() values in the list. Make sure you allocate
   * enough memory to hold the list.
   */
  void GetValues(double* contourValues) { this->ContourValues->GetValues(contourValues); }

  /**
   * Set the number of contours to place into the list. You only really
   * need to use this method to reduce list size. The method SetValue()
   * will automatically increase list size as needed.
   */
  void SetNumberOfContours(int number) { this->ContourValues->SetNumberOfContours(number); }

  /**
   * Get the number of contours in the list of contour values.
   */
  vtkIdType GetNumberOfContours() { return this->ContourValues->GetNumberOfContours(); }

  /**
   * Generate numContours equally spaced contour values between specified
   * range. Contour values will include min/max range values.
   */
  void GenerateValues(int numContours, double range[2])
  {
    this->ContourValues->GenerateValues(numContours, range);
  }

  /**
   * Generate numContours equally spaced contour values between specified
   * range. Contour values will include min/max range values.
   */
  void GenerateValues(int numContours, double rangeStart, double rangeEnd)
  {
    this->ContourValues->GenerateValues(numContours, rangeStart, rangeEnd);
  }

  ///@{
  /**
   * Option to set the point scalars of the output.  The scalars will be the
   * iso value of course.  By default this flag is on.
   */
  vtkSetMacro(ComputeScalars, vtkTypeBool);
  vtkGetMacro(ComputeScalars, vtkTypeBool);
  vtkBooleanMacro(ComputeScalars, vtkTypeBool);
  ///@}

  ///@{
  /**
   * Set/get which component of the scalar array to contour on; defaults to 0.
   */
  vtkSetMacro(ArrayComponent, int);
  vtkGetMacro(ArrayComponent, int);
  ///@}

protected:
  vtkSynchronizedTemplates2D();
  ~vtkSynchronizedTemplates2D() override;

  int RequestData(vtkInformation*, vtkInformationVector**, vtkInformationVector*) override;
  int FillInputPortInformation(int port, vtkInformation* info) override;
  vtkContourValues* ContourValues;

  vtkTypeBool ComputeScalars;
  int ArrayComponent;

private:
  vtkSynchronizedTemplates2D(const vtkSynchronizedTemplates2D&) = delete;
  void operator=(const vtkSynchronizedTemplates2D&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
