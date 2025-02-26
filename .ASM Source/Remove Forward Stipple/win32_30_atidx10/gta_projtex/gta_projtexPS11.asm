// Removed forward stipple
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float bumpiness;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float4 gFacetCentre;
//   float4 gLightAmbient0;
//   float4 gLightAmbient1;
//   float4 gLightColB;
//   float4 gLightColG;
//   float4 gLightColR;
//   float4 gLightConeOffset;
//   float4 gLightConeOffset2;
//   float4 gLightConeScale;
//   float4 gLightConeScale2;
//   float4 gLightDir2X;
//   float4 gLightDir2Y;
//   float4 gLightDir2Z;
//   float4 gLightDirX;
//   float4 gLightDirY;
//   float4 gLightDirZ;
//   float4 gLightFallOff;
//   float4 gLightPointColB;
//   float4 gLightPointColG;
//   float4 gLightPointColR;
//   float4 gLightPointFallOff;
//   float4 gLightPointPosX;
//   float4 gLightPointPosY;
//   float4 gLightPointPosZ;
//   float4 gLightPosX;
//   float4 gLightPosY;
//   float4 gLightPosZ;
//   row_major float4x4 gShadowMatrix;
//   float4 gShadowParam0123;
//   float4 gShadowParam14151617;
//   float4 gShadowParam18192021;
//   float4 gShadowParam4567;
//   float4 gShadowParam891113;
//   sampler2D gShadowZSamplerDir;
//   row_major float4x4 gViewInverse;
//   float4 globalScalars;
//   float parallaxScaleBias;
//   float specularColorFactor;
//   float specularFactor;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gViewInverse         c12      4
//   gDirectionalLight    c17      1
//   gDirectionalColour   c18      1
//   gLightPosX           c19      1
//   gLightPosY           c20      1
//   gLightPosZ           c21      1
//   gLightDirX           c22      1
//   gLightDirY           c23      1
//   gLightDirZ           c24      1
//   gLightFallOff        c25      1
//   gLightConeScale      c26      1
//   gLightConeOffset     c27      1
//   gLightColR           c29      1
//   gLightColG           c30      1
//   gLightColB           c31      1
//   gLightPointPosX      c32      1
//   gLightPointPosY      c33      1
//   gLightPointPosZ      c34      1
//   gLightPointColR      c35      1
//   gLightPointFallOff   c36      1
//   gLightAmbient0       c37      1
//   gLightAmbient1       c38      1
//   globalScalars        c39      1
//   gShadowParam18192021 c53      1
//   gFacetCentre         c54      1
//   gShadowParam14151617 c56      1
//   gShadowParam0123     c57      1
//   gShadowParam4567     c58      1
//   gShadowParam891113   c59      1
//   gShadowMatrix        c60      4
//   gLightPointColG      c64      1
//   gLightPointColB      c65      1
//   parallaxScaleBias    c66      1
//   gLightDir2X          c67      1
//   gLightDir2Y          c68      1
//   gLightDir2Z          c69      1
//   gLightConeScale2     c70      1
//   gLightConeOffset2    c71      1
//   specularFactor       c72      1
//   specularColorFactor  c73      1
//   bumpiness            c74      1
//   TextureSampler       s0       1
//   BumpSampler          s1       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, 9.99999975e-006, 0.5, -0.5, 1
    def c1, -0.00200000009, 1, 0, -0.25
    def c2, 1.33333337, 1.5, -0.326211989, -0.405809999
    def c3, 9.99999975e-005, 0, 0, 0
    def c4, -0.791558981, -0.597710013, 0.0833333358, -0.100000001
    def c5, 1.11111116, 3.99600005, 4, 0.125
    def c6, 1, -1, 0, -0
    def c7, 0.896420002, 0.412458003, -0.321940005, -0.932614982
    def c8, 0.185461, -0.893123984, 0.507430971, 0.0644249991
    def c9, 0.473434001, -0.480026007, 0.519456029, 0.767022014
    def c10, -0.203345001, 0.620715976, 0.962339997, -0.194983006
    def c11, -0.840143979, -0.0735799968, -0.69591397, 0.457136989
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5
    dcl_texcoord6 v6.xyz
    dcl_texcoord7 v7.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s10
    dcl_2d s15
    texld r0, v0, s1
    add r0.xyz, c0.x, v7
    dp3 r0.z, r0, r0
    rsq r0.z, r0.z
    mul r0.xy, r0, r0.z
    mov r1.yw, c0
    mul r0.z, r1.y, c66.x
    mad r0.z, r0.w, c66.x, -r0.z
    mad_sat r0.xy, r0.z, r0, v0
    texld r2, r0, s1
    texld r0, r0, s0
    add r1.xy, r2, c0.z
    mul r1.xy, r1, c74.x
    dp2add r1.z, r2, -r2, c0.w
    rsq r1.z, r1.z
    rcp r1.z, r1.z
    mul r3.xyz, r1.x, v3
    mad r3.xyz, v1, r1.z, r3
    mad r1.xyz, r1.y, v4, r3
    add r1.xyz, r1, c0.x
    nrm r3.xyz, r1
    dp2add r1.x, r2, r2, c1.x
    cmp r1.x, r1.x, c1.y, c1.z
    mul r0.xyz, r0, r1.x
    mul r2.xyz, r1.x, v5
    mul r4.w, r0.w, v5.w
    mul r4.xyz, r0, r2
    mad_sat r0.x, r3.z, c0.z, c0.y
    mov r5.xyz, c38
    mad r0.xyz, r5, r0.x, c37
    mul r2.yzw, c18.w, c18.xxyz
    dp3 r0.w, r3, -c17
    add r0.w, r0.w, c1.w
    mul_sat r0.w, r0.w, c2.x
    mul r5.xyz, c61.xyww, v6.y
    mad r5.xyz, v6.x, c60.xyww, r5
    mad r5.xyz, v6.z, c62.xyww, r5
    add r5.xyz, r5, c63.xyww
    dp3 r1.y, c14, v6
    add r6.xyz, -r1.y, -c54
    cmp r6.yzw, r6.xxyz, c1.y, c1.z
    mov r6.x, c0.w
    dp4 r7.x, r6, c57
    dp4 r7.y, r6, c58
    dp4 r8.x, r6, c59
    dp4 r8.y, r6, c56
    mad r1.yz, r5.xxyw, r7.xxyw, r8.xxyw
    add r5.xyw, c15.xyzz, -v6.xyzz
    dp3 r3.w, r5.xyww, r5.xyww
    rsq r3.w, r3.w
    rcp r3.w, r3.w
    rcp r5.x, c53.w
    mul r5.x, r3.w, r5.x
    mul r5.x, r5.x, r5.x
    mul r5.x, r5.x, c2.y
    mov r5.y, c53.y
    mad r6.xy, r5.y, c2.zwzw, r1.yzzw
    texld r6, r6, s15
    add r5.w, r5.z, -r6.x
    cmp r5.w, r5.w, c1.y, c1.z
    mad r6.xy, r5.y, c11, r1.yzzw
    texld r6, r6, s15
    add r6.x, r5.z, -r6.x
    cmp r6.x, r6.x, c1.y, c1.z
    add r5.w, r5.w, r6.x
    mad r6.xy, r5.y, c11.zwzw, r1.yzzw
    texld r6, r6, s15
    add r6.x, r5.z, -r6.x
    cmp r6.x, r6.x, c1.y, c1.z
    add r5.w, r5.w, r6.x
    mad r6.xy, r5.y, c10, r1.yzzw
    texld r6, r6, s15
    add r6.x, r5.z, -r6.x
    cmp r6.x, r6.x, c1.y, c1.z
    add r5.w, r5.w, r6.x
    mad r6.xy, r5.y, c10.zwzw, r1.yzzw
    texld r6, r6, s15
    add r6.x, r5.z, -r6.x
    cmp r6.x, r6.x, c1.y, c1.z
    add r5.w, r5.w, r6.x
    mad r6.xy, r5.y, c9, r1.yzzw
    texld r6, r6, s15
    add r6.x, r5.z, -r6.x
    cmp r6.x, r6.x, c1.y, c1.z
    add r5.w, r5.w, r6.x
    mad r6.xy, r5.y, c9.zwzw, r1.yzzw
    texld r6, r6, s15
    add r6.x, r5.z, -r6.x
    cmp r6.x, r6.x, c1.y, c1.z
    add r5.w, r5.w, r6.x
    mad r6.xy, r5.y, c8, r1.yzzw
    texld r6, r6, s15
    add r6.x, r5.z, -r6.x
    cmp r6.x, r6.x, c1.y, c1.z
    add r5.w, r5.w, r6.x
    mad r6.xy, r5.y, c8.zwzw, r1.yzzw
    texld r6, r6, s15
    add r6.x, r5.z, -r6.x
    cmp r6.x, r6.x, c1.y, c1.z
    add r5.w, r5.w, r6.x
    mad r6.xy, r5.y, c7, r1.yzzw
    texld r6, r6, s15
    add r6.x, r5.z, -r6.x
    cmp r6.x, r6.x, c1.y, c1.z
    add r5.w, r5.w, r6.x
    mad r6.xy, r5.y, c7.zwzw, r1.yzzw
    texld r6, r6, s15
    add r6.x, r5.z, -r6.x
    cmp r6.x, r6.x, c1.y, c1.z
    add r5.w, r5.w, r6.x
    mad r1.yz, r5.y, c4.xxyw, r1
    texld r6, r1.yzzw, s15
    add r1.y, r5.z, -r6.x
    cmp r1.y, r1.y, c1.y, c1.z
    add r1.y, r5.w, r1.y
    mad r1.y, r1.y, c4.z, r5.x
    add r1.z, r3.w, -c53.w
    cmp r5.xy, r1.z, c6, c6.zwzw
    add r1.z, r1.y, r5.y
    cmp_sat r1.y, r1.z, r1.y, r5.x
    mul r5.xyz, r2.yzww, r0.w
    mul r5.xyz, r1.y, r5
    mad r0.xyz, r0, r2.x, r5
    add r5, c19, -v6.x
    add r6, c20, -v6.y
    add r7, c21, -v6.z
    mul r8, r5, r5
    mad r8, r6, r6, r8
    mad r8, r7, r7, r8
    add r9, r8, c0.x
    rsq r10.x, r9.x
    rsq r10.y, r9.y
    rsq r10.z, r9.z
    rsq r10.w, r9.w
    mad r8, r8, -c25, r1.w
    max r9, r8, c1.z
    mul r8, r9, r9
    mad r8, r8, r8, c4.w
    mul r9, r8, c5.x
    cmp r8, r8, r9, c1.z
    mul r9, r3.x, r5
    mad r9, r6, r3.y, r9
    mad r9, r7, r3.z, r9
    mul r8, r8, r9
    mul_sat r8, r10, r8
    mul r9, r5, -c22
    mad r9, r6, -c23, r9
    mad r9, r7, -c24, r9
    mul r9, r10, r9
    mov r11, c26
    mad_sat r9, r9, r11, c27
    mul r8, r8, r9
    dp4 r9.x, c29, r8
    dp4 r9.y, c30, r8
    dp4 r9.z, c31, r8
    add r0.xyz, r0, r9
    add r9, c32, -v6.x
    add r11, c33, -v6.y
    add r12, c34, -v6.z
    mul r13, r9, r9
    mad r13, r11, r11, r13
    mad r13, r12, r12, r13
    add r14, r13, c0.x
    rsq r15.x, r14.x
    rsq r15.y, r14.y
    rsq r15.z, r14.z
    rsq r15.w, r14.w
    mad r13, r13, -c36, r1.w
    max r14, r13, c1.z
    mul r13, r14, r14
    mad r13, r13, r13, c4.w
    mul r14, r13, c5.x
    cmp r13, r13, r14, c1.z
    mul r14, r3.x, r9
    mad r14, r11, r3.y, r14
    mad r14, r12, r3.z, r14
    mul r13, r13, r14
    mul_sat r13, r15, r13
    mul r14, r9, -c67
    mad r14, r11, -c68, r14
    mad r14, r12, -c69, r14
    mul r14, r15, r14
    mov r16, c70
    mad_sat r14, r14, r16, c71
    mul r13, r13, r14
    dp4 r14.x, c35, r13
    dp4 r14.y, c64, r13
    dp4 r14.z, c65, r13
    add r0.xyz, r0, r14
    mov r0.w, c0.w
    mul r0, r4, r0
    mul r0.w, r0.w, c39.x
    mul r1.x, r1.x, c73.x
    add r4.xyz, c0.x, v2
    nrm r14.xyz, r4
    dp3 r1.z, -r14, r3
    add r1.z, r1.z, r1.z
    mad r3.xyz, r3, -r1.z, -r14
    dp3_sat r1.z, -c17, r3
    add r1.z, r1.z, c3.x
    mov r2.x, c72.x
    add r1.w, r2.x, c3.x
    pow r3.w, r1.z, r1.w
    mul r2.yzw, r2, r3.w
    mul r1.yzw, r1.y, r2
    mul r2.x, r2.x, -c1.w
    mul r4, r5, r3.x
    mad r4, r3.y, r6, r4
    mad r4, r3.z, r7, r4
    mul r4, r10, r4
    log r5.x, r4_abs.x
    log r5.y, r4_abs.y
    log r5.z, r4_abs.z
    log r5.w, r4_abs.w
    mul r4, r2.x, r5
    exp r5.x, r4.x
    exp r5.y, r4.y
    exp r5.z, r4.z
    exp r5.w, r4.w
    mul r4, r8, r5
    dp4 r5.x, c29, r4
    dp4 r5.y, c30, r4
    dp4 r5.z, c31, r4
    mad r1.yzw, r1, c17.w, r5.xxyz
    mul r4, r9, r3.x
    mad r4, r3.y, r11, r4
    mad r3, r3.z, r12, r4
    mul r3, r15, r3
    log r4.x, r3_abs.x
    log r4.y, r3_abs.y
    log r4.z, r3_abs.z
    log r4.w, r3_abs.w
    mul r2, r2.x, r4
    exp r3.x, r2.x
    exp r3.y, r2.y
    exp r3.z, r2.z
    exp r3.w, r2.w
    mul r2, r13, r3
    dp4 r3.x, c35, r2
    dp4 r3.y, c64, r2
    dp4 r3.z, c65, r2
    add r1.yzw, r1, r3.xxyz
    mad oC0.xyz, r1.x, r1.yzww, r0
    mov oC0.w, r0.w

// approximately 269 instruction slots used (17 texture, 252 arithmetic)
