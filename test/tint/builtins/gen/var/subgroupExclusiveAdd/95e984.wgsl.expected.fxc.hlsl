SKIP: FAILED

RWByteAddressBuffer prevent_dce : register(u0);

vector<float16_t, 4> subgroupExclusiveAdd_95e984() {
  vector<float16_t, 4> arg_0 = (float16_t(1.0h)).xxxx;
  vector<float16_t, 4> res = WavePrefixSum(arg_0);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store<vector<float16_t, 4> >(0u, subgroupExclusiveAdd_95e984());
  return;
}
