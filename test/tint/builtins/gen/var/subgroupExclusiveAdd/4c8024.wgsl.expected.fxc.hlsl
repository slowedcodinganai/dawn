SKIP: FAILED

RWByteAddressBuffer prevent_dce : register(u0);

float2 subgroupExclusiveAdd_4c8024() {
  float2 arg_0 = (1.0f).xx;
  float2 res = WavePrefixSum(arg_0);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store2(0u, asuint(subgroupExclusiveAdd_4c8024()));
  return;
}
