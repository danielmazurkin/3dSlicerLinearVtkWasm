
#ifndef VTKRENDERINGWEBGPU_EXPORT_H
#define VTKRENDERINGWEBGPU_EXPORT_H

#ifdef VTKRENDERINGWEBGPU_STATIC_DEFINE
#  define VTKRENDERINGWEBGPU_EXPORT
#  define VTKRENDERINGWEBGPU_NO_EXPORT
#else
#  ifndef VTKRENDERINGWEBGPU_EXPORT
#    ifdef RenderingWebGPU_EXPORTS
        /* We are building this library */
#      define VTKRENDERINGWEBGPU_EXPORT 
#    else
        /* We are using this library */
#      define VTKRENDERINGWEBGPU_EXPORT 
#    endif
#  endif

#  ifndef VTKRENDERINGWEBGPU_NO_EXPORT
#    define VTKRENDERINGWEBGPU_NO_EXPORT 
#  endif
#endif

#ifndef VTKRENDERINGWEBGPU_DEPRECATED
#  define VTKRENDERINGWEBGPU_DEPRECATED __attribute__ ((__deprecated__))
#endif

#ifndef VTKRENDERINGWEBGPU_DEPRECATED_EXPORT
#  define VTKRENDERINGWEBGPU_DEPRECATED_EXPORT VTKRENDERINGWEBGPU_EXPORT VTKRENDERINGWEBGPU_DEPRECATED
#endif

#ifndef VTKRENDERINGWEBGPU_DEPRECATED_NO_EXPORT
#  define VTKRENDERINGWEBGPU_DEPRECATED_NO_EXPORT VTKRENDERINGWEBGPU_NO_EXPORT VTKRENDERINGWEBGPU_DEPRECATED
#endif

#if 0 /* DEFINE_NO_DEPRECATED */
#  ifndef VTKRENDERINGWEBGPU_NO_DEPRECATED
#    define VTKRENDERINGWEBGPU_NO_DEPRECATED
#  endif
#endif

/* VTK-HeaderTest-Exclude: vtkRenderingWebGPUModule.h */

/* Include ABI Namespace */
#include "vtkABINamespace.h"
/* AutoInit dependencies. */
#include "vtkRenderingCoreModule.h"


/* AutoInit implementations. */
#ifdef vtkRenderingWebGPU_AUTOINIT_INCLUDE
#include vtkRenderingWebGPU_AUTOINIT_INCLUDE
#endif
#ifdef vtkRenderingWebGPU_AUTOINIT
#include "vtkAutoInit.h"
VTK_MODULE_AUTOINIT(vtkRenderingWebGPU)
#endif

#endif /* VTKRENDERINGWEBGPU_EXPORT_H */
