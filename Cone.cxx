#ifndef __EMSCRIPTEN__

#include <vtkSmartPointer.h>
#include <vtkSphereSource.h>
#include <vtkPolyDataMapper.h>
#include <vtkActor.h>
#include <vtkRenderer.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkMRMLScene.h>
#include "BasicRender.h"
#include "Line.h"

int main(int, char*[])
{
    BasicRender basicRender;
    basicRender.StartRendering();
    return 0;
}

#endif

#ifdef __EMSCRIPTEN__
#include <emscripten/bind.h>
#include <BasicRender.h>
#include <Line.h>

EMSCRIPTEN_BINDINGS(test_app_binding)
{
  emscripten::class_<BasicRender>("BasicRender")
    .constructor<>()
    .function("StartRendering", &BasicRender::StartRendering)
    .function("DestroyLine", &BasicRender::DestroyLine)
    .function("ShowLine", &BasicRender::ShowLine);
}
#endif
