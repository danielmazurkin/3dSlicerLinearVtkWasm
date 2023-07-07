//
// Created by danil on 7/7/23.
//
#include <vtkSmartPointer.h>
#include <vtkRenderWindow.h>
#include <vtkRenderer.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkMRMLMarkupsLineNode.h>
#include <vtkMRMLScene.h>
#include <vtkSlicerMarkupsWidget.h>
#include <vtkSlicerMarkupsWidgetRepresentation3D.h>
#include <vtkMRMLUnitNode.h>
#include <iostream>
#include <vtkMRMLModelDisplayNode.h>
#include <vtkCamera.h>
#include <vtkVector.h>
#include <vtkInteractorStyleTrackballCamera.h>
#include <vtkSlicerApplicationLogic.h>
#include <vtkMRMLInteractionNode.h>
#include <vtkMRMLViewDisplayableManager.h>
#include <vtkViewport.h>
#include <vtkRendererCollection.h>
#include <vtkMRMLViewNode.h>
#include <vtkMRMLMarkupsFiducialNode.h>
#include <vtkSlicerPointsRepresentation3D.h>
#include <vtkSlicerPointsWidget.h>
#include <vtkCallbackCommand.h>
#include <vtkPointPicker.h>
#include "Markup.h"

Markups::Markups(vtkMRMLScene *scene, vtkRenderer *renderer, vtkRenderWindow *renderWindow, vtkRenderWindowInteractor *interactor) {
    this->rep = vtkSmartPointer<vtkSlicerPointsRepresentation3D>::New();
    this->markupsNode = vtkSmartPointer<vtkMRMLMarkupsFiducialNode>::New();
    this->markupsNode->SetID("id_test");
    this->markupsNode->SetName("Line");
    this->picker = vtkSmartPointer<vtkPointPicker>::New();
    this->widgetPoint = vtkSmartPointer<vtkSlicerPointsWidget>::New();
    this->clickCallback = vtkSmartPointer<vtkCallbackCommand>::New();
}

void Markups::MousePressEvent(vtkObject* obj, long unsigned int eventId, void* clientData, void* callData)
{
    vtkRenderWindowInteractor* interactor = static_cast<vtkRenderWindowInteractor*>(obj);
    vtkPointPicker* picker = static_cast<vtkPointPicker*>(interactor->GetPicker());

    int* clickPos = interactor->GetEventPosition();
    picker->Pick(clickPos[0], clickPos[1], 0, interactor->GetRenderWindow()->GetRenderers()->GetFirstRenderer());

    double* point = picker->GetPickPosition();
    vtkVector3d point_by_click_data(point[0], point[1], point[2]);  // Создайте вторую точку

    dataForTransfer.markupsNode->AddControlPoint(point_by_click_data);  // Добавьте вторую точку в markupsNode
    dataForTransfer.rep->SetViewNode(dataForTransfer.viewNode);
    dataForTransfer.rep->SetMarkupsDisplayNode(dataForTransfer.displayNode);
    dataForTransfer.rep->UpdateFromMRML(nullptr, 0); // full update
}

DataForTransfer Markups::dataForTransfer;

void Markups::InitiliazeInteractiveWithMarkups(vtkRenderer *renderer, vtkRenderWindowInteractor *interactor) {
    interactor->SetPicker(this->picker);
    this->widgetPoint->SetRenderer(renderer);
    this->widgetPoint->SetRepresentation(this->rep);
    this->clickCallback->SetCallback(Markups::MousePressEvent);
    interactor->AddObserver(vtkCommand::LeftButtonPressEvent, this->clickCallback);
    renderer->AddActor(this->widgetPoint->GetRepresentation());
}

void Markups::InitiliazeMarkupsData(vtkMRMLScene *scene) {
    this->displayNode = vtkSmartPointer<vtkMRMLMarkupsDisplayNode>::New();
    Markups::dataForTransfer.displayNode = this->displayNode;
    scene->AddNode(this->displayNode);

    vtkSmartPointer<vtkMRMLAbstractViewNode> viewNode = vtkSmartPointer<vtkMRMLViewNode>::New();
    Markups::dataForTransfer.viewNode = viewNode;
    Markups::dataForTransfer.rep = this->rep;

    rep->SetViewNode(viewNode);
    rep->SetMarkupsDisplayNode(displayNode);
    rep->UpdateFromMRML(nullptr, 0); // full update

    vtkSmartPointer <vtkMRMLMarkupsNode> markupsNode = vtkSmartPointer<vtkMRMLMarkupsFiducialNode>::New();
    markupsNode->SetID("Line_Id");
    markupsNode->SetName("Line");
    Markups::dataForTransfer.markupsNode = markupsNode;
    rep->SetMarkupsNode(markupsNode);
    scene->AddNode(markupsNode);
}

