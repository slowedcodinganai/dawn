SKIP: INVALID

#version 460
precision highp float;
precision highp int;

layout(binding = 0, r8) uniform highp image2DArray arg_0;
void textureStore_6f0c92() {
  uvec2 arg_1 = uvec2(1u);
  int arg_2 = 1;
  vec4 arg_3 = vec4(1.0f);
  uvec2 v = arg_1;
  vec4 v_1 = arg_3;
  imageStore(arg_0, uvec3(v, uint(arg_2)), v_1);
}
void main() {
  textureStore_6f0c92();
}
error: Error parsing GLSL shader:
ERROR: 0:12: 'imageStore' : no matching overloaded function found 
ERROR: 0:12: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.



#version 460

layout(binding = 0, r8) uniform highp image2DArray arg_0;
void textureStore_6f0c92() {
  uvec2 arg_1 = uvec2(1u);
  int arg_2 = 1;
  vec4 arg_3 = vec4(1.0f);
  uvec2 v = arg_1;
  vec4 v_1 = arg_3;
  imageStore(arg_0, uvec3(v, uint(arg_2)), v_1);
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  textureStore_6f0c92();
}
error: Error parsing GLSL shader:
ERROR: 0:10: 'imageStore' : no matching overloaded function found 
ERROR: 0:10: '' : compilation terminated 
ERROR: 2 compilation errors.  No code generated.




tint executable returned error: exit status 1
