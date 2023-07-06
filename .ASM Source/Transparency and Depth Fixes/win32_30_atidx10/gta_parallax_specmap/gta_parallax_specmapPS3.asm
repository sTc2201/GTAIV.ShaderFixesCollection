// Fixed LOD fading & removed stipple up close
// Generated by Microsoft (R) HLSL Shader Compiler 9.23.949.2378 (ported from 1.0.4.0)
//
// Parameters:
//
//   sampler2D BumpSampler;
//   sampler2D SpecSampler;
//   sampler2D StippleTexture;
//   sampler2D TextureSampler;
//   float bumpiness;
//   float4 globalScalars;
//   float parallaxScaleBias;
//   float3 specMapIntMask;
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
//   specMapIntMask      c74      1
//   bumpiness           c75      1
//   TextureSampler      s0       1
//   BumpSampler         s1       1
//   SpecSampler         s2       1
//   StippleTexture      s10      1
//

    ps_3_0
    def c0, 9.99999975e-006, 0.5, 3.99600005, 4
    def c1, -0.00200000009, 0.001953125, 0, 0
    def c2, 0.125, 0.25, -1, -0
	def c100, 3, 0.5, 1, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord4 v2.xyz
    dcl_texcoord5 v3.xyz
    dcl_color v4.xw
    dcl_texcoord7 v5.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s10
    texld r0, v0, s1
    add r0.xyz, c0.x, v5
    dp3 r0.z, r0, r0
    rsq r0.z, r0.z
    mul r0.xy, r0, r0.z
    mov r1.y, c0.y
    mul r0.z, r1.y, c66.x
    mad r0.z, r0.w, c66.x, -r0.z
    mad r0.xy, r0.z, r0, v0
    texld r1, r0, s0
	mul_sat r1.w, r1.w, c100.x
	mul_sat r20.w, c100.x, v4.w
    mul r0.z, r1.w, r20.w
    mul r0.z, r0.z, c39.x
	mov r20.x, c39.x
	add r20.y, -r0.z, c100.y
	if_ge r20.x, c100.z
		cmp r2, r20.y, c2.z, c2.w
		texkill r2
	else
		mov_sat r0.w, r0.z
		mul r0.w, r0.w, c0.z
		frc r1.w, r0.w
		mul r2.x, r1.w, c0.w
		frc r2.y, r2.x
		add r2.x, r2.x, -r2.y
		add r2.y, r0.w, -r1.w
		mul r2.zw, c2.x, vPos.xyxy
		frc r2.zw, r2_abs
		cmp r2.zw, vPos.xyxy, r2, -r2
		mul r2.zw, r2, c2.y
		mad r2.xy, r2, c2.y, r2.zwzw
		mov r2.w, c100.w
		texldl r2, r2, s10
		cmp r2, -r2.y, c2.z, c2.w
		texkill r2
	endif
    texld r2, r0, s1
    add r0.xy, r2, -c0.y
    mul r0.xy, r0, c75.x
    dp2add r0.w, r2, -r2, -c2.z
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    mul r3.xyz, r0.x, v2
    mad r3.xyz, v1, r0.w, r3
    mad r0.xyw, r0.y, v3.xyzz, r3.xyzz
    add r0.xyw, r0, c0.x
    dp3 r1.w, r0.xyww, r0.xyww
    rsq r1.w, r1.w
    texld r3, v0, s2
    mul r2.z, r3.w, c72.x
    dp3 r2.w, r3, c74
    mul r2.w, r2.w, c73.x
    dp2add r2.x, r2, r2, c1.x
    cmp r2.x, r2.x, -c2.z, -c2.w
    mul oC0.xyz, r1, r2.x
    mul oC2.z, r2.x, v4.x
    mul r1.x, r2.w, r2.x
    mad r0.xyw, r0, r1.w, -c2.z
    mul oC1.xyz, r0.xyww, c0.y
    mul oC2.x, r1.x, c0.y
    mul r0.x, r2.z, c1.y
    rsq r0.x, r0.x
    rcp oC2.y, r0.x
    mov oC0.w, r0.z
    mov oC1.w, r0.z
    mov oC2.w, r0.z
    mov r0.zw, c2
    mul oC3, -r0.zwww, c52.x

// approximately 61 instruction slots used (5 texture, 56 arithmetic)
