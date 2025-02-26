//
// Generated by Microsoft (R) HLSL Shader Compiler 9.26.952.2844
//
// Parameters:
//
//   sampler2D TextureSampler;
//   float4 globalScalars;
//   float4 stencil;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   globalScalars  c39      1
//   stencil        c52      1
//   TextureSampler s0       1
//

    ps_3_0
    def c0, 0.5, 0, 1, 0.25
    dcl_color v0.xw
    dcl_texcoord v1.xy
    dcl_texcoord2 v2.xyz
    dcl_2d s0
    texld r0, v1, s0
    mov oC0.xyz, r0
    mul r0.x, r0.w, v0.w
    mul r0.x, r0.x, c39.x
    mov oC0.w, r0.x
    mad oC1.xyz, v2, c0.x, c0.x
    mov oC1.w, r0.x
    mov oC2.w, r0.x
    mad oC2.xyz, v0.x, c0.yyzw, c0.ywyw
    mov r0.yz, c0
    mul oC3, r0.zyyy, c52.x

// approximately 11 instruction slots used (1 texture, 10 arithmetic)
