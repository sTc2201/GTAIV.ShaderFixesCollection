# GTAIV.ShaderFixesCollection
Various shader fixes for GTA IV 1.0.7.0, 1.0.8.0 and Complete Edition. The goal is to restore and fix everything from [here](https://libertycity-ru.translate.goog/gta-4/articles/4346-gta-iv-complete-edition-xbox-protiv-pc.html?_x_tr_sl=ru&amp;_x_tr_tl=en&amp;_x_tr_hl=pt-BR).

Includes
- Restored stippled transparency/LOD fading from 1.0.5.0 and older versions, and reduced the stippling effect on vegetation and fences
- Restored volumetric light shafts thanks to Vaani
- Improved depth of field and fixed resolution scaling
- Remade bloom shader with proper resolution scaling
- Fixed distorted car reflections thanks to AssaultKifle47 and increased their intensity to match consoles
- Included native FXAA thanks to RaphaelK12
- Included RaphaelK12's 5x5 gaussian [shadow filter](https://github.com/RaphaelK12/GTA4-Improved-Soft-Shadows)
- Fixed the entire screen being blurry with definition off
- Fixed excessively strong vertex AO and static vehicle shadows; also includes uncompressed textures for them
- Fixed water tiling (medium water tiling for very high water while keeping high resolution reflections)
- Fixed water texture on AMD graphics cards
- Fixed emissivestrong lights
- Increased rain and splash intensity to mostly match consoles
- Fixed black screen droplets (although refraction isn't restored yet)
- Included console-like gamma in the bottom of rage_postfx, disabled by default; also includes the xbox timecycle and vehicle.ide for reflections
- Fixed disconnected shadows/depth bias
- Fixed improper reflection mipmap dimming which made ambient reflections weaker than they're supposed to be
- Reduced z-fighting/clipping on some objects like the BAWSAQ sign and glass (disabled by default to avoid more issues)

Most shaders are commented; feel free to include any of them in your projects or to improve upon them, which there will definitely be room for.
Use the C++ version of [RAGE Shader Editor](https://gtaforums.com/topic/984675-rage-shader-editor/) to reassemble the shaders.

To-do:
- Port the Xbox screen droplet shader to PC
- Fix the water foam, which is somehow tied to the camera height
- Fix the 1.0.7.0+ fake tree shadows, which move according to the sun angle instead of stretching
