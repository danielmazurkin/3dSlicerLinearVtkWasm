/*
 * Here is where system computed values get stored.
 * These values should only change when the target compile platform changes.
 */

/* #undef BUILD_SHARED_LIBS */
#ifndef BUILD_SHARED_LIBS
#define VTKTEEM_STATIC
#endif

#if defined(WIN32) && !defined(VTKTEEM_STATIC)
#pragma warning ( disable : 4275 )

#if defined(vtkTeem_EXPORTS)
#define VTK_Teem_EXPORT __declspec( dllexport )
#else
#define VTK_Teem_EXPORT __declspec( dllimport )
#endif
#else
#define VTK_Teem_EXPORT
#endif
