SKIP: FAILED

#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, r32i) uniform highp iimage2D arg_0;
void textureStore_6c4a70() {
  imageStore(arg_0, uvec2(1u), ivec4(1));
}
void main() {
  textureStore_6c4a70();
}
error: Error parsing GLSL shader:
ERROR: 0:7: 'imageStore' : no matching overloaded function found 
ERROR: 0:7: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es

layout(binding = 0, r32i) uniform highp iimage2D arg_0;
void textureStore_6c4a70() {
  imageStore(arg_0, uvec2(1u), ivec4(1));
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  textureStore_6c4a70();
}
error: Error parsing GLSL shader:
ERROR: 0:5: 'imageStore' : no matching overloaded function found 
ERROR: 0:5: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
