SKIP: FAILED

#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  ivec4 tint_symbol;
} v;
uniform highp isampler1D arg_0;
ivec4 textureLoad_62d1de() {
  int arg_1 = 1;
  uint arg_2 = 1u;
  uint v_1 = arg_2;
  int v_2 = int(arg_1);
  ivec4 res = texelFetch(arg_0, v_2, int(v_1));
  return res;
}
void main() {
  v.tint_symbol = textureLoad_62d1de();
}
error: Error parsing GLSL shader:
ERROR: 0:9: 'isampler1D' : Reserved word. 
ERROR: 0:9: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es

layout(binding = 0, std430)
buffer tint_symbol_1_1_ssbo {
  ivec4 tint_symbol;
} v;
uniform highp isampler1D arg_0;
ivec4 textureLoad_62d1de() {
  int arg_1 = 1;
  uint arg_2 = 1u;
  uint v_1 = arg_2;
  int v_2 = int(arg_1);
  ivec4 res = texelFetch(arg_0, v_2, int(v_1));
  return res;
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  v.tint_symbol = textureLoad_62d1de();
}
error: Error parsing GLSL shader:
ERROR: 0:7: 'isampler1D' : Reserved word. 
ERROR: 0:7: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es


struct VertexOutput {
  vec4 pos;
  ivec4 prevent_dce;
};

uniform highp isampler1D arg_0;
layout(location = 0) flat out ivec4 vertex_main_loc0_Output;
ivec4 textureLoad_62d1de() {
  int arg_1 = 1;
  uint arg_2 = 1u;
  uint v = arg_2;
  int v_1 = int(arg_1);
  ivec4 res = texelFetch(arg_0, v_1, int(v));
  return res;
}
VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = VertexOutput(vec4(0.0f), ivec4(0));
  tint_symbol.pos = vec4(0.0f);
  tint_symbol.prevent_dce = textureLoad_62d1de();
  return tint_symbol;
}
void main() {
  VertexOutput v_2 = vertex_main_inner();
  gl_Position = v_2.pos;
  gl_Position[1u] = -(gl_Position.y);
  gl_Position[2u] = ((2.0f * gl_Position.z) - gl_Position.w);
  vertex_main_loc0_Output = v_2.prevent_dce;
  gl_PointSize = 1.0f;
}
error: Error parsing GLSL shader:
ERROR: 0:9: 'isampler1D' : Reserved word. 
ERROR: 0:9: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
