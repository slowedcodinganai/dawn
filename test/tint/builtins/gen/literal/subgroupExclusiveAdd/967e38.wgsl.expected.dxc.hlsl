RWByteAddressBuffer prevent_dce : register(u0);

float subgroupExclusiveAdd_967e38() {
  float res = WavePrefixSum(1.0f);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store(0u, asuint(subgroupExclusiveAdd_967e38()));
  return;
}
