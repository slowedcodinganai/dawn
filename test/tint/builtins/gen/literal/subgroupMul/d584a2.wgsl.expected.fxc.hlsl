SKIP: FAILED

RWByteAddressBuffer prevent_dce : register(u0);

int2 subgroupMul_d584a2() {
  int2 res = WaveActiveProduct((1).xx);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store2(0u, asuint(subgroupMul_d584a2()));
  return;
}
