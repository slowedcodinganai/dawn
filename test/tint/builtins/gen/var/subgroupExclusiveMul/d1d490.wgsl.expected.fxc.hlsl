SKIP: FAILED

RWByteAddressBuffer prevent_dce : register(u0);

uint2 subgroupExclusiveMul_d1d490() {
  uint2 arg_0 = (1u).xx;
  uint2 res = WavePrefixProduct(arg_0);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store2(0u, asuint(subgroupExclusiveMul_d1d490()));
  return;
}
