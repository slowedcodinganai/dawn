SKIP: FAILED

#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, r32f) uniform highp image3D arg_0;
void textureStore_5ec6b2() {
  imageStore(arg_0, uvec3(1u), vec4(1.0f));
}
void main() {
  textureStore_5ec6b2();
}
error: Error parsing GLSL shader:
ERROR: 0:7: 'imageStore' : no matching overloaded function found 
ERROR: 0:7: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es

layout(binding = 0, r32f) uniform highp image3D arg_0;
void textureStore_5ec6b2() {
  imageStore(arg_0, uvec3(1u), vec4(1.0f));
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  textureStore_5ec6b2();
}
error: Error parsing GLSL shader:
ERROR: 0:5: 'imageStore' : no matching overloaded function found 
ERROR: 0:5: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
