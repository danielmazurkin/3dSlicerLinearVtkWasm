//
// Created by danil on 6/16/23.
//

#include "BasicRender.h"
#include <vtkMRMLScene.h>
#include <vtkRenderer.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <iostream>
#include "Line.h"
#include <vtkMRMLAbstractViewNode.h>
#include <vtkMRMLViewNode.h>
#include <vtkMRMLInteractionNode.h>
#include <vtkMRMLMarkupsNode.h>
#include <vtkMRMLMarkupsDisplayNode.h>
#include <vtkSlicerLineWidget.h>
#include <vtkMRMLMarkupsDisplayNode.h>
#include <vtkMRMLDisplayNode.h>
#include <vtkMRMLMarkupsLineNode.h>
#include <vtkNew.h>
#include <Line.h>


using namespace std;

BasicRender::BasicRender() {
    vtkSmartPointer<vtkRenderer> renderer = vtkSmartPointer<vtkRenderer>::New();
    vtkSmartPointer<vtkRenderWindow> renderWindow = vtkSmartPointer<vtkRenderWindow>::New();
    vtkSmartPointer<vtkRenderWindowInteractor> interactor = vtkSmartPointer<vtkRenderWindowInteractor>::New();
    vtkSmartPointer <vtkMRMLScene> scene = vtkSmartPointer<vtkMRMLScene>::New();
    vtkSmartPointer<vtkCamera> camera = vtkSmartPointer<vtkCamera>::New();

    this->renderer = renderer;
    this->renderWindow = renderWindow;
    this->interactor = interactor;
    this->scene = scene;
    this->camera = camera;
    this->line_from_slicer = new Line(this->scene);
}


void BasicRender::StartRendering(int heightRendering, int widthRendering) {
    // Create a renderer, render window, and interactor
    renderWindow->AddRenderer(this->renderer);
    renderWindow->SetSize(heightRendering, widthRendering);
    this->ShowLine();
    this->interactor->SetRenderWindow(renderWindow);
    this->renderer->SetActiveCamera(this->camera);
    this->renderWindow->Render();
    this->interactor->Start();

}

vtkRenderer* BasicRender::GetRenderer() {
    return this->renderer;
}

vtkRenderWindow* BasicRender::GetRendererWindow() {
    return this->renderWindow;
}

vtkMRMLScene* BasicRender::GetMRMLScene() {
    return this->scene;
}

vtkCamera* BasicRender::GetCamera() {
    return this->camera;
}

void BasicRender::ShowLine() {
    this->line_from_slicer->RenderingLine(this->renderer, this->renderWindow, this->camera);
}

void BasicRender::DestroyLine() {
    this->line_from_slicer->DeleteLine();
}