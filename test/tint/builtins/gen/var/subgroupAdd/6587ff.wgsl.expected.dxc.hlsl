RWByteAddressBuffer prevent_dce : register(u0);

uint3 subgroupAdd_6587ff() {
  uint3 arg_0 = (1u).xxx;
  uint3 res = WaveActiveSum(arg_0);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store3(0u, asuint(subgroupAdd_6587ff()));
  return;
}
