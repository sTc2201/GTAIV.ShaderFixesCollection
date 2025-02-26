// Console-like ambient reflection intensity
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D GBufferStencilTextureSampler;
//   sampler2D GBufferTextureSampler0;
//   sampler2D GBufferTextureSampler1;
//   sampler2D GBufferTextureSampler2;
//   sampler2D GBufferTextureSampler3;
//   sampler2D ParabSampler;
//   float4 dReflectionParams;
//   float4 gDeferredProjParams;
//   float4 gDirectionalColour;
//   float4 gDirectionalLight;
//   float4 gLightAmbient0;
//   float4 gLightAmbient1;
//   float4 globalScalars;
//
//
// Registers:
//
//   Name                         Reg   Size
//   ---------------------------- ----- ----
//   gDirectionalLight            c17      1
//   gDirectionalColour           c18      1
//   gLightAmbient0               c37      1
//   gLightAmbient1               c38      1
//   globalScalars                c39      1
//   gDeferredProjParams          c66      1
//   dReflectionParams            c72      1
//   GBufferTextureSampler0       s0       1
//   GBufferTextureSampler1       s1       1
//   GBufferTextureSampler2       s2       1
//   GBufferTextureSampler3       s4       1
//   GBufferStencilTextureSampler s5       1
//   ParabSampler                 s6       1
//

    ps_3_0
    def c0, 0, 512, 4096, 0.00200000009
    def c1, 0.99609375, 7.96875, 63.75, 0.25
    def c2, 256, -127.999992, 0.000392156857, 4
    def c3, 2, 0.5, 1, 9.99999975e-006
    def c4, 1.33333337, -0.5, 0.5, 5
    def c5, 0.0199999996, 0.00999999978, 0.75, 0.25
    def c6, 10, 0, 0, 0
	def c20, 1.6666667, 0, 0, 0	// Reflection intensity multiplier
    dcl_texcoord v0.xy
    dcl_texcoord1 v1
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s5
    dcl_2d s6
    texld r0, v0, s1
    mul r1.xyz, r0.w, c1
    frc r1.xyz, r1
    add r2.xyz, r1, r1
    mad r2.xy, r1.yzzw, -c1.w, r2
    mad r0.xyz, r0, c2.x, r2
    add r0.xyz, r0, c2.y
    nrm r1.xyz, r0
    texld r0, v0, s4
    mad r0.x, r0.x, c66.z, -c66.w
    mul r0.x, r0.x, v1.w
    rcp r0.x, r0.x
    mad r0.yzw, v1.xxyz, -r0.x, c3.w
    mul r2.xyz, r0.x, v1
    nrm r3.xyz, r0.yzww
    dp3 r0.x, r3, r1
    add r0.y, r0.x, r0.x
    add r0.x, -r0_abs.x, c3.z
    mul r0.x, r0.x, r0.x
    mul r0.x, r0.x, r0.x
    mad r0.x, r0.x, c5.z, c5.w
    mad r0.yzw, r1.xxyz, -r0.y, r3.xxyz
    dp3 r1.w, r3, -r2
    mul_sat r2.xy, r1.w, c5
    mad r0.yzw, r3.xxyz, r2.x, r0
    add r1.w, -r2.y, c3.z
    add r0.yzw, r0, c3.w
    nrm r2.xyz, r0.yzww
    mov_sat r0.y, r2.z
    add r0.y, r0.y, c3.z
    add r0.y, r0.y, r0.y
    rcp r0.y, r0.y
    mad r0.yz, r2.xxyw, r0.y, c3.y
    mul_sat r0.w, r2.z, c4.w
    add r2.xy, -r0.yzzw, c3.z
    mul r0.y, r1.z, c2.w
    mov_sat r0.y, r0.y
    mul r0.y, r0.y, c72.y
    texld r3, v0, s5
    add r0.z, -r3.x, c2.z
    cmp r0.y, r0.z, r0.y, c0.x
    texld r3, v0, s2
    mul r0.z, r3.y, r3.y
    mul r3.yw, r0.z, c0.xyzz
    min r4.x, r3.w, c2.x
    mad r0.z, r0.z, -c0.y, r4.x
    mad r0.z, r0.y, r0.z, r3.y
    max r4.x, r3.y, r0.z
    mul_sat r0.z, r4.x, c72.x
    mul r3.y, r4.x, c0.w
    min r4.x, r3.y, c1.w
    mad r3.y, r3.x, -c3.x, r4.x
    mad r2.w, r0.z, -c2.w, c2.w
    mov r2.z, c0.x
    texldl r2, r2, s6
	mul r2, r2, c20.x	// reflection intensity tweak
    mul r2.xyz, r0.w, r2
    mul r2.xyz, r1.w, r2
    mul r2.xyz, r3.z, r2
    mul r2.xyz, r2, c39.w
    mul r0.xzw, r0.x, r2.xyyz
    add r1.w, r3.x, r3.x
    mad r2.x, r0.y, r3.y, r1.w
    mad r0.y, r0.y, -c3.y, c3.z
    max r3.x, r1.w, r2.x
    mul r0.xzw, r0, r3.x
    mul r0.xzw, r0, c6.x
    texld r2, v0, s0
    mul r2.xyz, r0.y, r2
    mad_sat r0.y, r1.z, c4.y, c4.z
    dp3 r1.x, r1, -c17
    add r1.x, r1.x, -c1.w
    mul_sat r1.x, r1.x, c4.x
    mov r4.xyz, c38
    mad r1.yzw, r4.xxyz, r0.y, c37.xxyz
    mul r1.yzw, r3.z, r1
    mul r3.xyz, c18.w, c18
    mad r1.xyz, r3, r1.x, r1.yzww
    mad oC0.xyz, r2, r1, r0.xzww
    mov oC0.w, c3.z

// approximately 86 instruction slots used (7 texture, 79 arithmetic)
