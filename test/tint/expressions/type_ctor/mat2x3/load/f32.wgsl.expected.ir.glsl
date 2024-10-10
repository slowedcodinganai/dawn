#version 310 es

layout(binding = 0, std430)
buffer tint_symbol_block_1_ssbo {
  mat2x3 inner;
} v;
void tint_store_and_preserve_padding(mat2x3 value_param) {
  v.inner[0u] = value_param[0u];
  v.inner[1u] = value_param[1u];
}
layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;
void main() {
  mat2x3 m = mat2x3(vec3(0.0f), vec3(0.0f));
  tint_store_and_preserve_padding(mat2x3(m));
}
