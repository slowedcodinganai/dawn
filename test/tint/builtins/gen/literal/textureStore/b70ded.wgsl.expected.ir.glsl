SKIP: FAILED

#version 310 es
precision highp float;
precision highp int;

layout(binding = 0, rgba16ui) uniform highp writeonly uimage1D arg_0;
void textureStore_b70ded() {
  imageStore(arg_0, 1u, uvec4(1u));
}
void main() {
  textureStore_b70ded();
}
error: Error parsing GLSL shader:
ERROR: 0:5: 'uimage1D' : Reserved word. 
WARNING: 0:5: 'layout' : useless application of layout qualifier 
ERROR: 0:5: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 310 es

layout(binding = 0, rgba16ui) uniform highp writeonly uimage1D arg_0;
void textureStore_b70ded() {
  imageStore(arg_0, 1u, uvec4(1u));
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  textureStore_b70ded();
}
error: Error parsing GLSL shader:
ERROR: 0:3: 'uimage1D' : Reserved word. 
WARNING: 0:3: 'layout' : useless application of layout qualifier 
ERROR: 0:3: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
