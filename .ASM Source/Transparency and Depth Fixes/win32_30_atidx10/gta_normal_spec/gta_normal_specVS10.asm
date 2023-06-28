//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
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
//

    vs_3_0
    def c4, 9.99999975e-006, -1, 1, 0
    dcl_position v0
    dcl_texcoord v1
    dcl_normal v2
    dcl_tangent v3
    dcl_texcoord1 v4
    dcl_texcoord2 v5
    dcl_texcoord3 v6
    dcl_texcoord4 v7
    dcl_position o0
    dcl_texcoord o1.xy
    dcl_texcoord1 o2
    dcl_texcoord3 o3.xyz
    dcl_texcoord4 o4.xyz
    dcl_texcoord5 o5.xyz
    dcl_color o6
    dcl_texcoord6 o7
    mov r0.xyz, v0
    mul r1.xyz, r0.y, v5
    mad r0.xyw, r0.x, v4.xyzz, r1.xyzz
    mad r0.xyz, r0.z, v6, r0.xyww
    add r0.xyz, r0, v7
    mul r1.xyz, r0.y, c1
    mad r1.xyz, r0.x, c0, r1
    mad r1.xyz, r0.z, c2, r1
    add r1.xyz, r1, c3
    add o3.xyz, -r1, c15
    mov o7.xyz, r1
    mul r1.xyz, c1, v2.y
    mad r1.xyz, v2.x, c0, r1
    mad r1.xyz, v2.z, c2, r1
    add r1.xyz, r1, c4.x
    nrm r2.xyz, r1
    mul r1.xyz, c1, v3.y
    mad r1.xyz, v3.x, c0, r1
    mad r1.xyz, v3.z, c2, r1
    add r1.xyz, r1, c4.x
    nrm r3.xyz, r1
    mul r1.xyz, r2.yzxw, r3.zxyw
    mad r1.xyz, r3.yzxw, r2.zxyw, -r1
    mov o2.xyz, r2
    mov o4.xyz, r3
    mul o5.xyz, r1, v3.w
    mul r0.w, c45.y, v5.w
    mad r0.w, v4.w, c45.x, r0.w
    mov r1.yz, c4
    mad r0.w, r0.w, c39.z, r1.y
    mad o6.xy, c40.z, r0.w, r1.z
    mul r1, r0.y, c9
    mad r1, r0.x, c8, r1
    mad r0, r0.z, c10, r1
    add r0, r0, c11
    mov o0, r0
    mov o2.w, r0.w
    mov o1.xy, v1
    mov o6.z, v6.w
    mov o6.w, v7.w
    mov o7.w, c4.z

// approximately 45 instruction slots used
