SKIP: INVALID


RWByteAddressBuffer prevent_dce : register(u0);
int4 subgroupInclusiveMul_517979() {
  int4 arg_0 = (int(1)).xxxx;
  int4 v = arg_0;
  int4 res = (WavePrefixProduct(v) * v);
  return res;
}

void fragment_main() {
  prevent_dce.Store4(0u, asuint(subgroupInclusiveMul_517979()));
}

[numthreads(1, 1, 1)]
void compute_main() {
  prevent_dce.Store4(0u, asuint(subgroupInclusiveMul_517979()));
}

FXC validation failure:
<scrubbed_path>(6,15-34): error X3004: undeclared identifier 'WavePrefixProduct'


tint executable returned error: exit status 1
