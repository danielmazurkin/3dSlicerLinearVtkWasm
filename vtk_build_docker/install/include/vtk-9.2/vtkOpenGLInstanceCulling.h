/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkOpenGLInstanceCulling.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/

/**
 * @class   vtkOpenGLInstanceCulling
 * @brief   Frustum culling and LOD management.
 *
 * This class is used to cull instances based on their transformation matrix.
 * It was designed to improve performances when there is large number of instances
 * in vtkOpenGLGlyph3DMapper.
 *
 * Each instance is tested on the GPU through vertex shader to know if it is inside
 * of the frustum view. If it is, the distance to the camera is computed to select
 * and send to the geometry shader the corresponding LOD index.
 * The geometry shader register the instance to the corresponding vertex stream and
 * therefore the corresponding transform feedback buffer in video memory.
 *
 * @warning   GL_ARB_gpu_shader5 extension is required.
 *
 * @code{.cpp}
 *
 * vtkNew<vtkOpenGLInstanceCulling> culling;
 * vtkIdType nbInstances = 1000000;
 *
 * // buffer of size 16*nbInstances containing transform matrices.
 * vtkOpenGLBufferObject* bufferMatrix = ...;
 *
 * // buffer of size 4*nbInstances containing color buffer to pass through.
 * vtkOpenGLBufferObject* bufferColor = ...;
 *
 * // Initialize LODs
 * culling->InitLOD(polydata); // LOD0 : full geometry
 * culling->AddLOD(2.0, 0.5); // LOD1 : after 2.0, 50% triangles
 * culling->AddLOD(5.0, 0.99); // LOD2 : after 5.0, 1% triangles
 *
 * // Build shader and binds
 * culling->BuildCullingShaders(ren, actor, nbInstances);
 * culling->RunCullingShaders(nbInstances, bufferMatrix, bufferColor);
 *
 * // Get number of instances in LOD 0
 * int nbInstInLOD0 = culling->GetLOD(0).NumberOfInstances;
 *
 * // Get VBO and IBO of LOD 1
 * vtkOpenGLBufferObject* VBO1 = culling->GetLOD(1).PositionVBO;
 * vtkOpenGLBufferObject* IBO1 = culling->GetLOD(1).IBO;
 *
 * // Get instances buffer of LOD 2
 * // buffer is interleaved [ transformMatrix0 color0 transformMatrix1 color1 ... ]
 * vtkOpenGLBufferObject* buffer2 = culling->GetLODBuffer(2);
 *
 * @endcode
 */

#ifndef vtkOpenGLInstanceCulling_h
#define vtkOpenGLInstanceCulling_h

#include "vtkObject.h"
#include "vtkOpenGLHelper.h"           // For vtkOpenGLHelper
#include "vtkRenderingOpenGL2Module.h" // For export macro
#include "vtkSmartPointer.h"           // For smart pointer

#include <vector> // for std::vector

VTK_ABI_NAMESPACE_BEGIN
class vtkOpenGLIndexBufferObject;
class vtkOpenGLBufferObject;
class vtkPolyData;
class vtkOpenGLShaderCache;

class VTKRENDERINGOPENGL2_EXPORT vtkOpenGLInstanceCulling : public vtkObject
{
public:
  static vtkOpenGLInstanceCulling* New();
  vtkTypeMacro(vtkOpenGLInstanceCulling, vtkObject);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  struct InstanceLOD
  {
    float Distance;
    unsigned int Query;
    vtkOpenGLIndexBufferObject* IBO;
    vtkOpenGLBufferObject* PositionVBO;
    vtkOpenGLBufferObject* NormalVBO;
    int NumberOfInstances;

    // used for sorting
    bool operator<(const InstanceLOD& other) const { return this->Distance < other.Distance; }
  };

  /**
   * Initialize LOD with a polydata
   */
  void InitLOD(vtkPolyData* pd);

  /**
   * Add a level of detail.
   * distance is the distance after which LOD is enabled
   * targetReduction is the reduction factor applied on polydata (vtkDecimatePro is used)
   *
   * @sa vtkDecimatePro::SetTargetReduction
   */
  void AddLOD(float distance, float targetReduction);

  /**
   * Build culling shader program (if not created yet) and binds it.
   */
  void BuildCullingShaders(vtkOpenGLShaderCache* cache, vtkIdType numInstances, bool withNormals);

  /**
   * Get helper structure.
   */
  vtkOpenGLHelper& GetHelper();

  /**
   * Get LOD structure.
   */
  InstanceLOD& GetLOD(vtkIdType index);

  /**
   * Get number of LOD currently declared.
   */
  vtkIdType GetNumberOfLOD();

  /**
   * Get the transform feedback buffer generated by the culling program.
   */
  vtkOpenGLBufferObject* GetLODBuffer(vtkIdType index);

  /**
   * Run the culling program and generate LOD buffers.
   */
  void RunCullingShaders(vtkIdType numInstances, vtkOpenGLBufferObject* matrixBuffer,
    vtkOpenGLBufferObject* colorBuffer, vtkOpenGLBufferObject* normalBuffer);

  ///@{
  /**
   * Overload color with unique color per LOD.
   */
  vtkSetMacro(ColorLOD, bool);
  vtkGetMacro(ColorLOD, bool);
  ///@}

protected:
  vtkOpenGLInstanceCulling() = default;
  ~vtkOpenGLInstanceCulling() override;

  void DeleteLODs();
  void UploadCurrentState(InstanceLOD& lod, vtkPolyData* pd);

private:
  vtkOpenGLInstanceCulling(const vtkOpenGLInstanceCulling&) = delete;
  void operator=(const vtkOpenGLInstanceCulling&) = delete;

  vtkOpenGLHelper CullingHelper;
  std::vector<InstanceLOD> LODList;
  vtkSmartPointer<vtkPolyData> PolyData;
  bool ColorLOD = false;
};

VTK_ABI_NAMESPACE_END
#endif // vtkOpenGLInstanceCulling_h
