#version 310 es

layout(rgba16f) uniform highp writeonly image3D arg_0;
void textureDimensions_f3a2ac() {
  uvec3 res = uvec3(imageSize(arg_0));
}

vec4 vertex_main() {
  textureDimensions_f3a2ac();
  return vec4(0.0f);
}

void main() {
  gl_PointSize = 1.0;
  vec4 inner_result = vertex_main();
  gl_Position = inner_result;
  gl_Position.y = -(gl_Position.y);
  gl_Position.z = ((2.0f * gl_Position.z) - gl_Position.w);
  return;
}
#version 310 es
precision mediump float;

layout(rgba16f) uniform highp writeonly image3D arg_0;
void textureDimensions_f3a2ac() {
  uvec3 res = uvec3(imageSize(arg_0));
}

void fragment_main() {
  textureDimensions_f3a2ac();
}

void main() {
  fragment_main();
  return;
}
#version 310 es

layout(rgba16f) uniform highp writeonly image3D arg_0;
void textureDimensions_f3a2ac() {
  uvec3 res = uvec3(imageSize(arg_0));
}

void compute_main() {
  textureDimensions_f3a2ac();
}

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  compute_main();
  return;
}
