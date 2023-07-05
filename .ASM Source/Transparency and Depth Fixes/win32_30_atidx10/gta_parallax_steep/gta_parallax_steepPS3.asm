// Fixed LOD fading
// Generated by Microsoft (R) HLSL Shader Compiler 9.23.949.2378 (ported from 1.0.4.0)
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float bumpiness;
//   float4 globalScalars;
//   float parallaxScaleBias;
//   float specularColorFactor;
//   float specularFactor;
//   float4 stencil;
//
//
// Registers:
//
//   Name                Reg   Size
//   ------------------- ----- ----
//   globalScalars       c39      1
//   stencil             c52      1
//   parallaxScaleBias   c66      1
//   specularFactor      c72      1
//   specularColorFactor c73      1
//   bumpiness           c74      1
//   TextureSampler      s0       1
//   BumpSampler         s1       1
//   StippleTexture      s10      1
//

    ps_3_0
    def c0, 9.99999975e-006, 0, 1, -0.125
    def c1, 3.99600005, 4, 0.25, -0.5
    def c2, -1, -0, -0.00200000009, 0.001953125
    defi i0, 8, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord4 v2.xyz
    dcl_texcoord5 v3.xyz
    dcl_color v4.xw
    dcl_texcoord7 v5.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s10
    texld r0, v0, s1
    add r1.xyz, c0.x, v5
    dp3 r0.z, r1, r1
    rsq r0.z, r0.z
    mul r1.xy, r1, r0.z
    mul r1.xy, -r1, c66.x
    mov r1.zw, v0.xyxy
    mov r2.yz, r0.xxyw
    mov r2.x, c0.z
    mov r2.w, r0.w
    rep i0
      add r0.z, -r2.x, r2.w
      add r3.x, r2.x, c0.w
      mad r4.xy, r1, -c0.w, r1.zwzw
      texld r5, r4, s1
      cmp r1.zw, r0.z, r1, r4.xyxy
      mov r3.yzw, r5.xxyw
      cmp r2, r0.z, r2, r3
    endrep
    texld r0, r1.zwzw, s0
    mul r0.w, r0.w, v4.w
    mul r0.w, r0.w, c39.x
    mov_sat r1.x, r0.w
    mul r1.x, r1.x, c1.x
    frc r1.y, r1.x
    mul r1.z, r1.y, c1.y
    frc r1.w, r1.z
    add r3.xy, r1.zxzw, -r1.wyzw
    mul r1.xy, -c0.w, vPos
    frc r1.xy, r1_abs
    cmp r1.xy, vPos, r1, -r1
    mul r1.xy, r1, c1.z
    mad r1.xy, r3, c1.z, r1
    texld r1, r1, s10
    cmp r1, -r1.y, c2.x, c2.y
    texkill r1
    add r1.xy, r2.yzzw, c1.w
    mul r1.xy, r1, c74.x
    dp2add r1.z, r2.yzzw, -r2.yzzw, c0.z
    rsq r1.z, r1.z
    rcp r1.z, r1.z
    mul r3.xyz, r1.x, v2
    mad r1.xzw, v1.xyyz, r1.z, r3.xyyz
    mad r1.xyz, r1.y, v3, r1.xzww
    add r1.xyz, r1, c0.x
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    dp2add r2.x, r2.yzzw, r2.yzzw, c2.z
    cmp r2.x, r2.x, -c2.x, -c2.y
    mul oC0.xyz, r0, r2.x
    mul oC2.z, r2.x, v4.x
    mul r0.x, r2.x, c73.x
    mad r1.xyz, r1, r1.w, c0.z
    mul oC1.xyz, r1, -c1.w
    mul oC2.x, r0.x, -c1.w
    mov r1.xyw, c2
    mul r0.x, r1.w, c72.x
    rsq r0.x, r0.x
    rcp oC2.y, r0.x
    mov oC0.w, r0.w
    mov oC1.w, r0.w
    mov oC2.w, r0.w
    mul oC3, -r1.xyyy, c52.x

// approximately 68 instruction slots used (4 texture, 64 arithmetic)
