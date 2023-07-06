#include "vtkPolyDataWideLineGS.h"

const char *vtkPolyDataWideLineGS =
"//VTK::System::Dec\n"
"\n"
"/*=========================================================================\n"
"\n"
"  Program:   Visualization Toolkit\n"
"  Module:    vtkPolyDataWideLineGS.glsl\n"
"\n"
"  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen\n"
"  All rights reserved.\n"
"  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.\n"
"\n"
"     This software is distributed WITHOUT ANY WARRANTY; without even\n"
"     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR\n"
"     PURPOSE.  See the above copyright notice for more information.\n"
"\n"
"=========================================================================*/\n"
"// Template for the polydata mappers geometry shader\n"
"\n"
"// VC position of this fragment\n"
"//VTK::PositionVC::Dec\n"
"\n"
"// primitiveID\n"
"//VTK::PrimID::Dec\n"
"\n"
"// optional color passed in from the vertex shader, vertexColor\n"
"//VTK::Color::Dec\n"
"\n"
"// optional surface normal declaration\n"
"//VTK::Normal::Dec\n"
"\n"
"// extra lighting parameters\n"
"//VTK::Light::Dec\n"
"\n"
"// Texture coordinates\n"
"//VTK::TCoord::Dec\n"
"\n"
"// picking support\n"
"//VTK::Picking::Dec\n"
"\n"
"// Depth Peeling Support\n"
"//VTK::DepthPeeling::Dec\n"
"\n"
"// clipping plane vars\n"
"//VTK::Clip::Dec\n"
"\n"
"// the output of this shader\n"
"//VTK::Output::Dec\n"
"\n"
"uniform vec2 lineWidthNVC;\n"
"\n"
"layout(lines) in;\n"
"layout(triangle_strip, max_vertices = 4) out;\n"
"\n"
"void main()\n"
"{\n"
"  // compute the line direction\n"
"  vec2 direction =\n"
"    gl_in[1].gl_Position.xy/gl_in[1].gl_Position.w -\n"
"    gl_in[0].gl_Position.xy/gl_in[0].gl_Position.w;\n"
"  float lineLength = length(direction);\n"
"  direction = direction / lineLength;\n"
"\n"
"  // compute the normal by rotating by 90 degrees the direction\n"
"  vec2 normal = vec2(-1.0*direction.y,direction.x);\n"
"\n"
"  vec2 _lineVertices[2];\n"
"  _lineVertices[0] = gl_in[0].gl_Position.xy;\n"
"  _lineVertices[1] = gl_in[1].gl_Position.xy;\n"
"\n"
"  //VTK::Normal::Start\n"
"\n"
"  // Make the line have a minimal screenspace size so it is always visible\n"
"  float screenDelta = length(lineWidthNVC) - lineLength;\n"
"  screenDelta = max(0.f, screenDelta);\n"
"  _lineVertices[0] = _lineVertices[0] - 0.25 * direction * screenDelta * gl_in[1].gl_Position.w;\n"
"  _lineVertices[1] = _lineVertices[1] + 0.25 * direction * screenDelta * gl_in[1].gl_Position.w;\n"
"\n"
"  for (int j = 0; j < 4; j++)\n"
"  {\n"
"    int i = j/2;\n"
"\n"
"    //VTK::PrimID::Impl\n"
"\n"
"    //VTK::Clip::Impl\n"
"\n"
"    //VTK::Color::Impl\n"
"\n"
"    //VTK::Normal::Impl\n"
"\n"
"    //VTK::Light::Impl\n"
"\n"
"    //VTK::TCoord::Impl\n"
"\n"
"    //VTK::DepthPeeling::Impl\n"
"\n"
"    //VTK::Picking::Impl\n"
"\n"
"    // VC position of this fragment\n"
"    //VTK::PositionVC::Impl\n"
"\n"
"    gl_Position = vec4(\n"
"      _lineVertices[i] + (lineWidthNVC * normal) * ((j + 1) % 2 - 0.5) * gl_in[i].gl_Position.w,\n"
"      gl_in[i].gl_Position.z,\n"
"      gl_in[i].gl_Position.w);\n"
"    EmitVertex();\n"
"  }\n"
"\n"
"  EndPrimitive();\n"
"}\n"
"";