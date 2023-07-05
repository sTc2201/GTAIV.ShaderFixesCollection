//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   float4x3 gBoneMtx[48];
//   float4 gDayNightEffects;
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldViewProj;
//   float4 globalScalars;
//   float4 globalScalars2;
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   gWorld           c0       4
//   gWorldViewProj   c8       4
//   gViewInverse     c12      4
//   globalScalars    c39      1
//   globalScalars2   c40      1
//   gDayNightEffects c45      1
//   gBoneMtx         c64    144
//

    vs_3_0
    def c0, 765.005859, 1, 0, -1
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_texcoord v3
    dcl_normal v4
    dcl_color v5
    dcl_position o0
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord3 o3.xyz
    dcl_color o4
    dcl_texcoord6 o5
    mul r0, c0.x, v2
    mova a0, r0
    mul r0, v1.y, c64[a0.y]
    mad r0, c64[a0.x], v1.x, r0
    mad r0, c64[a0.z], v1.z, r0
    mad r0, c64[a0.w], v1.w, r0
    mad r1, v0.xyzx, c0.yyyz, c0.zzzy
    dp4 r2.x, r1, r0
    dp3 o2.x, v4, r0
    mul r0, v1.y, c65[a0.y]
    mad r0, c65[a0.x], v1.x, r0
    mad r0, c65[a0.z], v1.z, r0
    mad r0, c65[a0.w], v1.w, r0
    dp4 r2.y, r1, r0
    dp3 o2.y, v4, r0
    mul r0, v1.y, c66[a0.y]
    mad r0, c66[a0.x], v1.x, r0
    mad r0, c66[a0.z], v1.z, r0
    mad r0, c66[a0.w], v1.w, r0
    dp4 r2.z, r1, r0
    dp3 o2.z, v4, r0
    add o3.xyz, -r2, c15
    add o5.xyz, r2, c3
    mul r0, r2.y, c9
    mad r0, r2.x, c8, r0
    mad r0, r2.z, c10, r0
    add r0, r0, c11
    mul r1.xy, c45, v5
    add r1.x, r1.y, r1.x
    mov r1.yw, c0
    mad r1.x, r1.x, c39.z, r1.w
    mad o4.xy, c40.z, r1.x, r1.y
    mov o0, r0
    mov o2.w, r0.w
    mov o1.xy, v3
    mov o4.zw, v5
    mov o5.w, c0.y

// approximately 37 instruction slots used
