@group(1) @binding(0) var arg_0 : texture_2d_array<f32>;

fn textureNumLevels_46dbd8() {
  var res : u32 = textureNumLevels(arg_0);
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureNumLevels_46dbd8();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureNumLevels_46dbd8();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureNumLevels_46dbd8();
}
