//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   samplerCUBE EnvironmentSampler;
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
    def c1, 3.99600005, 4, 0.125, 0.25
    def c2, 0.5, 0, 1, 0.25
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_color v3.xw
    dcl vPos.xy
    dcl_2d s0
    dcl_cube s1
    dcl_2d s10
    mov_sat r0.x, c39.x
    mul r0.x, r0.x, c1.x
    frc r0.y, r0.x
    mul r0.z, r0.y, c1.y
    frc r0.w, r0.z
    add r1.xy, r0.zxzw, -r0.wyzw
    mul r0.xy, c1.z, vPos
    frc r0.xy, r0_abs
    cmp r0.xy, vPos, r0, -r0
    mul r0.xy, r0, c1.w
    mad r0.xy, r1, c1.w, r0
    mov r0.zw, c0.x
    texldl r0, r0, s10
    cmp r0, -r0.y, c0.y, c0.z
    texkill r0
    texld r0, v0, s0
    add r1.xyz, c0.w, v1
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    mul r2.xyz, r1, r1.w
    add r3.xyz, c0.w, v2.xzyw
    dp3 r2.w, r3, r3
    rsq r2.w, r2.w
    mul r3.xyz, r3, r2.w
    dp3 r2.w, -r3.xzyw, r2
    add r2.w, r2.w, r2.w
    mad r2.xyz, r2.xzyw, -r2.w, -r3
    add r2.xyz, r2, c0.w
    dp3 r2.w, r2, r2
    rsq r2.w, r2.w
    mul r2.xyz, r2, r2.w
    texld r2, r2, s1
    mul r0.w, r0.w, v3.w
    mad oC0.xyz, r2, c66.x, r0
    mad r0.xyz, r1, r1.w, -c0.y
    mul oC1.xyz, r0, c2.x
    mul r0.x, r0.w, c39.x
    mov oC0.w, r0.x
    mov oC1.w, r0.x
    mad oC2.xyz, v3.x, c2.yyzw, c2.ywyw
    mov oC2.w, r0.x
    mov r0.yz, c0
    mul oC3, -r0.yzzz, c52.x

// approximately 44 instruction slots used (4 texture, 40 arithmetic)
