
RWByteAddressBuffer prevent_dce : register(u0);
int4 subgroupAdd_28db2c() {
  int4 res = WaveActiveSum((1).xxxx);
  return res;
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, asuint(subgroupAdd_28db2c()));
}

