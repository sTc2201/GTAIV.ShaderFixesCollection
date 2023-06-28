//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float bumpiness;
//   float4 gDepthFxParams;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float4 gFacetCentre;
//   float4 gLightAmbient0;
//   float4 gLightAmbient1;
//   row_major float4x4 gShadowMatrix;
//   float4 gShadowParam0123;
//   float4 gShadowParam14151617;
//   float4 gShadowParam18192021;
//   float4 gShadowParam4567;
//   float4 gShadowParam891113;
//   sampler2D gShadowZSamplerDir;
//   row_major float4x4 gViewInverse;
//   float4 globalFogColor;
//   float4 globalFogColorN;
//   float4 globalFogParams;
//   float4 globalScalars;
//   float specularColorFactor;
//   float specularFactor;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   gViewInverse         c12      4
//   gDepthFxParams       c16      1
//   gDirectionalLight    c17      1
//   gDirectionalColour   c18      1
//   gLightAmbient0       c37      1
//   gLightAmbient1       c38      1
//   globalScalars        c39      1
//   globalFogParams      c41      1
//   globalFogColor       c42      1
//   globalFogColorN      c43      1
//   gShadowParam18192021 c53      1
//   gFacetCentre         c54      1
//   gShadowParam14151617 c56      1
//   gShadowParam0123     c57      1
//   gShadowParam4567     c58      1
//   gShadowParam891113   c59      1
//   gShadowMatrix        c60      4
//   specularFactor       c66      1
//   specularColorFactor  c72      1
//   bumpiness            c73      1
//   TextureSampler       s0       1
//   BumpSampler          s1       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, -0.5, 9.99999975e-006, 0.5, 1.33333337
    def c1, 9.99999975e-005, 1.5, -0.326211989, -0.405809999
    def c2, -0.791558981, -0.597710013, 0.0833333358, 1.00000001e-007
    def c3, 3.99600005, 4, 0.125, 0.25
    def c4, 0.212500006, 0.715399981, 0.0720999986, 0
    def c5, 0, -1, -0, 1
    def c6, 0.896420002, 0.412458003, -0.321940005, -0.932614982
    def c7, 0.185461, -0.893123984, 0.507430971, 0.0644249991
    def c8, 0.473434001, -0.480026007, 0.519456029, 0.767022014
    def c9, -0.203345001, 0.620715976, 0.962339997, -0.194983006
    def c10, -0.840143979, -0.0735799968, -0.69591397, 0.457136989
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3.xyz
    dcl_texcoord5 v4.xyz
    dcl_color v5.xw
    dcl_texcoord6 v6.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s10
    dcl_2d s15
    mov_sat r0.x, c39.x
    mul r0.x, r0.x, c3.x
    frc r0.y, r0.x
    mul r0.z, r0.y, c3.y
    frc r0.w, r0.z
    add r1.xy, r0.zxzw, -r0.wyzw
    mul r0.xy, c3.z, vPos
    frc r0.xy, r0_abs
    cmp r0.xy, vPos, r0, -r0
    mul r0.xy, r0, c3.w
    mad r0.xy, r1, c3.w, r0
    mov r0.zw, c5.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c5.y, c5.z
    texkill r0
    texld r0, v0, s1
    add r0.z, -r0.w, c5.w
    add r0.z, -r0.x, r0.z
    cmp r0.xy, r0.z, r0.wyzw, r0
    texld r1, v0, s0
    add r0.zw, r0.xyxy, c0.x
    mul r0.zw, r0, c73.x
    dp2add r0.x, r0, -r0, c5.w
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mul r2.xyz, r0.z, v3
    mad r0.xyz, v1, r0.x, r2
    mad r0.xyz, r0.w, v4, r0
    add r0.xyz, r0, c0.y
    nrm r2.xyz, r0
    mul r1.w, r1.w, v5.w
    add r0.xyz, c0.y, v2
    nrm r3.xyz, r0
    mad_sat r0.x, r2.z, c0.x, c0.z
    mov r4.xyz, c38
    mad r0.xyz, r4, r0.x, c37
    dp3 r0.w, -r3, r2
    add r0.w, r0.w, r0.w
    mad r3.xyz, r2, -r0.w, -r3
    mul r4.xyz, c18.w, c18
    dp3 r0.w, r2, -c17
    add r0.w, r0.w, -c3.w
    mul_sat r0.w, r0.w, c0.w
    dp3_sat r2.x, -c17, r3
    add r2.x, r2.x, c1.x
    mov r3.xzw, c1
    add r2.y, r3.x, c66.x
    pow r3.x, r2.x, r2.y
    mul r2.xyz, c61.xyww, v6.y
    mad r2.xyz, v6.x, c60.xyww, r2
    mad r2.xyz, v6.z, c62.xyww, r2
    add r2.xyz, r2, c63.xyww
    dp3 r2.w, c14, v6
    add r5.xyz, -r2.w, -c54
    cmp r5.yzw, r5.xxyz, c5.w, c5.x
    mov r5.x, c5.w
    dp4 r6.x, r5, c57
    dp4 r6.y, r5, c58
    dp4 r7.x, r5, c59
    dp4 r7.y, r5, c56
    mad r2.xy, r2, r6, r7
    add r5.xyz, c15, -v6
    dp3 r2.w, r5, r5
    rsq r2.w, r2.w
    rcp r2.w, r2.w
    rcp r3.y, c53.w
    mul r3.y, r2.w, r3.y
    mul r3.y, r3.y, r3.y
    mul r3.y, r3.y, c1.y
    mad r3.zw, c53.y, r3, r2.xyxy
    texld r5, r3.zwzw, s15
    add r3.z, r2.z, -r5.x
    cmp r3.z, r3.z, c5.w, c5.x
    mov r5.y, c53.y
    mad r5.xz, r5.y, c10.xyyw, r2.xyyw
    texld r6, r5.xzzw, s15
    add r3.w, r2.z, -r6.x
    cmp r3.w, r3.w, c5.w, c5.x
    add r3.z, r3.z, r3.w
    mad r5.xz, r5.y, c10.zyww, r2.xyyw
    texld r6, r5.xzzw, s15
    add r3.w, r2.z, -r6.x
    cmp r3.w, r3.w, c5.w, c5.x
    add r3.z, r3.z, r3.w
    mad r5.xz, r5.y, c9.xyyw, r2.xyyw
    texld r6, r5.xzzw, s15
    add r3.w, r2.z, -r6.x
    cmp r3.w, r3.w, c5.w, c5.x
    add r3.z, r3.z, r3.w
    mad r5.xz, r5.y, c9.zyww, r2.xyyw
    texld r6, r5.xzzw, s15
    add r3.w, r2.z, -r6.x
    cmp r3.w, r3.w, c5.w, c5.x
    add r3.z, r3.z, r3.w
    mad r5.xz, r5.y, c8.xyyw, r2.xyyw
    texld r6, r5.xzzw, s15
    add r3.w, r2.z, -r6.x
    cmp r3.w, r3.w, c5.w, c5.x
    add r3.z, r3.z, r3.w
    mad r5.xz, r5.y, c8.zyww, r2.xyyw
    texld r6, r5.xzzw, s15
    add r3.w, r2.z, -r6.x
    cmp r3.w, r3.w, c5.w, c5.x
    add r3.z, r3.z, r3.w
    mad r5.xz, r5.y, c7.xyyw, r2.xyyw
    texld r6, r5.xzzw, s15
    add r3.w, r2.z, -r6.x
    cmp r3.w, r3.w, c5.w, c5.x
    add r3.z, r3.z, r3.w
    mad r5.xz, r5.y, c7.zyww, r2.xyyw
    texld r6, r5.xzzw, s15
    add r3.w, r2.z, -r6.x
    cmp r3.w, r3.w, c5.w, c5.x
    add r3.z, r3.z, r3.w
    mad r5.xz, r5.y, c6.xyyw, r2.xyyw
    texld r6, r5.xzzw, s15
    add r3.w, r2.z, -r6.x
    cmp r3.w, r3.w, c5.w, c5.x
    add r3.z, r3.z, r3.w
    mad r5.xz, r5.y, c6.zyww, r2.xyyw
    texld r6, r5.xzzw, s15
    add r3.w, r2.z, -r6.x
    cmp r3.w, r3.w, c5.w, c5.x
    add r3.z, r3.z, r3.w
    mad r2.xy, r5.y, c2, r2
    texld r5, r2, s15
    add r2.x, r2.z, -r5.x
    cmp r2.x, r2.x, c5.w, c5.x
    add r2.x, r3.z, r2.x
    mad r2.x, r2.x, c2.z, r3.y
    add r2.y, r2.w, -c53.w
    cmp r2.yz, r2.y, c5.xwyw, c5.xxzw
    add r2.z, r2.x, r2.z
    cmp_sat r2.x, r2.z, r2.x, r2.y
    mul r2.yzw, r4.xxyz, r3.x
    mul r2.yzw, r2.x, r2
    mul r3.xyz, r4, r0.w
    mul r3.xyz, r2.x, r3
    mul r2.xyz, r2.yzww, c17.w
    mad r0.xyz, r0, v5.x, r3
    mov r0.w, c5.w
    mul r0, r1, r0
    mad r0.xyz, c72.x, r2, r0
    mul oC0.w, r0.w, c39.x
    add r0.w, c16.w, -v1.w
    add r1.x, -c16.z, c16.w
    rcp r1.x, r1.x
    mul_sat r0.w, r0.w, r1.x
    add r0.w, -r0.w, c5.w
    mov r1.y, c5.y
    add r1.xy, r1.y, c16
    mul r1.y, r0.w, r1.y
    mad r0.w, r0.w, r1.x, c5.w
    dp3 r1.x, r0, c4
    lrp r2.xyz, r0.w, r0, r1.x
    add r0.x, r1.x, c2.w
    pow r2.w, r0_abs.x, r1.y
    mul r0.xyz, r2, r2.w
    rcp r0.w, c41.x
    mul_sat r0.w, r0.w, v1.w
    add r1.x, -c41.x, v1.w
    add r1.y, -c41.x, c41.y
    rcp r1.y, r1.y
    mul_sat r1.x, r1.x, r1.y
    lrp r3.x, c41.w, r0.w, r1.x
    add r0.w, r3.x, c41.z
    mov r3.xyz, c43
    add r1.yzw, -r3.xxyz, c42.xxyz
    mad r1.xyz, r1.x, r1.yzww, c43
    mad r1.xyz, r2, -r2.w, r1
    mad oC0.xyz, r0.w, r1, r0

// approximately 181 instruction slots used (16 texture, 165 arithmetic)
