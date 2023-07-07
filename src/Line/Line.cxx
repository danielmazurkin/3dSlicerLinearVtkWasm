#include "Line.h"
#include <vtkMRMLScene.h>
#include <vtkSmartPointer.h>
#include <vtkMRMLMarkupsNode.h>
#include <vtkMRMLMarkupsLineNode.h>
#include <vtkVector.h>
#include <vtkMRMLInteractionNode.h>
#include <vtkSlicerLineRepresentation3D.h>
#include <vtkMRMLMarkupsDisplayNode.h>
#include <vtkCamera.h>
#include <vtkSlicerLineWidget.h>
#include <vtkMRMLAbstractViewNode.h>
#include <vtkMRMLViewNode.h>
#include <vtkRenderer.h>
#include <iostream>
#include <vtkRenderWindow.h>


using namespace std;

Line::Line(vtkMRMLScene* scene) {
    cout << "Запускается конструктор Линии" << endl;
    vtkSmartPointer <vtkMRMLMarkupsNode> lineNode = vtkSmartPointer<vtkMRMLMarkupsLineNode>::New();
    scene->AddNode(lineNode);

    vtkSmartPointer <vtkSlicerLineWidget> slicer_line_widget = vtkSmartPointer<vtkSlicerLineWidget>::New();
    lineNode->SetID("id_test");
    lineNode->SetName("Line");

    vtkVector3d point1(0, 0, 0);  // Создайте первую точку
    lineNode->AddControlPoint(point1);  // Добавьте первую точку в markupsNode

    vtkVector3d point2(0.05, 0.05, 0);  // Создайте вторую точку
    lineNode->AddControlPoint(point2);  // Добавьте вторую точку в markupsNode

    vtkSmartPointer<vtkMRMLInteractionNode> interaction_node = vtkSmartPointer<vtkMRMLInteractionNode>::New();
    interaction_node->SetScene(scene);

    vtkSmartPointer<vtkSlicerLineRepresentation3D> rep = vtkSmartPointer<vtkSlicerLineRepresentation3D>::New();

    vtkSmartPointer<vtkMRMLMarkupsDisplayNode> displayNode = vtkSmartPointer<vtkMRMLMarkupsDisplayNode>::New();
    displayNode->SetScene(scene);

    rep->SetMarkupsNode(lineNode);

    scene->AddNode(displayNode);

    vtkSmartPointer<vtkMRMLAbstractViewNode> viewNode = vtkSmartPointer<vtkMRMLViewNode>::New();

    this->rep = rep;
    this->lineNode = lineNode;
    this->interaction_node = interaction_node;
    this->displayNode = displayNode;
    this->viewNode = viewNode;
    this->slicer_line_widget = slicer_line_widget;
    this->scene = scene;
}

void Line::RenderingLine(vtkRenderer* renderer, vtkRenderWindow* renderWindow, vtkCamera *camera) {
    this->renderWindow = renderWindow;
    displayNode->SetScene(this->scene);
    // Создание MRML сцены
    // Создание виджета

    this->rep->SetViewNode(this->viewNode);
    this->rep->SetMarkupsDisplayNode(this->displayNode);
    this->rep->UpdateFromMRML(nullptr, 0); // full update

    renderer->SetActiveCamera(camera);
    renderer->AddActor(this->slicer_line_widget->GetRepresentation());

    this->slicer_line_widget->SetRenderer(renderer);
    this->slicer_line_widget->SetRepresentation(this->rep);
    this->renderWindow->Render();
}

void Line::DeleteLine() {
    if (this->renderWindow) {
        this->rep->DeleteMarkupsDisplayNode();
        this->rep->UpdateFromMRML(nullptr, 0);
        this->renderWindow->Render();
    }
}

