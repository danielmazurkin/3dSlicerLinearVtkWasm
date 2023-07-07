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
#include <Markup.h>

EMSCRIPTEN_BINDINGS(test_app_binding)
{
  emscripten::class_<BasicRender>("BasicRender")
    .constructor<>()
    .function("StartRendering", &BasicRender::StartRendering)
    .function("DestroyLine", &BasicRender::DestroyLine)
    .function("ShowLine", &BasicRender::ShowLine);
}

//int main(int argc, char *argv[]) {
//
//    // Создание визуализатора VTK
//    vtkSmartPointer <vtkMRMLScene> scene = vtkSmartPointer<vtkMRMLScene>::New();
//
//
//    vtkSmartPointer<vtkRenderer> renderer = vtkSmartPointer<vtkRenderer>::New();
//    vtkSmartPointer<vtkRenderWindow> renderWindow = vtkSmartPointer<vtkRenderWindow>::New();
//    renderWindow->AddRenderer(renderer);
//
//    // Создание интерактора
//    vtkSmartPointer<vtkRenderWindowInteractor> interactor = vtkSmartPointer<vtkRenderWindowInteractor>::New();
//    interactor->Initialize();
//    interactor->SetRenderWindow(renderer->GetRenderWindow());
//    renderWindow->AddRenderer(renderer);
//    renderWindow->Render();
//
//    Markups markups_instance(scene, renderer, renderWindow, interactor);
//    markups_instance.InitiliazeMarkupsData(scene);
//    markups_instance.InitiliazeInteractiveWithMarkups(renderer, interactor);
//
//    vtkSmartPointer<vtkCamera> camera = vtkSmartPointer<vtkCamera>::New();
//    renderer->SetActiveCamera(camera);
//
//    interactor->Start();
//}
#endif