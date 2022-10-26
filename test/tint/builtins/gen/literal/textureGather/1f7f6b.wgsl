// Copyright 2022 The Tint Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

////////////////////////////////////////////////////////////////////////////////
// File generated by tools/src/cmd/gen
// using the template:
//   test/tint/builtins/gen/gen.wgsl.tmpl
//
// Do not modify this file directly
////////////////////////////////////////////////////////////////////////////////

@group(1) @binding(0) var arg_0: texture_depth_2d;
@group(1) @binding(1) var arg_1: sampler;

// fn textureGather(texture: texture_depth_2d, sampler: sampler, coords: vec2<f32>, @const offset: vec2<i32>) -> vec4<f32>
fn textureGather_1f7f6b() {
  var res: vec4<f32> = textureGather(arg_0, arg_1, vec2<f32>(), vec2<i32>());
}

@vertex
fn vertex_main() -> @builtin(position) vec4<f32> {
  textureGather_1f7f6b();
  return vec4<f32>();
}

@fragment
fn fragment_main() {
  textureGather_1f7f6b();
}

@compute @workgroup_size(1)
fn compute_main() {
  textureGather_1f7f6b();
}
