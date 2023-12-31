#include "vtkTextureObjectVS.h"

VTK_ABI_NAMESPACE_BEGIN

const char *vtkTextureObjectVS =
"//VTK::System::Dec\n"
"\n"
"/*=========================================================================\n"
"\n"
"  Program:   Visualization Toolkit\n"
"  Module:    vtktextureObjectVS.glsl\n"
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
"\n"
"in vec4 vertexMC;\n"
"in vec2 tcoordMC;\n"
"out vec2 tcoordVC;\n"
"\n"
"void main()\n"
"{\n"
"  tcoordVC = tcoordMC;\n"
"  gl_Position = vertexMC;\n"
"}\n"
"";

VTK_ABI_NAMESPACE_END
