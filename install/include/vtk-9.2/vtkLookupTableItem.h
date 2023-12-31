/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkLookupTableItem.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

#ifndef vtkLookupTableItem_h
#define vtkLookupTableItem_h

#include "vtkChartsCoreModule.h" // For export macro
#include "vtkScalarsToColorsItem.h"

VTK_ABI_NAMESPACE_BEGIN
class vtkLookupTable;

// Description:
// vtkPlot::Color, vtkPlot::Brush, vtkScalarsToColors::DrawPolyLine,
// vtkScalarsToColors::MaskAboveCurve have no effect here.
class VTKCHARTSCORE_EXPORT vtkLookupTableItem : public vtkScalarsToColorsItem
{
public:
  static vtkLookupTableItem* New();
  vtkTypeMacro(vtkLookupTableItem, vtkScalarsToColorsItem);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  void SetLookupTable(vtkLookupTable* t);
  vtkGetObjectMacro(LookupTable, vtkLookupTable);

protected:
  vtkLookupTableItem();
  ~vtkLookupTableItem() override;

  // Description:
  // Reimplemented to return the range of the lookup table
  void ComputeBounds(double bounds[4]) override;

  void ComputeTexture() override;
  vtkLookupTable* LookupTable;

private:
  vtkLookupTableItem(const vtkLookupTableItem&) = delete;
  void operator=(const vtkLookupTableItem&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
