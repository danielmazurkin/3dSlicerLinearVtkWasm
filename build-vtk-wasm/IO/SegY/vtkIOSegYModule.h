
#ifndef VTKIOSEGY_EXPORT_H
#define VTKIOSEGY_EXPORT_H

#ifdef VTKIOSEGY_STATIC_DEFINE
#  define VTKIOSEGY_EXPORT
#  define VTKIOSEGY_NO_EXPORT
#else
#  ifndef VTKIOSEGY_EXPORT
#    ifdef IOSegY_EXPORTS
        /* We are building this library */
#      define VTKIOSEGY_EXPORT 
#    else
        /* We are using this library */
#      define VTKIOSEGY_EXPORT 
#    endif
#  endif

#  ifndef VTKIOSEGY_NO_EXPORT
#    define VTKIOSEGY_NO_EXPORT 
#  endif
#endif

#ifndef VTKIOSEGY_DEPRECATED
#  define VTKIOSEGY_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKIOSEGY_DEPRECATED_EXPORT
#  define VTKIOSEGY_DEPRECATED_EXPORT VTKIOSEGY_EXPORT VTKIOSEGY_DEPRECATED
#endif

#ifndef VTKIOSEGY_DEPRECATED_NO_EXPORT
#  define VTKIOSEGY_DEPRECATED_NO_EXPORT VTKIOSEGY_NO_EXPORT VTKIOSEGY_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKIOSEGY_NO_DEPRECATED
#    define VTKIOSEGY_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkIOSegYModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"

#endif /* VTKIOSEGY_EXPORT_H */
