// Console-like ambient reflection intensity
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D EnvironmentSampler;
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
//   float reflectivePower;
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
//   bumpiness            c66      1
//   reflectivePower      c72      1
//   TextureSampler       s0       1
//   BumpSampler          s1       1
//   EnvironmentSampler   s2       1
//   StippleTexture       s10      1
//   gShadowZSamplerDir   s15      1
//

    ps_3_0
    def c0, -0.5, 9.99999975e-006, -0.00999999978, 100
    def c1, -0.5, 0.5, 1.33333337, 1.5
    def c2, 0.0833333358, 0.212500006, 0.715399981, 0.0720999986
    def c3, 3.99600005, 4, 0.125, 0.25
    def c4, 1.00000001e-007, 0, 0, 0
    def c5, 0, -1, -0, 1
    def c6, -0.321940005, -0.932614982, -0.791558981, -0.597710013
    def c7, 0.507430971, 0.0644249991, 0.896420002, 0.412458003
    def c8, 0.519456029, 0.767022014, 0.185461, -0.893123984
    def c9, 0.962339997, -0.194983006, 0.473434001, -0.480026007
    def c10, -0.69591397, 0.457136989, -0.203345001, 0.620715976
    def c11, -0.326211989, -0.405809999, -0.840143979, -0.0735799968
	def c100, 1.6666667, 0, 0, 0	// Reflection intensity multiplier
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
    dcl_2d s2
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
    mul r0.zw, r0, c66.x
    dp2add r0.x, r0, -r0, c5.w
    rsq r0.x, r0.x
    rcp r0.x, r0.x
    mul r2.xyz, r0.z, v3
    mad r0.xyz, v1, r0.x, r2
    mad r0.xyz, r0.w, v4, r0
    add r0.xyz, r0, c0.y
    nrm r2.xyz, r0
    add r0.xyz, c0.y, v2
    nrm r3.xyz, r0
    dp3 r0.x, -r3, r2
    add r0.x, r0.x, r0.x
    mad r0.xyz, r2, -r0.x, -r3
    add r0.xyz, r0, c0.y
    dp3 r0.y, r0, r0
    rsq r0.y, r0.y
    mad r0.xy, r0.xzzw, r0.y, c5.w
    mul r0.xy, r0, c0.x
    texld r0, r0, s2
	mul r0, r0, c100.x
    mul r0.xyz, r0, c72.x
    mul r3.w, r1.w, v5.w
    mad r0.w, r1.w, v5.w, c0.z
    rcp r1.w, r3.w
    cmp r0.w, r0.w, r1.w, c0.w
    mad r3.xyz, r0, r0.w, r1
    mad_sat r0.x, r2.z, c1.x, c1.y
    mov r1.xyz, c38
    mad r0.xyz, r1, r0.x, c37
    mul r1.xyz, c18.w, c18
    dp3 r0.w, r2, -c17
    add r0.w, r0.w, -c3.w
    mul_sat r0.w, r0.w, c1.z
    mul r2.xyz, c61.xyww, v6.y
    mad r2.xyz, v6.x, c60.xyww, r2
    mad r2.xyz, v6.z, c62.xyww, r2
    add r2.xyz, r2, c63.xyww
    dp3 r1.w, c14, v6
    add r4.xyz, -r1.w, -c54
    cmp r4.yzw, r4.xxyz, c5.w, c5.x
    mov r4.x, c5.w
    dp4 r5.x, r4, c57
    dp4 r5.y, r4, c58
    dp4 r6.x, r4, c59
    dp4 r6.y, r4, c56
    mad r2.xy, r2, r5, r6
    add r4.xyz, c15, -v6
    dp3 r1.w, r4, r4
    rsq r1.w, r1.w
    rcp r1.w, r1.w
    rcp r2.w, c53.w
    mul r2.w, r1.w, r2.w
    mul r2.w, r2.w, r2.w
    mul r2.w, r2.w, c1.w
    mov r4.y, c53.y
    mad r4.xz, r4.y, c11.xyyw, r2.xyyw
    texld r5, r4.xzzw, s15
    add r4.x, r2.z, -r5.x
    cmp r4.x, r4.x, c5.w, c5.x
    mad r4.zw, r4.y, c11, r2.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r2.z, -r5.x
    cmp r4.z, r4.z, c5.w, c5.x
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c10.xyxy, r2.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r2.z, -r5.x
    cmp r4.z, r4.z, c5.w, c5.x
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c10, r2.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r2.z, -r5.x
    cmp r4.z, r4.z, c5.w, c5.x
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c9.xyxy, r2.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r2.z, -r5.x
    cmp r4.z, r4.z, c5.w, c5.x
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c9, r2.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r2.z, -r5.x
    cmp r4.z, r4.z, c5.w, c5.x
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c8.xyxy, r2.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r2.z, -r5.x
    cmp r4.z, r4.z, c5.w, c5.x
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c8, r2.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r2.z, -r5.x
    cmp r4.z, r4.z, c5.w, c5.x
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c7.xyxy, r2.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r2.z, -r5.x
    cmp r4.z, r4.z, c5.w, c5.x
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c7, r2.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r2.z, -r5.x
    cmp r4.z, r4.z, c5.w, c5.x
    add r4.x, r4.x, r4.z
    mad r4.zw, r4.y, c6.xyxy, r2.xyxy
    texld r5, r4.zwzw, s15
    add r4.z, r2.z, -r5.x
    cmp r4.z, r4.z, c5.w, c5.x
    add r4.x, r4.x, r4.z
    mad r2.xy, r4.y, c6.zwzw, r2
    texld r5, r2, s15
    add r2.x, r2.z, -r5.x
    cmp r2.x, r2.x, c5.w, c5.x
    add r2.x, r4.x, r2.x
    mad r2.x, r2.x, c2.x, r2.w
    add r1.w, r1.w, -c53.w
    cmp r2.yz, r1.w, c5.xwyw, c5.xxzw
    add r1.w, r2.x, r2.z
    cmp_sat r1.w, r1.w, r2.x, r2.y
    mul r1.xyz, r1, r0.w
    mul r1.xyz, r1.w, r1
    mad r0.xyz, r0, v5.x, r1
    mov r0.w, c5.w
    mul r1, r3, r0
    mul oC0.w, r1.w, c39.x
    add r0.w, c16.w, -v1.w
    add r1.w, -c16.z, c16.w
    rcp r1.w, r1.w
    mul_sat r0.w, r0.w, r1.w
    add r0.w, -r0.w, c5.w
    mov r2.y, c5.y
    add r2.xy, r2.y, c16
    mul r1.w, r0.w, r2.y
    mad r0.w, r0.w, r2.x, c5.w
    dp3 r1.x, r1, c2.yzww
    mad r0.xyz, r3, r0, -r1.x
    mad r0.xyz, r0.w, r0, r1.x
    add r0.w, r1.x, c4.x
    pow r2.x, r0_abs.w, r1.w
    mul r1.xyz, r0, r2.x
    rcp r0.w, c41.x
    mul_sat r0.w, r0.w, v1.w
    add r1.w, -c41.x, v1.w
    add r2.y, -c41.x, c41.y
    rcp r2.y, r2.y
    mul_sat r1.w, r1.w, r2.y
    lrp r2.y, c41.w, r0.w, r1.w
    add r0.w, r2.y, c41.z
    mov r3.xyz, c43
    add r2.yzw, -r3.xxyz, c42.xxyz
    mad r2.yzw, r1.w, r2, c43.xxyz
    mad r0.xyz, r0, -r2.x, r2.yzww
    mad oC0.xyz, r0.w, r0, r1

// approximately 182 instruction slots used (17 texture, 165 arithmetic)
