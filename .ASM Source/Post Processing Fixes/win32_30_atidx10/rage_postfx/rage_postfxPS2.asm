//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D HDRSampler;
//   float4 TexelSize;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   TexelSize    c66      1
//   HDRSampler   s0       1
//

    ps_3_0
    def c0, -1, 1, -3, 0
    def c1, 0.212500006, 0.715399981, 0.0720999986, 0
    def c2, 0.125, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    add r0.xy, -c66, v0
    texld r0, r0, s0
    dp3 r0.x, r0, c1
    rcp r0.y, r0.x
    cmp r0.x, -r0_abs.y, c1.w, r0.x
    mov r1.xy, c66
    mad r0.yz, r1.xxyw, c0.xxyw, v0.xxyw
    texld r2, r0.yzzw, s0
    dp3 r0.y, r2, c1
    rcp r0.z, r0.y
    cmp r0.y, -r0_abs.z, c1.w, r0.y
    add r0.x, r0.x, r0.y
    add r0.yz, c66.xxyw, v0.xxyw
    texld r2, r0.yzzw, s0
    dp3 r0.y, r2, c1
    rcp r0.z, r0.y
    cmp r0.y, -r0_abs.z, c1.w, r0.y
    add r0.x, r0.x, r0.y
    mad r0.yz, r1.xxyw, c0.xyxw, v0.xxyw
    texld r2, r0.yzzw, s0
    dp3 r0.y, r2, c1
    rcp r0.z, r0.y
    cmp r0.y, -r0_abs.z, c1.w, r0.y
    add r0.x, r0.x, r0.y
    mad r0.yz, r1.xxyw, c0.xzww, v0.xxyw
    texld r2, r0.yzzw, s0
    dp3 r0.y, r2, c1
    rcp r0.z, r0.y
    cmp r0.y, -r0_abs.z, c1.w, r0.y
    add r0.x, r0.x, r0.y
    mad r0.yz, r1.xxyw, c0_abs.xzww, v0.xxyw
    texld r2, r0.yzzw, s0
    dp3 r0.y, r2, c1
    rcp r0.z, r0.y
    cmp r0.y, -r0_abs.z, c1.w, r0.y
    add r0.x, r0.x, r0.y
    mad r0.yz, r1.xxyw, c0.xwzw, v0.xxyw
    texld r2, r0.yzzw, s0
    dp3 r0.y, r2, c1
    rcp r0.z, r0.y
    cmp r0.y, -r0_abs.z, c1.w, r0.y
    add r0.x, r0.x, r0.y
    mad r0.yz, r1.xxyw, c0_abs.xwzw, v0.xxyw
    texld r1, r0.yzzw, s0
    dp3 r0.y, r1, c1
    rcp r0.z, r0.y
    cmp r0.y, -r0_abs.z, c1.w, r0.y
    add r0.x, r0.x, r0.y
    mul oC0, r0.x, c2.x

// approximately 49 instruction slots used (8 texture, 41 arithmetic)
