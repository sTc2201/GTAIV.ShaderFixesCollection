//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D HeightMapSampler;
//   row_major float4x4 HeightMapTransformMtx;
//   row_major float4x4 gViewInverse;
//   row_major float4x4 gWorld;
//   row_major float4x4 gWorldViewProj;
//   float4 waterRenderSimParam;
//
//
// Registers:
//
//   Name                  Reg   Size
//   --------------------- ----- ----
//   gWorld                c0       4
//   gWorldViewProj        c8       4
//   gViewInverse          c12      4
//   HeightMapTransformMtx c64      4
//   waterRenderSimParam   c68      1
//   HeightMapSampler      s0       1
//

    vs_3_0
    def c4, 2, -2, 1, 10
    def c5, 1, -2, -1, 0
    def c6, 9.99999975e-006, 64, 16, -1000
    def c7, 0.75, 0.25, 100, 2000
    def c13, 0.899999976, 0.00499999989, 0.5, 0
    dcl_position v0
    dcl_normal v1
    dcl_color v2
    dcl_2d s0
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    dcl_texcoord4 o5
    mul r0.xyz, c1, v0.y
    mad r0.xyz, v0.x, c0, r0
    mad r0.xyz, v0.z, c2, r0
    add r0.xyz, r0, c3
    add r1, r0.zxyz, c5.xyyx
    mul r2.xy, r1.z, c65
    mad r1.yz, r1.y, c64.xxyw, r2.xxyw
    mad r1.yz, r1.w, c66.xxyw, r1
    add r1.yz, r1, c67.xxyw
    mad r2.xy, r1.yzzw, c5.xzzw, c5.wxzw
    mul r1.yzw, r0.y, c65.xxyz
    mad r1.yzw, r0.x, c64.xxyz, r1
    mad r1.yzw, r1.x, c66.xxyz, r1
    add r0.w, r1.x, -c68.z
    add r0.w, r0.w, c5.y
    mul_sat o1.w, r0.w, c13.z
    add r1.xyz, r1.yzww, c67
    mad r1.xyz, r1, c5.xzxw, c5.wxww
    add r3.xz, r2.yyxw, -r1.yyxw
    mov r2.zw, c5.w
    texldl r2, r2, s0
    mov r1.w, c5.w
    texldl r4, r1.xyww, s0
    add r0.w, r2.x, -r4.x
    mul r3.y, r0.w, c4.w
    add r2.yzw, r0.xxyz, c4.xxyz
    mul r4.yz, r2.z, c65.xxyw
    mad r2.yz, r2.y, c64.xxyw, r4
    mad r2.yz, r2.w, c66.xxyw, r2
    add r2.yz, r2, c67.xxyw
    mad r5.xy, r2.yzzw, c5.xzzw, c5.wxzw
    add r6.yz, -r1.xxyw, r5.xxyw
    mov r5.zw, c5.w
    texldl r5, r5, s0
    add r0.w, -r4.x, r5.x
    min r1.w, r2.x, r5.x
    mul r6.x, r0.w, c4.w
    mul r2.xyz, r3.yzxw, r6.zxyw
    mad r2.xyz, r3, r6, -r2
    add r2.xyz, r2, c6.x
    dp3 r0.w, r2, r2
    rsq r0.w, r0.w
    add r4.yzw, r0.xxyz, -c5.xyyz
    mul r5.xy, r4.z, c65
    mad r4.yz, r4.y, c64.xxyw, r5.xxyw
    mad r4.yz, r4.w, c66.xxyw, r4
    add r4.yz, r4, c67.xxyw
    mad r5.xy, r4.yzzw, c5.xzzw, c5.wxzw
    add r7.yz, -r1.xxyw, r5.xxyw
    mov r5.zw, c5.w
    texldl r5, r5, s0
    add r2.w, -r4.x, r5.x
    mul r7.x, r2.w, c4.w
    mul r4.yzw, r6.xxyz, r7.xzxy
    mad r4.yzw, r6.xzxy, r7.xxyz, -r4
    add r4.yzw, r4, c6.x
    nrm r6.xyz, r4.yzww
    mad r2.xyz, r2, r0.w, r6
    add r4.yzw, r0.xxyz, c4.xyxz
    add o3.xyz, r0, c5.wwxw
    mul r0.xy, r4.z, c65
    mad r0.xy, r4.y, c64, r0
    mad r0.xy, r4.w, c66, r0
    add r0.xy, r0, c67
    mad r0.xy, r0, c5.xzzw, c5.wxzw
    add r6.yz, -r1.xxyw, r0.xxyw
    mov r0.zw, c5.w
    texldl r0, r0, s0
    add r0.y, -r4.x, r0.x
    min r0.x, r5.x, r0.x
    min r0.x, r1.w, r0.x
    min r0.x, r4.x, r0.x
    add r0.z, r1.z, -r4.x
    mul_sat r0.z, r0.z, c6.w
    add r0.z, -r0.z, c5.x
    mul r0.z, r0.z, c7.z
    min r0.z, r0.z, c5.x
    min o5.w, r1.z, r0.x
    mov o3.w, r1.z
    mul r6.x, r0.y, c4.w
    mul r0.xyw, r7.xyzz, r6.zxzy
    mad r0.xyw, r7.zxzy, r6.xyzz, -r0
    add r0.xyw, r0, c6.x
    dp3 r1.x, r0.xyww, r0.xyww
    rsq r1.x, r1.x
    mad r0.xyw, r0, r1.x, r2.xyzz
    mul r1.xyz, r3, r6
    mad r1.xyz, r6.zxyw, r3.yzxw, -r1
    add r1.xyz, r1, c6.x
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    mad r0.xyw, r1.xyzz, r1.w, r0
    add r0.xyw, r0, c6.x
    dp3 r1.x, r0.xyww, r0.xyww
    rsq r1.x, r1.x
    mul o5.xyz, r0.xyww, r1.x
    mul r0.x, v2.x, v2.x
    mul r0.x, r0.x, r0.x
    mul r0.x, r0.x, c6.z
    min r0.x, r0.x, c5.x
    pow r0.y, v1_abs.z, c6.y
    add r0.y, -r0.y, c5.x
    mul r0.x, r0.x, r0.y
    max r0.x, r0.x, c5.w
    mad r0.x, r0.x, c7.x, c7.y
    mul r0.x, r0.z, r0.x
    mul o2.w, r0.x, v2.z
    mov r0.x, c6.x
    add r0.xy, r0.x, c14
    mov r0.z, c6.x
    nrm r1.xyz, r0
    mov r0.xy, c15
    mov r0.z, c68.z
    add r0.xyz, r0, -c3
    add r0.w, c14.z, c14.z
    max r0.w, r0_abs.w, c7.w
    mad r0.xyz, r1, r0.w, r0
    mul r0.yw, r0.y, c9
    mad r0.xy, r0.x, c8.ywzw, r0.ywzw
    mad r0.xy, r0.z, c10.ywzw, r0
    add r0.xy, r0, c11.ywzw
    rcp r0.y, r0.y
    mul r0.z, r0.x, r0.y
    mad r0.x, r0.x, r0.y, c5.z
    abs r0.y, c14.z
    slt r0.y, c13.x, r0.y
    mad r0.x, r0.y, r0.x, -r0.z
    add r0.y, -r0.x, c5.z
    abs r0.z, c12.z
    slt r0.z, c13.y, r0.z
    mad o4.w, r0.z, r0.y, r0.x
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    add r0, r0, c11
    mov o0, r0
    mov o1.xyz, r0.xyww
    mov o2.xyz, v1
    mov o4.xyz, c15

// approximately 150 instruction slots used (10 texture, 140 arithmetic)
