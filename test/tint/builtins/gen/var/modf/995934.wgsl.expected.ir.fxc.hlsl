SKIP: INVALID

struct modf_result_vec4_f16 {
  vector<float16_t, 4> fract;
  vector<float16_t, 4> whole;
};

struct VertexOutput {
  float4 pos;
};

struct vertex_main_outputs {
  float4 VertexOutput_pos : SV_Position;
};


void modf_995934() {
  vector<float16_t, 4> arg_0 = (float16_t(-1.5h)).xxxx;
  vector<float16_t, 4> v = (float16_t(0.0h)).xxxx;
  vector<float16_t, 4> v_1 = modf(arg_0, v);
  modf_result_vec4_f16 res = {v_1, v};
}

void fragment_main() {
  modf_995934();
}

[numthreads(1, 1, 1)]
void compute_main() {
  modf_995934();
}

VertexOutput vertex_main_inner() {
  VertexOutput tint_symbol = (VertexOutput)0;
  tint_symbol.pos = (0.0f).xxxx;
  modf_995934();
  VertexOutput v_2 = tint_symbol;
  return v_2;
}

vertex_main_outputs vertex_main() {
  VertexOutput v_3 = vertex_main_inner();
  vertex_main_outputs v_4 = {v_3.pos};
  return v_4;
}

FXC validation failure:
<scrubbed_path>(2,10-18): error X3000: syntax error: unexpected token 'float16_t'


tint executable returned error: exit status 1
