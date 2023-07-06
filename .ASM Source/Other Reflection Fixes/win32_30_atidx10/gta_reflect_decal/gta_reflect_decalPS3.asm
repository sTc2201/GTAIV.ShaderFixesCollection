// Console-like ambient reflection intensity
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D EnvironmentSampler;
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float4 globalScalars;
//   float reflectivePower;
//   float4 stencil;
//
//
// Registers:
//
//   Name               Reg   Size
//   ------------------ ----- ----
//   globalScalars      c39      1
//   stencil            c52      1
//   reflectivePower    c66      1
//   TextureSampler     s0       1
//   EnvironmentSampler s1       1
//   StippleTexture     s10      1
//

    ps_3_0
    def c0, 0, -1, -0, 9.99999975e-006
    def c1, -0.5, 0.5, 0, 0
    def c2, 3.99600005, 4, 0.125, 0.25
    def c3, 0, 1, 0.25, 0
	def c100, 1.6666667, 0, 0, 0	// Reflection intensity multiplier
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_color v3.xw
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s10
    mov_sat r0.x, c39.x
    mul r0.x, r0.x, c2.x
    frc r0.y, r0.x
    mul r0.z, r0.y, c2.y
    frc r0.w, r0.z
    add r1.xy, r0.zxzw, -r0.wyzw
    mul r0.xy, c2.z, vPos
    frc r0.xy, r0_abs
    cmp r0.xy, vPos, r0, -r0
    mul r0.xy, r0, c2.w
    mad r0.xy, r1, c2.w, r0
    mov r0.zw, c0.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c0.y, c0.z
    texkill r0
    texld r0, v0, s0
    add r1.xyz, c0.w, v1
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    mul r2.xyz, r1, r1.w
    add r3.xyz, c0.w, v2
    nrm r4.xyz, r3
    dp3 r2.w, -r4, r2
    add r2.w, r2.w, r2.w
    mad r2.xyz, r2, -r2.w, -r4
    add r2.xyz, r2, c0.w
    dp3 r2.y, r2, r2
    rsq r2.y, r2.y
    mad r2.xy, r2.xzzw, r2.y, -c0.y
    mul r2.xy, r2, c1.x
    texld r2, r2, s1
	mul r2, r2, c100.x
    mul r0.w, r0.w, v3.w
    mad oC0.xyz, r2, c66.x, r0
    mad r0.xyz, r1, r1.w, -c0.y
    mul oC1.xyz, r0, c1.y
    mul r0.x, r0.w, c39.x
    mov oC0.w, r0.x
    mov oC1.w, r0.x
    mad oC2.xyz, v3.x, c3.xxyw, c3.xzxw
    mov oC2.w, r0.x
    mov r0.yz, c0
    mul oC3, -r0.yzzz, c52.x

// approximately 45 instruction slots used (4 texture, 41 arithmetic)
