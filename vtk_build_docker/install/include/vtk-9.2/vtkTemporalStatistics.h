// -*- c++ -*-
/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkTemporalStatistics.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

/*
 * Copyright 2008 Sandia Corporation.
 * Under the terms of Contract DE-AC04-94AL85000, there is a non-exclusive
 * license for use of this work by or on behalf of the
 * U.S. Government. Redistribution and use in source and binary forms, with
 * or without modification, are permitted provided that this Notice and any
 * statement of authorship are reproduced on all copies.
 */

/**
 * @class   vtkTemporalStatistics
 * @brief   Compute statistics of point or cell data as it changes over time
 *
 *
 *
 * Given an input that changes over time, vtkTemporalStatistics looks at the
 * data for each time step and computes some statistical information of how a
 * point or cell variable changes over time.  For example, vtkTemporalStatistics
 * can compute the average value of "pressure" over time of each point.
 *
 * Note that this filter will require the upstream filter to be run on every
 * time step that it reports that it can compute.  This may be a time consuming
 * operation.
 *
 * vtkTemporalStatistics ignores the temporal spacing.  Each timestep will be
 * weighted the same regardless of how long of an interval it is to the next
 * timestep.  Thus, the average statistic may be quite different from an
 * integration of the variable if the time spacing varies.
 *
 * @par Thanks:
 * This class was originally written by Kenneth Moreland (kmorel@sandia.gov)
 * from Sandia National Laboratories.
 *
 */

#ifndef vtkTemporalStatistics_h
#define vtkTemporalStatistics_h

#include "vtkFiltersGeneralModule.h" // For export macro
#include "vtkPassInputTypeAlgorithm.h"

VTK_ABI_NAMESPACE_BEGIN
class vtkCompositeDataSet;
class vtkDataSet;
class vtkFieldData;
class vtkGraph;

class VTKFILTERSGENERAL_EXPORT vtkTemporalStatistics : public vtkPassInputTypeAlgorithm
{
public:
  ///@{
  /**
   * Standard methods for instantiation, type information, and printing.
   */
  vtkTypeMacro(vtkTemporalStatistics, vtkPassInputTypeAlgorithm);
  static vtkTemporalStatistics* New();
  void PrintSelf(ostream& os, vtkIndent indent) override;
  ///@}

  ///@{
  /**
   * Turn on/off the computation of the average values over time.  On by
   * default.  The resulting array names have "_average" appended to them.
   */
  vtkGetMacro(ComputeAverage, vtkTypeBool);
  vtkSetMacro(ComputeAverage, vtkTypeBool);
  vtkBooleanMacro(ComputeAverage, vtkTypeBool);
  ///@}

  ///@{
  /**
   * Turn on/off the computation of the minimum values over time.  On by
   * default.  The resulting array names have "_minimum" appended to them.
   */
  vtkGetMacro(ComputeMinimum, vtkTypeBool);
  vtkSetMacro(ComputeMinimum, vtkTypeBool);
  vtkBooleanMacro(ComputeMinimum, vtkTypeBool);
  ///@}

  ///@{
  /**
   * Turn on/off the computation of the maximum values over time.  On by
   * default.  The resulting array names have "_maximum" appended to them.
   */
  vtkGetMacro(ComputeMaximum, vtkTypeBool);
  vtkSetMacro(ComputeMaximum, vtkTypeBool);
  vtkBooleanMacro(ComputeMaximum, vtkTypeBool);
  ///@}

  // Definition:
  // Turn on/off the computation of the standard deviation of the values over
  // time.  On by default.  The resulting array names have "_stddev" appended to
  // them.
  vtkGetMacro(ComputeStandardDeviation, vtkTypeBool);
  vtkSetMacro(ComputeStandardDeviation, vtkTypeBool);
  vtkBooleanMacro(ComputeStandardDeviation, vtkTypeBool);

protected:
  vtkTemporalStatistics();
  ~vtkTemporalStatistics() override;

  vtkTypeBool ComputeAverage;
  vtkTypeBool ComputeMaximum;
  vtkTypeBool ComputeMinimum;
  vtkTypeBool ComputeStandardDeviation;

  // Used when iterating the pipeline to keep track of which timestep we are on.
  int CurrentTimeIndex;

  int FillInputPortInformation(int port, vtkInformation* info) override;

  int RequestDataObject(vtkInformation* request, vtkInformationVector** inputVector,
    vtkInformationVector* outputVector) override;
  int RequestInformation(vtkInformation* request, vtkInformationVector** inputVector,
    vtkInformationVector* outputVector) override;
  int RequestUpdateExtent(vtkInformation* request, vtkInformationVector** inputVector,
    vtkInformationVector* outputVector) override;
  int RequestData(vtkInformation* request, vtkInformationVector** inputVector,
    vtkInformationVector* outputVector) override;

  virtual void InitializeStatistics(vtkDataObject* input, vtkDataObject* output);
  virtual void InitializeStatistics(vtkDataSet* input, vtkDataSet* output);
  virtual void InitializeStatistics(vtkGraph* input, vtkGraph* output);
  virtual void InitializeStatistics(vtkCompositeDataSet* input, vtkCompositeDataSet* output);
  virtual void InitializeArrays(vtkFieldData* inFd, vtkFieldData* outFd);
  virtual void InitializeArray(vtkDataArray* array, vtkFieldData* outFd);

  virtual void AccumulateStatistics(vtkDataObject* input, vtkDataObject* output);
  virtual void AccumulateStatistics(vtkDataSet* input, vtkDataSet* output);
  virtual void AccumulateStatistics(vtkGraph* input, vtkGraph* output);
  virtual void AccumulateStatistics(vtkCompositeDataSet* input, vtkCompositeDataSet* output);
  virtual void AccumulateArrays(vtkFieldData* inFd, vtkFieldData* outFd);

  virtual void PostExecute(vtkDataObject* input, vtkDataObject* output);
  virtual void PostExecute(vtkDataSet* input, vtkDataSet* output);
  virtual void PostExecute(vtkGraph* input, vtkGraph* output);
  virtual void PostExecute(vtkCompositeDataSet* input, vtkCompositeDataSet* output);
  virtual void FinishArrays(vtkFieldData* inFd, vtkFieldData* outFd);

  virtual vtkDataArray* GetArray(
    vtkFieldData* fieldData, vtkDataArray* inArray, const char* nameSuffix);

private:
  vtkTemporalStatistics(const vtkTemporalStatistics&) = delete;
  void operator=(const vtkTemporalStatistics&) = delete;

  ///@{
  /**
   * Used to avoid multiple warnings for the same filter when
   * the number of points or cells in the data set is changing
   * between time steps.
   */
  bool GeneratedChangingTopologyWarning;
  ///@}
};

VTK_ABI_NAMESPACE_END
#endif //_vtkTemporalStatistics_h
