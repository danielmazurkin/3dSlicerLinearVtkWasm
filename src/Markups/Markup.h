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

#ifndef CONE_MARKUP_H
#define CONE_MARKUP_H


struct DataForTransfer {
    vtkSmartPointer<vtkMRMLMarkupsNode> markupsNode;
    vtkSmartPointer<vtkSlicerPointsRepresentation3D> rep;
    vtkSmartPointer<vtkMRMLAbstractViewNode> viewNode;
    vtkSmartPointer<vtkMRMLMarkupsDisplayNode> displayNode;
};

class Markups {
private:
    vtkSmartPointer <vtkMRMLMarkupsNode> markupsNode;
    vtkSmartPointer<vtkPointPicker> picker;
    vtkSmartPointer<vtkSlicerPointsWidget> widgetPoint;
    vtkSmartPointer<vtkCallbackCommand> clickCallback;
    vtkSmartPointer<vtkSlicerPointsRepresentation3D> rep;
    vtkSmartPointer<vtkMRMLMarkupsDisplayNode> displayNode;
public:

    static DataForTransfer dataForTransfer;

    Markups(vtkMRMLScene *scene, vtkRenderer *renderer, vtkRenderWindow *renderWindow, vtkRenderWindowInteractor *interactor);
    static void MousePressEvent(vtkObject* obj, long unsigned int eventId, void* clientData, void* callData);

    void InitiliazeInteractiveWithMarkups(vtkRenderer *renderer, vtkRenderWindowInteractor *interactor);
    void InitiliazeMarkupsData(vtkMRMLScene *scene);
};

#endif //CONE_MARKUP_H
