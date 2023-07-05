//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D EnvironmentSampler;
//   sampler2D SpecSampler;
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
//   float reflectivePower;
//   float3 specMapIntMask;
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
//   specularFactor       c66      1
//   gLightDir2X          c67      1
//   gLightDir2Y          c68      1
//   gLightDir2Z          c69      1
//   gLightConeScale2     c70      1
//   gLightConeOffset2    c71      1
//   specularColorFactor  c72      1
//   specMapIntMask       c73      1
//   bumpiness            c74      1
//   reflectivePower      c75      1
//   TextureSampler       s0       1
//   BumpSampler          s1       1
//   SpecSampler          s2       1
//   EnvironmentSampler   s4       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, 1, -0.5, 9.99999975e-006, -0.00999999978
    def c1, 100, -0.5, 0.5, -0.25
    def c2, 1.33333337, 1, 0, 1.5
    def c3, 4, 0.125, 9.99999975e-005, 0
    def c4, 0.0833333358, -0.100000001, 1.11111116, 3.99600005
    def c5, 1, -1, 0, -0
    def c6, -0.321940005, -0.932614982, -0.791558981, -0.597710013
    def c7, 0.507430971, 0.0644249991, 0.896420002, 0.412458003
    def c8, 0.519456029, 0.767022014, 0.185461, -0.893123984
    def c9, 0.962339997, -0.194983006, 0.473434001, -0.480026007
    def c10, -0.69591397, 0.457136989, -0.203345001, 0.620715976
    def c11, -0.326211989, -0.405809999, -0.840143979, -0.0735799968
	def c100, 1.6666667, 0, 0, 0	// Reflection intensity multiplier
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5
    dcl_texcoord6 v6.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s10
    dcl_2d s15
    texld r0, v0, s1
    add r0.z, -r0.w, c0.x
    add r0.z, -r0.x, r0.z
    cmp r0.xy, r0.z, r0.wyzw, r0
    texld r1, v0, s0
    add r0.zw, r0.xyxy, c0.y
    mul r0.zw, r0, c74.x
    dp2add r0.x, r0, -r0, c0.x
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mul r2.xyz, r0.z, v3
    mad r0.xyz, v1, r0.x, r2
    mad r0.xyz, r0.w, v4, r0
    add r0.xyz, r0, c0.z
    nrm r2.xyz, r0
    texld r0, v0, s2
    dp3 r0.x, r0, c73
    mul r0.x, r0.x, c72.x
    add r3.xyz, c0.z, v2
    nrm r4.xyz, r3
    dp3 r0.y, -r4, r2
    add r0.y, r0.y, r0.y
    mad r3.xyz, r2, -r0.y, -r4
    add r4.xyz, r3, c0.z
    dp3 r0.y, r4, r4
    rsq r0.y, r0.y
    mad r0.yz, r4.xxzw, r0.y, c0.x
    mul r0.yz, r0, c0.y
    texld r4, r0.yzzw, s4
	mul r4, r4, c100.x
    mul r4.xyz, r0.x, r4
    mul r4.xyz, r4, c75.x
    mul r5, r1, v5
    mad r0.y, r1.w, v5.w, c0.w
    rcp r0.z, r5.w
    cmp r0.y, r0.y, r0.z, c1.x
    mad r5.xyz, r4, r0.y, r5
    mad_sat r0.y, r2.z, c1.y, c1.z
    mov r1.xyz, c38
    mad r1.xyz, r1, r0.y, c37
    mul r4.xyz, c18.w, c18
    dp3 r0.y, r2, -c17
    add r0.y, r0.y, c1.w
    mul_sat r0.y, r0.y, c2.x
    mul r6.xyz, c61.xyww, v6.y
    mad r6.xyz, v6.x, c60.xyww, r6
    mad r6.xyz, v6.z, c62.xyww, r6
    add r6.xyz, r6, c63.xyww
    dp3 r0.z, c14, v6
    add r7.xyz, -r0.z, -c54
    cmp r7.yzw, r7.xxyz, c2.y, c2.z
    mov r7.x, c0.x
    dp4 r8.x, r7, c57
    dp4 r8.y, r7, c58
    dp4 r9.x, r7, c59
    dp4 r9.y, r7, c56
    mad r6.xy, r6, r8, r9
    add r7.xyz, c15, -v6
    dp3 r0.z, r7, r7
    rsq r0.z, r0.z
    rcp r0.z, r0.z
    rcp r1.w, c53.w
    mul r1.w, r0.z, r1.w
    mul r1.w, r1.w, r1.w
    mul r1.w, r1.w, c2.w
    mov r7.y, c53.y
    mad r7.xz, r7.y, c11.xyyw, r6.xyyw
    texld r8, r7.xzzw, s15
    add r2.w, r6.z, -r8.x
    cmp r2.w, r2.w, c2.y, c2.z
    mad r7.xz, r7.y, c11.zyww, r6.xyyw
    texld r8, r7.xzzw, s15
    add r3.w, r6.z, -r8.x
    cmp r3.w, r3.w, c2.y, c2.z
    add r2.w, r2.w, r3.w
    mad r7.xz, r7.y, c10.xyyw, r6.xyyw
    texld r8, r7.xzzw, s15
    add r3.w, r6.z, -r8.x
    cmp r3.w, r3.w, c2.y, c2.z
    add r2.w, r2.w, r3.w
    mad r7.xz, r7.y, c10.zyww, r6.xyyw
    texld r8, r7.xzzw, s15
    add r3.w, r6.z, -r8.x
    cmp r3.w, r3.w, c2.y, c2.z
    add r2.w, r2.w, r3.w
    mad r7.xz, r7.y, c9.xyyw, r6.xyyw
    texld r8, r7.xzzw, s15
    add r3.w, r6.z, -r8.x
    cmp r3.w, r3.w, c2.y, c2.z
    add r2.w, r2.w, r3.w
    mad r7.xz, r7.y, c9.zyww, r6.xyyw
    texld r8, r7.xzzw, s15
    add r3.w, r6.z, -r8.x
    cmp r3.w, r3.w, c2.y, c2.z
    add r2.w, r2.w, r3.w
    mad r7.xz, r7.y, c8.xyyw, r6.xyyw
    texld r8, r7.xzzw, s15
    add r3.w, r6.z, -r8.x
    cmp r3.w, r3.w, c2.y, c2.z
    add r2.w, r2.w, r3.w
    mad r7.xz, r7.y, c8.zyww, r6.xyyw
    texld r8, r7.xzzw, s15
    add r3.w, r6.z, -r8.x
    cmp r3.w, r3.w, c2.y, c2.z
    add r2.w, r2.w, r3.w
    mad r7.xz, r7.y, c7.xyyw, r6.xyyw
    texld r8, r7.xzzw, s15
    add r3.w, r6.z, -r8.x
    cmp r3.w, r3.w, c2.y, c2.z
    add r2.w, r2.w, r3.w
    mad r7.xz, r7.y, c7.zyww, r6.xyyw
    texld r8, r7.xzzw, s15
    add r3.w, r6.z, -r8.x
    cmp r3.w, r3.w, c2.y, c2.z
    add r2.w, r2.w, r3.w
    mad r7.xz, r7.y, c6.xyyw, r6.xyyw
    texld r8, r7.xzzw, s15
    add r3.w, r6.z, -r8.x
    cmp r3.w, r3.w, c2.y, c2.z
    add r2.w, r2.w, r3.w
    mad r6.xy, r7.y, c6.zwzw, r6
    texld r7, r6, s15
    add r3.w, r6.z, -r7.x
    cmp r3.w, r3.w, c2.y, c2.z
    add r2.w, r2.w, r3.w
    mad r1.w, r2.w, c4.x, r1.w
    add r0.z, r0.z, -c53.w
    cmp r6.xy, r0.z, c5, c5.zwzw
    add r0.z, r1.w, r6.y
    cmp_sat r0.z, r0.z, r1.w, r6.x
    mul r6.xyz, r4, r0.y
    mul r6.xyz, r0.z, r6
    mad r1.xyz, r1, v5.x, r6
    add r6, c19, -v6.x
    add r7, c20, -v6.y
    add r8, c21, -v6.z
    mul r9, r6, r6
    mad r9, r7, r7, r9
    mad r9, r8, r8, r9
    add r10, r9, c0.z
    rsq r11.x, r10.x
    rsq r11.y, r10.y
    rsq r11.z, r10.z
    rsq r11.w, r10.w
    mov r10.x, c0.x
    mad r9, r9, -c25, r10.x
    max r12, r9, c2.z
    mul r9, r12, r12
    mad r9, r9, r9, c4.y
    mul r12, r9, c4.z
    cmp r9, r9, r12, c2.z
    mul r12, r2.x, r6
    mad r12, r7, r2.y, r12
    mad r12, r8, r2.z, r12
    mul r9, r9, r12
    mul_sat r9, r11, r9
    mul r12, r6, -c22
    mad r12, r7, -c23, r12
    mad r12, r8, -c24, r12
    mul r12, r11, r12
    mov r13, c26
    mad_sat r12, r12, r13, c27
    mul r9, r9, r12
    dp4 r12.x, c29, r9
    dp4 r12.y, c30, r9
    dp4 r12.z, c31, r9
    add r1.xyz, r1, r12
    add r12, c32, -v6.x
    add r13, c33, -v6.y
    add r14, c34, -v6.z
    mul r15, r12, r12
    mad r15, r13, r13, r15
    mad r15, r14, r14, r15
    add r16, r15, c0.z
    rsq r17.x, r16.x
    rsq r17.y, r16.y
    rsq r17.z, r16.z
    rsq r17.w, r16.w
    mad r10, r15, -c36, r10.x
    max r15, r10, c2.z
    mul r10, r15, r15
    mad r10, r10, r10, c4.y
    mul r15, r10, c4.z
    cmp r10, r10, r15, c2.z
    mul r15, r2.x, r12
    mad r15, r13, r2.y, r15
    mad r2, r14, r2.z, r15
    mul r2, r10, r2
    mul_sat r2, r17, r2
    mul r10, r12, -c67
    mad r10, r13, -c68, r10
    mad r10, r14, -c69, r10
    mul r10, r17, r10
    mov r15, c70
    mad_sat r10, r10, r15, c71
    mul r2, r2, r10
    dp4 r10.x, c35, r2
    dp4 r10.y, c64, r2
    dp4 r10.z, c65, r2
    add r1.xyz, r1, r10
    mov r1.w, c0.x
    mul r1, r5, r1
    mul r0.y, r1.w, c39.x
    mov_sat r1.w, r0.y
    mul r1.w, r1.w, c4.w
    frc r3.w, r1.w
    mul r4.w, r3.w, c3.x
    frc r5.x, r4.w
    add r5.x, r4.w, -r5.x
    add r5.y, r1.w, -r3.w
    mul r5.zw, c3.y, vPos.xyxy
    frc r5.zw, r5_abs
    cmp r5.zw, vPos.xyxy, r5, -r5
    mul r5.zw, r5, -c1.w
    mad r5.xy, r5, -c1.w, r5.zwzw
    mov r5.zw, c2.z
    texldl r5, r5, s10
    cmp r5, -r5.y, -c2.y, -c2.z
    texkill r5
    mul r1.w, r0.w, c66.x
    dp3_sat r3.w, -c17, r3
    add r3.w, r3.w, c3.z
    mov r5.z, c3.z
    mad r0.w, r0.w, c66.x, r5.z
    pow r4.w, r3.w, r0.w
    mul r4.xyz, r4, r4.w
    mul r4.xyz, r0.z, r4
    mul r0.z, r1.w, -c1.w
    mul r5, r3.x, r6
    mad r5, r3.y, r7, r5
    mad r5, r3.z, r8, r5
    mul r5, r11, r5
    log r6.x, r5_abs.x
    log r6.y, r5_abs.y
    log r6.z, r5_abs.z
    log r6.w, r5_abs.w
    mul r5, r0.z, r6
    exp r6.x, r5.x
    exp r6.y, r5.y
    exp r6.z, r5.z
    exp r6.w, r5.w
    mul r5, r9, r6
    dp4 r6.x, c29, r5
    dp4 r6.y, c30, r5
    dp4 r6.z, c31, r5
    mad r4.xyz, r4, c17.w, r6
    mul r5, r3.x, r12
    mad r5, r3.y, r13, r5
    mad r3, r3.z, r14, r5
    mul r3, r17, r3
    log r5.x, r3_abs.x
    log r5.y, r3_abs.y
    log r5.z, r3_abs.z
    log r5.w, r3_abs.w
    mul r3, r0.z, r5
    exp r5.x, r3.x
    exp r5.y, r3.y
    exp r5.z, r3.z
    exp r5.w, r3.w
    mul r2, r2, r5
    dp4 r3.x, c35, r2
    dp4 r3.y, c64, r2
    dp4 r3.z, c65, r2
    add r2.xyz, r4, r3
    mad oC0.xyz, r0.x, r2, r1
    mov oC0.w, r0.y

// approximately 273 instruction slots used (18 texture, 255 arithmetic)
