@group(1) @binding(0) var arg_0 : texture_storage_2d_array<r32uint, write>;

fn textureNumLayers_87faad() {
  var res : u32 = textureNumLayers(arg_0);
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureNumLayers_87faad();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureNumLayers_87faad();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureNumLayers_87faad();
}
