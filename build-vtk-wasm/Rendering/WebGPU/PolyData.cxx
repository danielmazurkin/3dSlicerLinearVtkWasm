#include "PolyData.h"

const char *PolyData =
"//-------------------------------------------------------------------\n"
"struct SceneTransform {\n"
"  // origin and dimensions of view area.\n"
"  viewport: vec4<f32>,\n"
"  // world space -> camera space\n"
"  view: mat4x4<f32>,\n"
"  // camera space -> clip space\n"
"  projection: mat4x4<f32>,\n"
"  // inverse of the transpose of view matrix\n"
"  normal: mat3x3<f32>,\n"
"  // clip-space -> camera-space\n"
"  inverted_projection: mat4x4<f32>\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct SceneLight {\n"
"  // 0 : deferred,\n"
"  // 1 : VTK_LIGHT_TYPE_HEADLIGHT,\n"
"  // 2 : VTK_LIGHT_TYPE_CAMERA_LIGHT,\n"
"  // 3 : VTK_LIGHT_TYPE_SCENE_LIGHT\n"
"  // FIXME: this shader does not implement lights other than headlight\n"
"  light_type: u32,\n"
"  // 0 : not positional,\n"
"  // 1 : positional\n"
"  positional: u32,\n"
"  cone_angle: f32,\n"
"  exponent: f32,\n"
"  color: vec3<f32>,\n"
"  direction_vc: vec3<f32>,\n"
"  position_vc: vec3<f32>,\n"
"  attenuation: vec3<f32>\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct SceneLights {\n"
"  count: u32,\n"
"  values: array<SceneLight>\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct ActorTransform {\n"
"  // model space -> world space\n"
"  world: mat4x4<f32>,\n"
"  // inverse of transposed world matrix\n"
"  normal: mat3x3<f32>\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct ActorRenderOptions {\n"
"  // 0 : VTK_POINTS\n"
"  // 1 : VTK_WIREFRAME\n"
"  // 2 : VTK_SURFACE\n"
"  representation: u32,\n"
"  // Point size in pixels - applicable when points are visible.\n"
"  point_size: f32,\n"
"  // Line width in pixels - applicable when edges are visible.\n"
"  line_width: f32,\n"
"  // Edge visibility - applicable for representation = VTK_SURFACE\n"
"  edge_visibility: u32\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct ActorShadeOptions {\n"
"  // Material ambient color intensity\n"
"  ambient_intensity: f32,\n"
"  // Material diffuse color intensity\n"
"  diffuse_intensity: f32,\n"
"  // Material specular color intensity\n"
"  specular_intensity: f32,\n"
"  // Material specular power\n"
"  specular_power: f32,\n"
"  // Opacity level\n"
"  opacity: f32,\n"
"  // 0: Global shading - global color for all primitives.\n"
"  // 1: Smooth shading - point based colors interpolated for in-between fragments.\n"
"  // 2: Flat shading - cell based colors\n"
"  shading_type: u32,\n"
"  // What kind of directional vectors are available to use for lighting?\n"
"  directional_mask: u32,\n"
"  // Material ambient color\n"
"  ambient_color: vec3<f32>,\n"
"  // Material diffuse color\n"
"  diffuse_color: vec3<f32>,\n"
"  // Material specular color\n"
"  specular_color: vec3<f32>,\n"
"  // Edge color\n"
"  edge_color: vec3<f32>\n"
"}\n"
"\n"
"struct ActorBlock {\n"
"  transform: ActorTransform,\n"
"  render_options: ActorRenderOptions,\n"
"  shade_options: ActorShadeOptions\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct F32s {\n"
"  values: array<f32>\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct U32s {\n"
"  values: array<u32>\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct MeshAttributeArrayDescriptor {\n"
"  start: u32,\n"
"  num_tuples: u32,\n"
"  num_components: u32\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct MeshAttributeDescriptor {\n"
"  position: MeshAttributeArrayDescriptor,\n"
"  @align(16) point_color: MeshAttributeArrayDescriptor,\n"
"  @align(16) point_normal: MeshAttributeArrayDescriptor,\n"
"  @align(16) point_tangent: MeshAttributeArrayDescriptor,\n"
"  @align(16) point_uv: MeshAttributeArrayDescriptor,\n"
"  @align(16) cell_color: MeshAttributeArrayDescriptor,\n"
"  @align(16) cell_normal: MeshAttributeArrayDescriptor,\n"
"  @align(16) cell_edge_array: MeshAttributeArrayDescriptor\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct Topology {\n"
"  // the vtk cell ID for this index. used to index into a cell attribute.\n"
"  cell_id: u32,\n"
"  // the vtk point ID for this index. used to index into a point attribute.\n"
"  point_id: u32,\n"
"  // unused right now\n"
"  // cell_type: u32,\n"
"  // unused right now\n"
"  // cell_size: u32\n"
"}\n"
"\n"
"///-----------------------------------------------------------------///\n"
"// Renderer controlled descriptor set\n"
"///-----------------------------------------------------------------///\n"
"@group(0) @binding(0) var<uniform> scene_transform: SceneTransform;\n"
"@group(0) @binding(1) var<storage, read> scene_lights: SceneLights;\n"
"\n"
"///-------------------------------------------------------------------\n"
"// Everything shader needs from the vtkActor and it's vtkProperty\n"
"///-------------------------------------------------------------------\n"
"@group(1) @binding(0) var<uniform> actor: ActorBlock;\n"
"\n"
"///-----------------------------------------------------------------///\n"
"// Mesh attributes.\n"
"///-----------------------------------------------------------------///\n"
"@group(2) @binding(0) var<uniform> mesh: MeshAttributeDescriptor;\n"
"@group(2) @binding(1) var<storage, read> point_data: F32s;\n"
"@group(2) @binding(2) var<storage, read> cell_data: F32s;\n"
"\n"
"///-----------------------------------------------------------------///\n"
"// Topology\n"
"///-----------------------------------------------------------------///\n"
"@group(3) @binding(0) var<uniform> primitive_size: u32;\n"
"@group(3) @binding(1) var<storage, read> topology: array<Topology>;\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct VertexInput {\n"
"  @builtin(instance_index) instance_id: u32,\n"
"  @builtin(vertex_index) vertex_id: u32\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct VertexOutput {\n"
"  @builtin(position) position: vec4<f32>,\n"
"  @location(0) color: vec4<f32>,\n"
"  @location(1) position_vc: vec4<f32>,\n"
"  @location(2) normal_vc: vec3<f32>,\n"
"  @location(3) tangent_vc: vec3<f32>,\n"
"  @location(4) edge_dists: vec3<f32>,\n"
"  @location(5) @interpolate(flat) hide_edge: f32,\n"
"  @location(6) @interpolate(flat) cell_id: u32,\n"
"  @location(7) @interpolate(flat) primitive_size: u32\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"@vertex\n"
"fn vertexMain(vertex: VertexInput) -> VertexOutput {\n"
"    var output: VertexOutput;\n"
"  ///------------------------///\n"
"  // Pull vertex quantities\n"
"  ///------------------------///\n"
"    var vertex_id_denominator: u32 = 1u;\n"
"    if primitive_size == 1u {\n"
"        if actor.render_options.representation == 0u {\n"
"            vertex_id_denominator = 6u;\n"
"        } else if actor.render_options.representation == 1u {\n"
"            vertex_id_denominator = 1u; // invalid (should never be here, points cannot be represented as lines)\n"
"        } else if actor.render_options.representation == 2u {\n"
"            vertex_id_denominator = 6u;\n"
"        }\n"
"    } else if primitive_size == 2u {\n"
"        if actor.render_options.representation == 0u {\n"
"            vertex_id_denominator = 6u;\n"
"        }\n"
"    } else if primitive_size == 3u {\n"
"        if actor.render_options.representation == 0u {\n"
"            vertex_id_denominator = 6u;\n"
"        }\n"
"    }\n"
"    output.primitive_size = primitive_size;\n"
"    let pull_vertex_id: u32 = vertex.vertex_id / vertex_id_denominator;\n"
"  // get CellID from vertex ID -> VTK cell map.\n"
"    output.cell_id = topology[pull_vertex_id].cell_id;\n"
"  // pull the point id\n"
"    let point_id: u32 = topology[pull_vertex_id].point_id;\n"
"  // pull the position for this vertex.\n"
"    var vertex_mc: vec4<f32> = vec4<f32>(\n"
"        point_data.values[3u * point_id + 0u + mesh.position.start],\n"
"        point_data.values[3u * point_id + 1u + mesh.position.start],\n"
"        point_data.values[3u * point_id + 2u + mesh.position.start],\n"
"        1.0\n"
"    );\n"
"\n"
"  ///------------------------///\n"
"  // NDC transforms\n"
"  ///------------------------///\n"
"    output.position_vc = scene_transform.view * actor.transform.world * vertex_mc;\n"
"    output.position = scene_transform.projection * output.position_vc;\n"
"\n"
"  ///------------------------///\n"
"  // PrimitivtType:  VTK_POINT\n"
"  // OR\n"
"  // Representation: VTK_POINTS\n"
"  ///------------------------///\n"
"    if primitive_size == 1u || actor.render_options.representation == 0u {\n"
"    // the four corners of a quad, constructed from two triangles,\n"
"    // stacked along the longest side.\n"
"        let offset_multipliers: array<vec2<f32>, 6> = array<vec2<f32>, 6>(\n"
"            vec2<f32>(-1., -1.), // 0\n"
"            vec2<f32>(1., -1.),  // 1\n"
"            vec2<f32>(1., 1.),   // 2\n"
"            vec2<f32>(-1., -1.), // 0\n"
"            vec2<f32>(1., 1.),   // 2\n"
"            vec2<f32>(-1., 1.)   // 3\n"
"        );\n"
"    // into NDC space [-1, 1]\n"
"        let position_ndc_2d = output.position.xy / output.position.w;\n"
"    // an index into offset_multipliers\n"
"        let local_offset_id: u32 = vertex.vertex_id % 6u;\n"
"        output.cell_id = point_id;\n"
"    // fetch an offset\n"
"        var local_offset: vec2<f32>;\n"
"        if local_offset_id == 0u {\n"
"            local_offset = offset_multipliers[0];\n"
"        } else if local_offset_id == 1u {\n"
"            local_offset = offset_multipliers[1];\n"
"        } else if local_offset_id == 2u {\n"
"            local_offset = offset_multipliers[2];\n"
"        } else if local_offset_id == 3u {\n"
"            local_offset = offset_multipliers[3];\n"
"        } else if local_offset_id == 4u {\n"
"            local_offset = offset_multipliers[4];\n"
"        } else if local_offset_id == 5u {\n"
"            local_offset = offset_multipliers[5];\n"
"        }\n"
"        var point_size: vec2<f32> = vec2<f32>(actor.render_options.point_size, actor.render_options.point_size);\n"
"    // squish the 'point size' value given as number of pixels into NDC space.\n"
"    // This done by scaling it from viewport space -> NDC space.\n"
"        point_size = point_size * 0.5 / scene_transform.viewport.zw;\n"
"    // push the vertex in a suitable direction while we're still in the NDC space.\n"
"        var pushed_vertex: vec2<f32> = position_ndc_2d + point_size * local_offset;\n"
"    // undo perspective division, so that vertex shader output is unaware of our tricks.\n"
"        pushed_vertex.x = pushed_vertex.x * output.position.w;\n"
"        pushed_vertex.y = pushed_vertex.y * output.position.w;\n"
"    // update this shader function's output position with the pushed vertex coordinate.\n"
"        output.position = vec4<f32>(pushed_vertex.xy, output.position.zw);\n"
"        output.position_vc = scene_transform.inverted_projection * output.position;\n"
"    }\n"
"\n"
"  ///------------------------///\n"
"  // PrimitivtType:  VTK_LINE\n"
"  // AND\n"
"  // Representation: VTK_WIREFREAME OR VTK_SURFACE\n"
"  ///------------------------///\n"
"    if primitive_size == 2u && actor.render_options.representation != 0u {\n"
"        let line_width: f32 = actor.render_options.line_width;\n"
"        let line_width_step_size = line_width / ceil(line_width);\n"
"        let distance: f32 = f32(vertex.instance_id / 2u) * line_width_step_size - (0.5 * line_width);\n"
"        let offset: vec2<f32> = vec2<f32>(\n"
"            2.0 * (f32(vertex.instance_id) % 2.0) * distance / scene_transform.viewport.z,\n"
"            2.0 * (f32(vertex.instance_id + 1u) % 2.0) * distance / scene_transform.viewport.w,\n"
"        );\n"
"        let position_ndc_2d = output.position.xy / output.position.w;\n"
"        var pushed_vertex: vec2<f32> = position_ndc_2d + offset;\n"
"    // undo perspective division, so that vertex shader output is unaware of our tricks.\n"
"        pushed_vertex.x = pushed_vertex.x * output.position.w;\n"
"        pushed_vertex.y = pushed_vertex.y * output.position.w;\n"
"    // update this shader function's output position with the pushed vertex coordinate.\n"
"        output.position = vec4<f32>(pushed_vertex.xy, output.position.zw);\n"
"        output.position_vc = scene_transform.inverted_projection * output.position;\n"
"    }\n"
"\n"
"  ///------------------------///\n"
"  // PrimitivtType:  VTK_TRIANGLE\n"
"  // Representation:\n"
"  // VTK_SURFACE + Edges OR VTK_WIREFRAME\n"
"  ///------------------------///\n"
"    let wireframe: bool = (actor.render_options.representation == 1u);\n"
"    let surface_plus_edges: bool = (actor.render_options.representation == 2u && actor.render_options.edge_visibility == 1u);\n"
"    if primitive_size == 3u && (wireframe || surface_plus_edges) {\n"
"        let triangle_id: u32 = pull_vertex_id / 3u;\n"
"        let i0 = triangle_id * 3u;\n"
"        let pt0 = topology[i0].point_id;\n"
"        let pt1 = topology[i0 + 1u].point_id;\n"
"        let pt2 = topology[i0 + 2u].point_id;\n"
"        let p0_mc: vec4<f32> = vec4<f32>(\n"
"            point_data.values[3u * pt0 + 0u + mesh.position.start],\n"
"            point_data.values[3u * pt0 + 1u + mesh.position.start],\n"
"            point_data.values[3u * pt0 + 2u + mesh.position.start],\n"
"            1.0\n"
"        );\n"
"        let p1_mc: vec4<f32> = vec4<f32>(\n"
"            point_data.values[3u * pt1 + 0u + mesh.position.start],\n"
"            point_data.values[3u * pt1 + 1u + mesh.position.start],\n"
"            point_data.values[3u * pt1 + 2u + mesh.position.start],\n"
"            1.0\n"
"        );\n"
"        let p2_mc: vec4<f32> = vec4<f32>(\n"
"            point_data.values[3u * pt2 + 0u + mesh.position.start],\n"
"            point_data.values[3u * pt2 + 1u + mesh.position.start],\n"
"            point_data.values[3u * pt2 + 2u + mesh.position.start],\n"
"            1.0\n"
"        );\n"
"        let mvp = scene_transform.projection * scene_transform.view * actor.transform.world;\n"
"        let p0_3d: vec4<f32> = mvp * p0_mc;\n"
"        let p1_3d: vec4<f32> = mvp * p1_mc;\n"
"        let p2_3d: vec4<f32> = mvp * p2_mc;\n"
"        let p0: vec2<f32> = p0_3d.xy / p0_3d.w;\n"
"        let p1: vec2<f32> = p1_3d.xy / p1_3d.w;\n"
"        let p2: vec2<f32> = p2_3d.xy / p2_3d.w;\n"
"        let use_id: u32 = pull_vertex_id % 3u;\n"
"        let win_scale = scene_transform.viewport.zw * 0.5;\n"
"        let edge_value: f32 = cell_data.values[triangle_id + mesh.cell_edge_array.start];\n"
"        if use_id == 0u {\n"
"            let v10 = win_scale * (p1 - p0);\n"
"            let v20 = win_scale * (p2 - p0) ;\n"
"            let area0: f32 = abs(v10.x * v20.y - v10.y * v20.x);\n"
"            let h0: f32 = area0 / length(v10 - v20);\n"
"            output.edge_dists = vec3<f32>(h0 * p0_3d.w, 0.0, 0.0);\n"
"        } else if use_id == 1u {\n"
"            let v01 = win_scale * (p0 - p1);\n"
"            let v21 = win_scale * (p2 - p1) ;\n"
"            let area1: f32 = abs(v01.x * v21.y - v01.y * v21.x);\n"
"            let h1: f32 = area1 / length(v01 - v21);\n"
"            output.edge_dists = vec3<f32>(0.0, h1 * p1_3d.w, 0.0);\n"
"        } else if use_id == 2u {\n"
"            let v02 = win_scale * (p0 - p2);\n"
"            let v12 = win_scale * (p1 - p2) ;\n"
"            let area2: f32 = abs(v02.x * v12.y - v02.y * v12.x);\n"
"            let h2: f32 = area2 / length(v02 - v12);\n"
"            output.edge_dists = vec3<f32>(0.0, 0.0, h2 * p2_3d.w);\n"
"        }\n"
"        output.hide_edge = edge_value;\n"
"    }\n"
"\n"
"    if actor.shade_options.shading_type == 1u {\n"
"    ///------------------------///\n"
"    // Smooth shading\n"
"    // A vertex color is pulled\n"
"    // out from the `point_data`\n"
"    // The in-between fragments\n"
"    // receive a smooth interpolated\n"
"    // color.\n"
"    ///------------------------///\n"
"        output.color = vec4<f32>(\n"
"            point_data.values[4u * point_id + 0u + mesh.point_color.start],\n"
"            point_data.values[4u * point_id + 1u + mesh.point_color.start],\n"
"            point_data.values[4u * point_id + 2u + mesh.point_color.start],\n"
"            point_data.values[4u * point_id + 3u + mesh.point_color.start],\n"
"        );\n"
"    } else if actor.shade_options.shading_type == 2u {\n"
"    ///------------------------///\n"
"    // Flat shading\n"
"    // A cell color is pulled\n"
"    // out from the `cell_data`\n"
"    // The in-between fragments\n"
"    // receive same color as the vertices.\n"
"    ///------------------------///\n"
"        output.color = vec4<f32>(\n"
"            cell_data.values[4u * output.cell_id + 0u + mesh.cell_color.start],\n"
"            cell_data.values[4u * output.cell_id + 1u + mesh.cell_color.start],\n"
"            cell_data.values[4u * output.cell_id + 2u + mesh.cell_color.start],\n"
"            cell_data.values[4u * output.cell_id + 3u + mesh.cell_color.start]\n"
"        );\n"
"    }\n"
"\n"
"  ///------------------------///\n"
"  // Directionals\n"
"  // Basically infers what kind of\n"
"  // directional vectors are available\n"
"  // to light up the geometry.\n"
"  // FIXME: needs better definition.\n"
"  // 1 << 0 No normals\n"
"  // 1 << 1 point normals\n"
"  // 1 << 2 point tangents\n"
"  // 1 << 3 cell normals\n"
"  ///------------------------///\n"
"    if (actor.shade_options.directional_mask & (1u << 3u)) == (1u << 3u) {\n"
"    // pull normal of this vertex from cell normals\n"
"        let normal_mc = vec3<f32>(\n"
"            cell_data.values[output.cell_id + mesh.cell_normal.start],\n"
"            cell_data.values[output.cell_id + mesh.cell_normal.start],\n"
"            cell_data.values[output.cell_id + mesh.cell_normal.start]\n"
"        );\n"
"        output.normal_vc = scene_transform.normal * actor.transform.normal * normal_mc;\n"
"    } else if (actor.shade_options.directional_mask & (1u << 2u)) == (1u << 2u) {\n"
"    // pull tangent of this vertex from point tangents\n"
"        let tangentMC = vec3<f32>(\n"
"            point_data.values[3u * point_id + 0u + mesh.point_tangent.start],\n"
"            point_data.values[3u * point_id + 1u + mesh.point_tangent.start],\n"
"            point_data.values[3u * point_id + 2u + mesh.point_tangent.start]\n"
"        );\n"
"        output.tangent_vc = scene_transform.normal * actor.transform.normal * tangentMC;\n"
"    } else if (actor.shade_options.directional_mask & (1u << 1u)) == (1u << 1u) {\n"
"    // this if is after cell normals, so that when both are available, point normals are used.\n"
"    // pull normal of this vertex from point normals\n"
"        let normal_mc = vec3<f32>(\n"
"            point_data.values[3u * point_id + 0u + mesh.point_normal.start],\n"
"            point_data.values[3u * point_id + 1u + mesh.point_normal.start],\n"
"            point_data.values[3u * point_id + 2u + mesh.point_normal.start]\n"
"        );\n"
"        output.normal_vc = scene_transform.normal * actor.transform.normal * normal_mc;\n"
"    } else if (actor.shade_options.directional_mask & (1u << 0u)) == (1u << 0u) {\n"
"    // let's calculate normal for this primitive.\n"
"        if actor.render_options.representation == 0u || primitive_size == 1u {\n"
"            output.normal_vc = vec3<f32>(0.0, 0.0, 1.0);\n"
"        } else if primitive_size == 2u {\n"
"            let normal_mc = vec3<f32>(0.0, 0.0, 1.0);\n"
"            output.normal_vc = scene_transform.normal * actor.transform.normal * normal_mc;\n"
"        } else if primitive_size == 3u {\n"
"            let next_id: u32 = (pull_vertex_id + 1u) % 3u;\n"
"            let prev_id: u32 = (pull_vertex_id + 2u) % 3u;\n"
"            let triangle_id: u32 = pull_vertex_id / 3u;\n"
"            let next_pt_id = topology[triangle_id * 3u + next_id].point_id;\n"
"            let prev_pt_id = topology[triangle_id * 3u + prev_id].point_id;\n"
"            let next_mc: vec3<f32> = vec3<f32>(\n"
"                point_data.values[3u * next_pt_id + 0u + mesh.position.start],\n"
"                point_data.values[3u * next_pt_id + 1u + mesh.position.start],\n"
"                point_data.values[3u * next_pt_id + 2u + mesh.position.start]\n"
"            );\n"
"            let prev_mc: vec3<f32> = vec3<f32>(\n"
"                point_data.values[3u * prev_pt_id + 0u + mesh.position.start],\n"
"                point_data.values[3u * prev_pt_id + 1u + mesh.position.start],\n"
"                point_data.values[3u * prev_pt_id + 2u + mesh.position.start]\n"
"            );\n"
"            let ab: vec3<f32> = next_mc.xyz - vertex_mc.xyz;\n"
"            let ac: vec3<f32> = prev_mc.xyz - vertex_mc.xyz;\n"
"            let normal_mc = cross(ab, ac);\n"
"            output.normal_vc = scene_transform.normal * actor.transform.normal * normal_mc;\n"
"        }\n"
"    }\n"
"    return output;\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct FragmentInput {\n"
"  @builtin(position) frag_coord: vec4<f32>,\n"
"  @builtin(front_facing) is_front_facing: bool,\n"
"  @location(0) color: vec4<f32>,\n"
"  @location(1) position_vc: vec4<f32>, // in view coordinate system.\n"
"  @location(2) normal_vc: vec3<f32>, // in view coordinate system.\n"
"  @location(3) tangent_vc: vec3<f32>, // in view coordinate system.\n"
"  @location(4) edge_dists: vec3<f32>,\n"
"  @location(5) @interpolate(flat) hide_edge: f32,\n"
"  @location(6) @interpolate(flat) cell_id: u32,\n"
"  @location(7) @interpolate(flat) primitive_size: u32\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"struct FragmentOutput {\n"
"  @location(0) color: vec4<f32>,\n"
"  @location(1) cell_id: u32\n"
"  // As per WebGPU spec, it doesn't matter if fragment shader writes\n"
"  // into non existent render targets.\n"
"  // @location(2) position_vc: vec4<f32>, // in view coordinate system.\n"
"  // @location(3) normal_vc: vec3<f32>, // in view coordinate system.\n"
"  // @location(4) tangent_vc: vec3<f32>, // in view coordinate system.\n"
"  // @location(5) specular: vec4<f32>, // specular_color.rgb, specular_power\n"
"\n"
"}\n"
"\n"
"//-------------------------------------------------------------------\n"
"@fragment\n"
"fn fragmentMain(fragment: FragmentInput) -> FragmentOutput {\n"
"    var output: FragmentOutput;\n"
"    var ambient_color: vec3<f32> = vec3<f32>(0., 0., 0.);\n"
"    var diffuse_color: vec3<f32> = vec3<f32>(0., 0., 0.);\n"
"    var specular_color: vec3<f32> = vec3<f32>(0., 0., 0.);\n"
"    var normal_vc: vec3<f32> = normalize(fragment.normal_vc);\n"
"\n"
"    var opacity: f32;\n"
"\n"
"  ///------------------------///\n"
"  // Colors are acquired\n"
"  // either from a global per-actor color,\n"
"  // or from per-vertex colors,\n"
"  // or from cell colors.\n"
"  ///------------------------///\n"
"    if actor.shade_options.shading_type == 0u {\n"
"        ambient_color = actor.shade_options.ambient_color;\n"
"        diffuse_color = actor.shade_options.diffuse_color;\n"
"        opacity = actor.shade_options.opacity;\n"
"    } else {\n"
"        ambient_color = fragment.color.rgb;\n"
"        diffuse_color = fragment.color.rgb;\n"
"        opacity = fragment.color.a;\n"
"    }\n"
"\n"
"  ///------------------------///\n"
"  // PrimitivtType:  VTK_TRIANGLE\n"
"  // Representation:\n"
"  // VTK_SURFACE + Edges OR VTK_WIREFRAME\n"
"  ///------------------------///\n"
"    let wireframe: bool = (actor.render_options.representation == 1u);\n"
"    let surface_plus_edges: bool = (actor.render_options.representation == 2u && actor.render_options.edge_visibility == 1u);\n"
"    let linewidth: f32 = actor.render_options.line_width;\n"
"    if fragment.primitive_size == 3u && (wireframe || surface_plus_edges) {\n"
"        // Undo perspective correction.\n"
"        let dist_vec = fragment.edge_dists.xyz * fragment.frag_coord.w;\n"
"        var d: f32 = 0.0;\n"
"        // Compute the shortest distance to the edge\n"
"        if fragment.hide_edge == 2.0 {\n"
"            d = min(dist_vec[0], dist_vec[2]);\n"
"        } else if fragment.hide_edge == 1.0 {\n"
"            d = dist_vec[0];\n"
"        } else if fragment.hide_edge == 0.0 {\n"
"            d = min(dist_vec[0], dist_vec[1]);\n"
"        } else { // no edge is hidden\n"
"            d = min(dist_vec[0], min(dist_vec[1], dist_vec[2]));\n"
"        }\n"
"        if wireframe {\n"
"            if d > linewidth { // NOT 0.5*linewidth as it draws very thin lines.\n"
"              discard;\n"
"            } else {\n"
"                // when wireframe is rendered, we do not color the wire with edge color.\n"
"                // let I: f32 = exp2(-2.0 * d * d);\n"
"                // diffuse_color = mix(vec3(0.0, 0.0, 0.0), actor.shade_options.edge_color, I);\n"
"                // ambient_color = mix(vec3(0.0, 0.0, 0.0), actor.shade_options.edge_color, I);\n"
"            }\n"
"        } else {\n"
"            let I: f32 = exp2(-2.0 * d * d / (linewidth * linewidth));\n"
"            diffuse_color = mix(diffuse_color, actor.shade_options.edge_color, I);\n"
"            ambient_color = mix(ambient_color, actor.shade_options.edge_color, I);\n"
"        }\n"
"    }\n"
"\n"
"  ///------------------------///\n"
"  // Normals\n"
"  ///------------------------///\n"
"    if !fragment.is_front_facing {\n"
"        normal_vc = -fragment.normal_vc;\n"
"        normal_vc = normalize(normal_vc);\n"
"    } else if normal_vc.z < 0.0 {\n"
"        normal_vc.z = -normal_vc.z;\n"
"    }\n"
"\n"
"  ///------------------------///\n"
"  // Lights\n"
"  ///------------------------///\n"
"    if scene_lights.count == 0u {\n"
"    // using G-buffer\n"
"        output.color = vec4<f32>(\n"
"            actor.shade_options.ambient_intensity * ambient_color + actor.shade_options.diffuse_intensity * diffuse_color,\n"
"            opacity\n"
"        );\n"
"    } else if scene_lights.count == 1u {\n"
"        let light: SceneLight = scene_lights.values[0];\n"
"        if light.positional == 1u {\n"
"      // TODO: positional\n"
"            output.color = vec4<f32>(\n"
"                actor.shade_options.ambient_intensity * ambient_color + actor.shade_options.diffuse_intensity * diffuse_color,\n"
"                opacity\n"
"            );\n"
"        } else {\n"
"      // headlight\n"
"            let df: f32 = max(0.000001f, normal_vc.z);\n"
"            let sf: f32 = pow(df, actor.shade_options.specular_power);\n"
"            diffuse_color = df * diffuse_color * light.color;\n"
"            specular_color = sf * actor.shade_options.specular_intensity * actor.shade_options.specular_color * light.color;\n"
"            output.color = vec4<f32>(\n"
"                actor.shade_options.ambient_intensity * ambient_color + actor.shade_options.diffuse_intensity * diffuse_color + specular_color,\n"
"                opacity\n"
"            );\n"
"        }\n"
"    } else {\n"
"  // TODO: light kit\n"
"        output.color = vec4<f32>(\n"
"            actor.shade_options.ambient_intensity * ambient_color + actor.shade_options.diffuse_intensity * diffuse_color,\n"
"            opacity\n"
"        );\n"
"    }\n"
"    output.cell_id = fragment.cell_id;\n"
"    return output;\n"
"}\n"
"";
