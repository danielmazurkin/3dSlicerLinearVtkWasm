/*
 * Here is where system computed values get stored.
 * These values should only change when the target compile platform changes.
 */

/* #undef BUILD_SHARED_LIBS */
#ifndef BUILD_SHARED_LIBS
#define vtkSegmentationCore_STATIC
#endif

#if defined(WIN32) && !defined(vtkSegmentationCore_STATIC)
#pragma warning ( disable : 4275 )

#if defined(vtkSegmentationCore_EXPORTS)
#define vtkSegmentationCore_EXPORT __declspec( dllexport )
#else
#define vtkSegmentationCore_EXPORT __declspec( dllimport )
#endif
#else
#define vtkSegmentationCore_EXPORT
#endif
