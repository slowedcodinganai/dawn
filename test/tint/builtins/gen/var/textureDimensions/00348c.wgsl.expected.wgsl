@group(1) @binding(0) var arg_0 : texture_multisampled_2d<i32>;

fn textureDimensions_00348c() {
  var res : vec2<u32> = textureDimensions(arg_0);
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureDimensions_00348c();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureDimensions_00348c();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureDimensions_00348c();
}
