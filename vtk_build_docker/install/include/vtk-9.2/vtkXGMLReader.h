/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkXGMLReader.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

  This software is distributed WITHOUT ANY WARRANTY; without even
  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
  PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
//-------------------------------------------------------------------------
// Copyright 2008 Sandia Corporation.
// Under the terms of Contract DE-AC04-94AL85000 with Sandia Corporation,
// the U.S. Government retains certain rights in this software.
//-------------------------------------------------------------------------

/**
 * @class   vtkXGMLReader
 * @brief   Reads XGML graph files.
 * This reader is developed for a simple graph file format based
 * loosely on the "GML" notation.  This implementation is based
 * heavily on the vtkTulipReader class that forms part of the
 * Titan toolkit.
 *
 * @par Thanks:
 * Thanks to David Duke from the University of Leeds for providing this
 * implementation.
 */

#ifndef vtkXGMLReader_h
#define vtkXGMLReader_h

#include "vtkIOInfovisModule.h" // For export macro
#include "vtkUndirectedGraphAlgorithm.h"

VTK_ABI_NAMESPACE_BEGIN
class VTKIOINFOVIS_EXPORT vtkXGMLReader : public vtkUndirectedGraphAlgorithm
{
public:
  static vtkXGMLReader* New();
  vtkTypeMacro(vtkXGMLReader, vtkUndirectedGraphAlgorithm);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  ///@{
  /**
   * The XGML file name.
   */
  vtkGetFilePathMacro(FileName);
  vtkSetFilePathMacro(FileName);
  ///@}

protected:
  vtkXGMLReader();
  ~vtkXGMLReader() override;

  int RequestData(vtkInformation*, vtkInformationVector**, vtkInformationVector*) override;

private:
  char* FileName;

  vtkXGMLReader(const vtkXGMLReader&) = delete;
  void operator=(const vtkXGMLReader&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif // vtkXGMLReader_h
