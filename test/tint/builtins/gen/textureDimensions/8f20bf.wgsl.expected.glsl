SKIP: FAILED

#version 310 es

uniform highp samplerCubeArray arg_0_1;
void textureDimensions_8f20bf() {
  ivec2 res = textureSize(arg_0_1, 0).xy;
}

vec4 vertex_main() {
  textureDimensions_8f20bf();
  return vec4(0.0f, 0.0f, 0.0f, 0.0f);
}

void main() {
  vec4 inner_result = vertex_main();
  gl_Position = inner_result;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  return;
}
Error parsing GLSL shader:
ERROR: 0:3: 'samplerCubeArray' : Reserved word. 
ERROR: 0:3: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es
precision mediump float;

uniform highp samplerCubeArray arg_0_1;
void textureDimensions_8f20bf() {
  ivec2 res = textureSize(arg_0_1, 0).xy;
}

void fragment_main() {
  textureDimensions_8f20bf();
}

void main() {
  fragment_main();
  return;
}
Error parsing GLSL shader:
ERROR: 0:4: 'samplerCubeArray' : Reserved word. 
ERROR: 0:4: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es

uniform highp samplerCubeArray arg_0_1;
void textureDimensions_8f20bf() {
  ivec2 res = textureSize(arg_0_1, 0).xy;
}

void compute_main() {
  textureDimensions_8f20bf();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
Error parsing GLSL shader:
ERROR: 0:3: 'samplerCubeArray' : Reserved word. 
ERROR: 0:3: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



