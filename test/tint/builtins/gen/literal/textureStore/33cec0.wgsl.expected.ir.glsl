SKIP: FAILED

#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, rgba16ui) uniform highp writeonly uimage2DArray arg_0;
void textureStore_33cec0() {
  imageStore(arg_0, uvec3(uvec2(1u), uint(1)), uvec4(1u));
}
void main() {
  textureStore_33cec0();
}
error: Error parsing GLSL shader:
ERROR: 0:7: 'imageStore' : no matching overloaded function found 
ERROR: 0:7: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es

layout(binding = 0, rgba16ui) uniform highp writeonly uimage2DArray arg_0;
void textureStore_33cec0() {
  imageStore(arg_0, uvec3(uvec2(1u), uint(1)), uvec4(1u));
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  textureStore_33cec0();
}
error: Error parsing GLSL shader:
ERROR: 0:5: 'imageStore' : no matching overloaded function found 
ERROR: 0:5: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
