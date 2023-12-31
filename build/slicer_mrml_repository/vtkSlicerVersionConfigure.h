/*=auto=========================================================================

 Portions (c) Copyright 2005 Brigham and Women's Hospital (BWH)
 All Rights Reserved.

 See COPYRIGHT.txt
 or http://www.slicer.org/copyright/copyright.txt for details.

 Program:   3D Slicer

=========================================================================auto=*/

#ifndef __vtkSlicerVersionConfigure_h
#define __vtkSlicerVersionConfigure_h

/// \file vtkSlicerVersionConfigure.h

#include "vtkSlicerVersionConfigureInternal.h"

/// \def Slicer_RELEASE_TYPE
/// \brief Type of Slicer release: `Experimental`, `Nightly` or `Stable`.
#define Slicer_RELEASE_TYPE ""

//-----------------------------------------------------------------------------
/// \def Slicer_VERSION
/// \brief Slicer version string.
///
/// Format is `<Slicer_VERSION_MAJOR>.<Slicer_VERSION_MINOR>`.
#define Slicer_VERSION ""

/// \def Slicer_VERSION_FULL
/// \brief Slicer long version string.
///
/// Format is `<Slicer_VERSION_MAJOR>.<Slicer_VERSION_MINOR>.<Slicer_VERSION_PATCH>[-<Slicer_BUILDDATE>]`
#define Slicer_VERSION_FULL ""

/// \def Slicer_BUILDDATE
/// \brief Build date associated with this project binaries.
#define Slicer_BUILDDATE ""

/// \def Slicer_WC_URL
/// \brief Source control management URL identifying Slicer project sources.
#define Slicer_WC_URL ""

/// \def Slicer_REVISION
/// \brief Revision identifying this project sources. Can contain WC revision hash or commit count.
/// \sa Slicer_WC_REVISION_TYPE
#define Slicer_REVISION ""

/// \def Slicer_REVISION_TYPE
/// \brief Specifies what is stored in Slicer_REVISION (hash or commit count).
/// \sa Slicer_REVISION
#define Slicer_REVISION_TYPE ""

/// \def Slicer_WC_REVISION
/// \brief Revision identifying this project sources.
/// \sa Slicer_WC_URL
#define Slicer_WC_REVISION ""

/// \def Slicer_WC_REVISION_HASH
/// \brief Revision hash identifying this project sources.
/// \sa Slicer_WC_URL
#define Slicer_WC_REVISION_HASH ""

/// \def Slicer_WC_REVISION_HASH
/// \brief Commit count identifying this project sources (custom commit count offset applied).
/// \sa Slicer_REVISION
#define Slicer_COMMIT_COUNT ""

//-----------------------------------------------------------------------------
/// \def Slicer_MAIN_PROJECT_VERSION
/// \brief Slicer main project version string.
///
/// Format is `<Slicer_MAIN_PROJECT_VERSION_MAJOR>.<Slicer_MAIN_PROJECT_VERSION_MINOR>`.
#define Slicer_MAIN_PROJECT_VERSION ""

/// \def Slicer_MAIN_PROJECT_VERSION_FULL
/// \brief Slicer main project long version string.
///
/// Format is `<Slicer_MAIN_PROJECT_VERSION_MAJOR>.<Slicer_MAIN_PROJECT_VERSION_MINOR>.<Slicer_MAIN_PROJECT_VERSION_PATCH>[-<Slicer_MAIN_PROJECT_BUILDDATE>]`
#define Slicer_MAIN_PROJECT_VERSION_FULL ""

/// \def Slicer_MAIN_PROJECT_BUILDDATE
/// \brief Build date associated with main project binaries.
#define Slicer_MAIN_PROJECT_BUILDDATE ""

/// \def Slicer_MAIN_PROJECT_WC_URL
/// \brief Source control management URL identifying main project sources.
#define Slicer_MAIN_PROJECT_WC_URL ""

/// \def Slicer_MAIN_PROJECT_REVISION
/// \brief Revision identifying main project sources. Can contain WC revision hash or commit count.
/// \sa Slicer_MAIN_PROJECT_WC_REVISION_TYPE
#define Slicer_MAIN_PROJECT_REVISION ""

/// \def Slicer_MAIN_PROJECT_REVISION_TYPE
/// \brief Specifies what is stored in Slicer_MAIN_PROJECT_REVISION (hash or commit count).
/// \sa Slicer_MAIN_PROJECT_REVISION
#define Slicer_MAIN_PROJECT_REVISION_TYPE ""

/// \def Slicer_MAIN_PROJECT_WC_REVISION
/// \brief Revision identifying main project sources.
/// \sa Slicer_MAIN_PROJECT_WC_URL
#define Slicer_MAIN_PROJECT_WC_REVISION ""

/// \def Slicer_MAIN_PROJECT_WC_REVISION_HASH
/// \brief Revision hash identifying main project sources.
/// \sa Slicer_MAIN_PROJECT_WC_URL
#define Slicer_MAIN_PROJECT_WC_REVISION_HASH ""

/// \def Slicer_MAIN_PROJECT_WC_REVISION_HASH
/// \brief Commit count identifying main project sources (custom commit count offset applied).
/// \sa Slicer_MAIN_PROJECT_REVISION
#define Slicer_MAIN_PROJECT_COMMIT_COUNT ""

#endif // __vtkSlicerVersionConfigure_h
