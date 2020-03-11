﻿Shader "NatureManufacture/HDRP/Lit/Triplanar Cover"
{
    Properties
    {
        _BaseColor("Base Color", Color) = (1,1,1,0)
[NoScaleOffset] _BaseColorMap("Base Map", 2D) = "white" {}
[ToggleUI] _BaseUsePlanarUV("Base Use Planar UV", Float) = 0
_BaseTilingOffset("Base Tiling and Offset", Vector) = (1,1,0,0)
[NoScaleOffset] _BaseNormalMap("Base Normal Map", 2D) = "bump" {}
_BaseNormalScale("Base Normal Scale ", Range(0, 8)) = 1
[NoScaleOffset] _BaseMaskMap("Base Mask Map MT(R) AO(G) SM(A)", 2D) = "white" {}
_BaseMetallic("Base Metallic ", Range(0, 1)) = 1
_BaseAORemapMin("Base AO Remap Min ", Range(0, 1)) = 0
_BaseAORemapMax("Base AO Remap Max ", Range(0, 1)) = 1
_BaseSmoothnessRemapMin("Base Smoothness Remap Min ", Range(0, 1)) = 0
_BaseSmoothnessRemapMax("Base Smoothness Remap Max ", Range(0, 1)) = 1
[ToggleUI] _UseDynamicCoverTStaticMaskF("Use Dynamic Cover (T) Static Mask (F)", Float) = 0
[NoScaleOffset] _CoverMaskA("Cover Mask (A)", 2D) = "white" {}
_CoverMaskPower("Cover Mask Power ", Range(0, 10)) = 1
_Cover_Amount("Cover Amount ", Range(0, 2)) = 0
_Cover_Amount_Grow_Speed("Cover Amount Grow Speed ", Range(0, 3)) = 3
_CoverDirection("Cover Direction", Vector) = (0,1,0,0)
_Cover_Max_Angle("Cover Max Angle ", Range(0.001, 90)) = 35
_Cover_Min_Height("Cover Min Height ", Float) = -10000
_Cover_Min_Height_Blending("Cover Min Height Blending ", Range(0, 500)) = 1
_CoverBaseColor("Cover Base Color", Color) = (1,1,1,0)
[NoScaleOffset] _CoverBaseColorMap("Cover Base Map", 2D) = "white" {}
_CoverTilingOffset("Cover Tiling Offset", Vector) = (1,1,0,0)
_CoverTriplanarThreshold("Cover Triplanar Threshold ", Range(1, 8)) = 5
[NoScaleOffset] _CoverNormalMap("Cover Normal Map", 2D) = "bump" {}
_CoverNormalScale("Cover Normal Scale ", Range(0, 8)) = 1
_CoverNormalBlendHardness("Cover Normal Blend Hardness ", Range(0, 8)) = 1
_CoverHardness("Cover Hardness ", Range(0, 10)) = 5
_CoverHeightMapMin("Cover Height Map Min ", Float) = 0
_CoverHeightMapMax("Cover Height Map Max ", Float) = 1
_CoverHeightMapOffset("Cover Height Map Offset ", Float) = 0
[NoScaleOffset] _CoverMaskMap("Cover Mask Map MT(R) AO(G) H(B) SM(A)", 2D) = "white" {}
_CoverMetallic("Cover Metallic ", Range(0, 1)) = 1
_CoverAORemapMin("Cover AO Remap Min ", Range(0, 1)) = 0
_CoverAORemapMax("Cover AO Remap Max ", Range(0, 1)) = 1
_CoverSmoothnessRemapMin("Cover Smoothness Remap Min ", Range(0, 1)) = 0
_CoverSmoothnessRemapMax("Cover Smoothness Remap Max ", Range(0, 1)) = 1
[NoScaleOffset] _DetailMap("Detail Map Base (R) Ny(G) Sm(B) Nx(A)", 2D) = "white" {}
_DetailTilingOffset("Detail Tiling Offset", Vector) = (1,1,0,0)
_DetailAlbedoScale("Detail Albedo Scale ", Range(0, 2)) = 0
_DetailNormalScale("Detail Normal Scale ", Range(0, 2)) = 0
_DetailSmoothnessScale("Detail Smoothness Scale ", Range(0, 2)) = 0
_WetColor("Wet Color Vertex(R)", Color) = (0.7735849,0.7735849,0.7735849,0)
_WetSmoothness("Wet Smoothness Vertex(R) ", Range(0, 1)) = 1
[HideInInspector] _EmissionColor("Color", Color) = (1,1,1,1)
[HideInInspector] _RenderQueueType("Vector1 ", Float) = 1
[HideInInspector] _StencilRef("Vector1 ", Int) = 0
[HideInInspector] _StencilWriteMask("Vector1 ", Int) = 3
[HideInInspector] _StencilRefDepth("Vector1 ", Int) = 0
[HideInInspector] _StencilWriteMaskDepth("Vector1 ", Int) = 32
[HideInInspector] _StencilRefMV("Vector1 ", Int) = 128
[HideInInspector] _StencilWriteMaskMV("Vector1 ", Int) = 128
[HideInInspector] _StencilRefDistortionVec("Vector1 ", Int) = 64
[HideInInspector] _StencilWriteMaskDistortionVec("Vector1 ", Int) = 64
[HideInInspector] _StencilWriteMaskGBuffer("Vector1 ", Int) = 3
[HideInInspector] _StencilRefGBuffer("Vector1 ", Int) = 2
[HideInInspector] _ZTestGBuffer("Vector1 ", Int) = 4
[HideInInspector] [ToggleUI] _RequireSplitLighting("Boolean", Float) = 0
[HideInInspector] [ToggleUI] _ReceivesSSR("Boolean", Float) = 1
[HideInInspector] _SurfaceType("Vector1 ", Float) = 0
[HideInInspector] _BlendMode("Vector1 ", Float) = 0
[HideInInspector] _SrcBlend("Vector1 ", Float) = 1
[HideInInspector] _DstBlend("Vector1 ", Float) = 0
[HideInInspector] _AlphaSrcBlend("Vector1 ", Float) = 1
[HideInInspector] _AlphaDstBlend("Vector1 ", Float) = 0
[HideInInspector] [ToggleUI] _ZWrite("Boolean", Float) = 0
[HideInInspector] _CullMode("Vector1 ", Float) = 2
[HideInInspector] _TransparentSortPriority("Vector1 ", Int) = 0
[HideInInspector] _CullModeForward("Vector1 ", Float) = 2
[HideInInspector] [Enum(Front, 1, Back, 2)] _TransparentCullMode("Vector1", Float) = 2
[HideInInspector] _ZTestDepthEqualForOpaque("Vector1 ", Int) = 4
[HideInInspector] [Enum(UnityEngine.Rendering.CompareFunction)] _ZTestTransparent("Vector1", Float) = 4
[HideInInspector] [ToggleUI] _TransparentBackfaceEnable("Boolean", Float) = 0
[HideInInspector] [ToggleUI] _AlphaCutoffEnable("Boolean", Float) = 0
[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
[HideInInspector] [ToggleUI] _UseShadowThreshold("Boolean", Float) = 0
[HideInInspector] [ToggleUI] _DoubleSidedEnable("Boolean", Float) = 0
[HideInInspector] [Enum(Flip, 0, Mirror, 1, None, 2)] _DoubleSidedNormalMode("Vector1", Float) = 2
[HideInInspector] _DoubleSidedConstants("Vector4", Vector) = (1,1,-1,0)

    }
    SubShader
    {
        Tags
        {
            "RenderPipeline"="HDRenderPipeline"
            "RenderType"="HDLitShader"
            "Queue" = "Geometry+0"
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "META"
            Tags { "LightMode" = "META" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            Cull Off
        
            
            
            
            
            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_LIGHT_TRANSPORT
                // ACTIVE FIELDS:
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.WorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Metallic
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.uv0
                //   AttributesMesh.uv1
                //   AttributesMesh.color
                //   AttributesMesh.uv2
                //   FragInputs.color
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   VaryingsMeshToPS.color
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.positionOS
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            // #define VARYINGS_NEED_TEXCOORD1
            // #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        // Generated Type: AttributesMesh
        struct AttributesMesh {
            float3 positionOS : POSITION;
            float3 normalOS : NORMAL; // optional
            float4 tangentOS : TANGENT; // optional
            float4 uv0 : TEXCOORD0; // optional
            float4 uv1 : TEXCOORD1; // optional
            float4 uv2 : TEXCOORD2; // optional
            float4 color : COLOR; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        
        // Generated Type: VaryingsMeshToPS
        struct VaryingsMeshToPS {
            float4 positionCS : SV_Position;
            float3 positionRWS; // optional
            float3 normalWS; // optional
            float4 tangentWS; // optional
            float4 texCoord0; // optional
            float4 color; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        struct PackedVaryingsMeshToPS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            float4 interp02 : TEXCOORD2; // auto-packed
            float4 interp03 : TEXCOORD3; // auto-packed
            float4 interp04 : TEXCOORD4; // auto-packed
            float4 positionCS : SV_Position; // unpacked
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            output.interp02.xyzw = input.tangentWS;
            output.interp03.xyzw = input.texCoord0;
            output.interp04.xyzw = input.color;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            output.tangentWS = input.interp02.xyzw;
            output.texCoord0 = input.interp03.xyzw;
            output.color = input.interp04.xyzw;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        
        // Generated Type: VaryingsMeshToDS
        struct VaryingsMeshToDS {
            float3 positionRWS;
            float3 normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToDS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
        {
            PackedVaryingsMeshToDS output;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
        {
            VaryingsMeshToDS output;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float _BaseNormalScale;
                    float _BaseMetallic;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _UseDynamicCoverTStaticMaskF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float3 _CoverDirection;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float4 _CoverTilingOffset;
                    float _CoverTriplanarThreshold;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverMetallic;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _AlphaCutoff;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 WorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float CoatMask;
                        float Metallic;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float (float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 WorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Multiply_float (float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_SquareRoot_float4(float4 In, out float4 Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2
                    {
                    };
                
                    void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 IN, out float3 OutVector4)
                    {
                        float4 _Property_90A62E4E_Out_0 = Color_9AA111D3;
                        float4 _SquareRoot_51430F5B_Out_1;
                        Unity_SquareRoot_float4(_Property_90A62E4E_Out_0, _SquareRoot_51430F5B_Out_1);
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Multiply_ED89DC5B_Out_2;
                        Unity_Multiply_float(_Property_33C740F_Out_0, _Property_33C740F_Out_0, _Multiply_ED89DC5B_Out_2);
                        float4 _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float4(_SquareRoot_51430F5B_Out_1, (_Ceiling_85D24F96_Out_1.xxxx), (_Multiply_ED89DC5B_Out_2.xxxx), _Lerp_CA077B77_Out_3);
                        float4 _Multiply_9305D041_Out_2;
                        Unity_Multiply_float(_Lerp_CA077B77_Out_3, _Lerp_CA077B77_Out_3, _Multiply_9305D041_Out_2);
                        OutVector4 = (_Multiply_9305D041_Out_2.xyz);
                    }
                
                    void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Multiply_float (float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Absolute_float3(float3 In, out float3 Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Power_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Multiply_float (float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A + B;
                    }
                
                    struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpacePosition;
                    };
                
                    void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea IN, out float4 XYZ, out float4 XZ, out float4 YZ, out float4 XY)
                    {
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float _Property_7A4DC59B_Out_0 = Vector1_41461AC9;
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_D99671F1_Out_2);
                        float3 _Sign_C0850857_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_C0850857_Out_1);
                        float _Split_EEBC69B5_R_1 = _Sign_C0850857_Out_1[0];
                        float _Split_EEBC69B5_G_2 = _Sign_C0850857_Out_1[1];
                        float _Split_EEBC69B5_B_3 = _Sign_C0850857_Out_1[2];
                        float _Split_EEBC69B5_A_4 = 0;
                        float2 _Vector2_7598EA98_Out_0 = float2(_Split_EEBC69B5_G_2, 1);
                        float2 _Multiply_F82F3FE2_Out_2;
                        Unity_Multiply_float((_Multiply_D99671F1_Out_2.xy), _Vector2_7598EA98_Out_0, _Multiply_F82F3FE2_Out_2);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_F82F3FE2_Out_2);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float3 _Absolute_FF95EDEB_Out_1;
                        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_FF95EDEB_Out_1);
                        float _Property_F8688E0_Out_0 = Vector1_E4D1C13A;
                        float3 _Power_C741CD3A_Out_2;
                        Unity_Power_float3(_Absolute_FF95EDEB_Out_1, (_Property_F8688E0_Out_0.xxx), _Power_C741CD3A_Out_2);
                        float3 _Multiply_3FB4A346_Out_2;
                        Unity_Multiply_float(_Power_C741CD3A_Out_2, _Power_C741CD3A_Out_2, _Multiply_3FB4A346_Out_2);
                        float _Split_98088E33_R_1 = _Multiply_3FB4A346_Out_2[0];
                        float _Split_98088E33_G_2 = _Multiply_3FB4A346_Out_2[1];
                        float _Split_98088E33_B_3 = _Multiply_3FB4A346_Out_2[2];
                        float _Split_98088E33_A_4 = 0;
                        float4 _Multiply_B99FFB12_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_RGBA_0, (_Split_98088E33_G_2.xxxx), _Multiply_B99FFB12_Out_2);
                        float4 _Combine_EAF808EA_RGBA_4;
                        float3 _Combine_EAF808EA_RGB_5;
                        float2 _Combine_EAF808EA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_G_2, 0, 0, _Combine_EAF808EA_RGBA_4, _Combine_EAF808EA_RGB_5, _Combine_EAF808EA_RG_6);
                        float4 _Multiply_9B855117_Out_2;
                        Unity_Multiply_float(_Combine_EAF808EA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_9B855117_Out_2);
                        float _Multiply_B8AC16FB_Out_2;
                        Unity_Multiply_float(_Split_EEBC69B5_B_3, -1, _Multiply_B8AC16FB_Out_2);
                        float2 _Vector2_F031282A_Out_0 = float2(_Multiply_B8AC16FB_Out_2, 1);
                        float2 _Multiply_89A39D70_Out_2;
                        Unity_Multiply_float((_Multiply_9B855117_Out_2.xy), _Vector2_F031282A_Out_0, _Multiply_89A39D70_Out_2);
                        float4 _SampleTexture2D_66E4959F_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_89A39D70_Out_2);
                        float _SampleTexture2D_66E4959F_R_4 = _SampleTexture2D_66E4959F_RGBA_0.r;
                        float _SampleTexture2D_66E4959F_G_5 = _SampleTexture2D_66E4959F_RGBA_0.g;
                        float _SampleTexture2D_66E4959F_B_6 = _SampleTexture2D_66E4959F_RGBA_0.b;
                        float _SampleTexture2D_66E4959F_A_7 = _SampleTexture2D_66E4959F_RGBA_0.a;
                        float4 _Multiply_9E620CB9_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_66E4959F_RGBA_0, (_Split_98088E33_B_3.xxxx), _Multiply_9E620CB9_Out_2);
                        float4 _Combine_D494A8E_RGBA_4;
                        float3 _Combine_D494A8E_RGB_5;
                        float2 _Combine_D494A8E_RG_6;
                        Unity_Combine_float(_Split_34F118DC_B_3, _Split_34F118DC_G_2, 0, 0, _Combine_D494A8E_RGBA_4, _Combine_D494A8E_RGB_5, _Combine_D494A8E_RG_6);
                        float4 _Multiply_1B29A9F1_Out_2;
                        Unity_Multiply_float(_Combine_D494A8E_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_1B29A9F1_Out_2);
                        float2 _Vector2_1F147BEC_Out_0 = float2(_Split_EEBC69B5_R_1, 1);
                        float2 _Multiply_5B8B54E9_Out_2;
                        Unity_Multiply_float((_Multiply_1B29A9F1_Out_2.xy), _Vector2_1F147BEC_Out_0, _Multiply_5B8B54E9_Out_2);
                        float4 _SampleTexture2D_96366F41_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_5B8B54E9_Out_2);
                        float _SampleTexture2D_96366F41_R_4 = _SampleTexture2D_96366F41_RGBA_0.r;
                        float _SampleTexture2D_96366F41_G_5 = _SampleTexture2D_96366F41_RGBA_0.g;
                        float _SampleTexture2D_96366F41_B_6 = _SampleTexture2D_96366F41_RGBA_0.b;
                        float _SampleTexture2D_96366F41_A_7 = _SampleTexture2D_96366F41_RGBA_0.a;
                        float4 _Multiply_1C5CFCC5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_96366F41_RGBA_0, (_Split_98088E33_R_1.xxxx), _Multiply_1C5CFCC5_Out_2);
                        float4 _Add_D483B2FD_Out_2;
                        Unity_Add_float4(_Multiply_9E620CB9_Out_2, _Multiply_1C5CFCC5_Out_2, _Add_D483B2FD_Out_2);
                        float4 _Add_166B5BED_Out_2;
                        Unity_Add_float4(_Multiply_B99FFB12_Out_2, _Add_D483B2FD_Out_2, _Add_166B5BED_Out_2);
                        float _Add_B73B64F6_Out_2;
                        Unity_Add_float(_Split_98088E33_R_1, _Split_98088E33_G_2, _Add_B73B64F6_Out_2);
                        float _Add_523B36E8_Out_2;
                        Unity_Add_float(_Add_B73B64F6_Out_2, _Split_98088E33_B_3, _Add_523B36E8_Out_2);
                        float4 _Divide_86C67C72_Out_2;
                        Unity_Divide_float4(_Add_166B5BED_Out_2, (_Add_523B36E8_Out_2.xxxx), _Divide_86C67C72_Out_2);
                        XYZ = _Divide_86C67C72_Out_2;
                        XZ = _SampleTexture2D_AF934D9A_RGBA_0;
                        YZ = _SampleTexture2D_66E4959F_RGBA_0;
                        XY = _SampleTexture2D_96366F41_RGBA_0;
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 WorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Add_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Divide_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A / B;
                    }
                
                    struct Bindings_TriplanarNMn_059da9746584140498cd018db3c76047
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 WorldSpacePosition;
                    };
                
                    void SG_TriplanarNMn_059da9746584140498cd018db3c76047(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNMn_059da9746584140498cd018db3c76047 IN, out float4 XYZ, out float4 XZ, out float4 YZ, out float4 XY)
                    {
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float _Property_7A4DC59B_Out_0 = Vector1_41461AC9;
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_D99671F1_Out_2);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_6E58BF97_Out_2;
                        Unity_Multiply_float((_Multiply_D99671F1_Out_2.xy), _Vector2_DC7A07A_Out_0, _Multiply_6E58BF97_Out_2);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_6E58BF97_Out_2);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_97283B7E_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_97283B7E_Out_2);
                        float3 _Vector3_A5ECB01F_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_97283B7E_Out_2, _Split_1D7F6EE9_G_2);
                        float3 _Absolute_FF95EDEB_Out_1;
                        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_FF95EDEB_Out_1);
                        float _Property_F8688E0_Out_0 = Vector1_E4D1C13A;
                        float3 _Power_C741CD3A_Out_2;
                        Unity_Power_float3(_Absolute_FF95EDEB_Out_1, (_Property_F8688E0_Out_0.xxx), _Power_C741CD3A_Out_2);
                        float3 _Multiply_3FB4A346_Out_2;
                        Unity_Multiply_float(_Power_C741CD3A_Out_2, _Power_C741CD3A_Out_2, _Multiply_3FB4A346_Out_2);
                        float _Split_98088E33_R_1 = _Multiply_3FB4A346_Out_2[0];
                        float _Split_98088E33_G_2 = _Multiply_3FB4A346_Out_2[1];
                        float _Split_98088E33_B_3 = _Multiply_3FB4A346_Out_2[2];
                        float _Split_98088E33_A_4 = 0;
                        float3 _Multiply_B99FFB12_Out_2;
                        Unity_Multiply_float(_Vector3_A5ECB01F_Out_0, (_Split_98088E33_G_2.xxx), _Multiply_B99FFB12_Out_2);
                        float4 _Combine_EAF808EA_RGBA_4;
                        float3 _Combine_EAF808EA_RGB_5;
                        float2 _Combine_EAF808EA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_G_2, 0, 0, _Combine_EAF808EA_RGBA_4, _Combine_EAF808EA_RGB_5, _Combine_EAF808EA_RG_6);
                        float4 _Multiply_9B855117_Out_2;
                        Unity_Multiply_float(_Combine_EAF808EA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_9B855117_Out_2);
                        float _Multiply_9028821C_Out_2;
                        Unity_Multiply_float(_Split_A88C5CBA_B_3, -1, _Multiply_9028821C_Out_2);
                        float2 _Vector2_34183E31_Out_0 = float2(_Multiply_9028821C_Out_2, 1);
                        float2 _Multiply_25D3DEE7_Out_2;
                        Unity_Multiply_float((_Multiply_9B855117_Out_2.xy), _Vector2_34183E31_Out_0, _Multiply_25D3DEE7_Out_2);
                        float4 _SampleTexture2D_66E4959F_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_25D3DEE7_Out_2);
                        _SampleTexture2D_66E4959F_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_66E4959F_RGBA_0);
                        float _SampleTexture2D_66E4959F_R_4 = _SampleTexture2D_66E4959F_RGBA_0.r;
                        float _SampleTexture2D_66E4959F_G_5 = _SampleTexture2D_66E4959F_RGBA_0.g;
                        float _SampleTexture2D_66E4959F_B_6 = _SampleTexture2D_66E4959F_RGBA_0.b;
                        float _SampleTexture2D_66E4959F_A_7 = _SampleTexture2D_66E4959F_RGBA_0.a;
                        float2 _Vector2_6CC92971_Out_0 = float2(_SampleTexture2D_66E4959F_R_4, _SampleTexture2D_66E4959F_G_5);
                        float2 _Multiply_EDE2F02C_Out_2;
                        Unity_Multiply_float(_Vector2_6CC92971_Out_0, _Vector2_34183E31_Out_0, _Multiply_EDE2F02C_Out_2);
                        float2 _Vector2_6D428360_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_G_2);
                        float2 _Add_6D3412BD_Out_2;
                        Unity_Add_float2(_Multiply_EDE2F02C_Out_2, _Vector2_6D428360_Out_0, _Add_6D3412BD_Out_2);
                        float _Split_79C8538A_R_1 = _Add_6D3412BD_Out_2[0];
                        float _Split_79C8538A_G_2 = _Add_6D3412BD_Out_2[1];
                        float _Split_79C8538A_B_3 = 0;
                        float _Split_79C8538A_A_4 = 0;
                        float _Multiply_576DD59F_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_66E4959F_B_6, _Split_CE0AB7C6_B_3, _Multiply_576DD59F_Out_2);
                        float3 _Vector3_77AAFCD8_Out_0 = float3(_Split_79C8538A_R_1, _Split_79C8538A_G_2, _Multiply_576DD59F_Out_2);
                        float3 _Multiply_9E620CB9_Out_2;
                        Unity_Multiply_float(_Vector3_77AAFCD8_Out_0, (_Split_98088E33_B_3.xxx), _Multiply_9E620CB9_Out_2);
                        float4 _Combine_D494A8E_RGBA_4;
                        float3 _Combine_D494A8E_RGB_5;
                        float2 _Combine_D494A8E_RG_6;
                        Unity_Combine_float(_Split_34F118DC_B_3, _Split_34F118DC_G_2, 0, 0, _Combine_D494A8E_RGBA_4, _Combine_D494A8E_RGB_5, _Combine_D494A8E_RG_6);
                        float4 _Multiply_1B29A9F1_Out_2;
                        Unity_Multiply_float(_Combine_D494A8E_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_1B29A9F1_Out_2);
                        float2 _Vector2_2EDA3EA2_Out_0 = float2(_Split_A88C5CBA_R_1, 1);
                        float2 _Multiply_4083C468_Out_2;
                        Unity_Multiply_float((_Multiply_1B29A9F1_Out_2.xy), _Vector2_2EDA3EA2_Out_0, _Multiply_4083C468_Out_2);
                        float4 _SampleTexture2D_96366F41_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_4083C468_Out_2);
                        _SampleTexture2D_96366F41_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_96366F41_RGBA_0);
                        float _SampleTexture2D_96366F41_R_4 = _SampleTexture2D_96366F41_RGBA_0.r;
                        float _SampleTexture2D_96366F41_G_5 = _SampleTexture2D_96366F41_RGBA_0.g;
                        float _SampleTexture2D_96366F41_B_6 = _SampleTexture2D_96366F41_RGBA_0.b;
                        float _SampleTexture2D_96366F41_A_7 = _SampleTexture2D_96366F41_RGBA_0.a;
                        float _Multiply_D70B5F94_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_96366F41_B_6, _Split_CE0AB7C6_R_1, _Multiply_D70B5F94_Out_2);
                        float2 _Vector2_D6F48DBF_Out_0 = float2(_SampleTexture2D_96366F41_R_4, _SampleTexture2D_96366F41_G_5);
                        float2 _Multiply_32364D17_Out_2;
                        Unity_Multiply_float(_Vector2_D6F48DBF_Out_0, _Vector2_2EDA3EA2_Out_0, _Multiply_32364D17_Out_2);
                        float2 _Vector2_5861421E_Out_0 = float2(_Split_CE0AB7C6_B_3, _Split_CE0AB7C6_G_2);
                        float2 _Add_15B5B6DC_Out_2;
                        Unity_Add_float2(_Multiply_32364D17_Out_2, _Vector2_5861421E_Out_0, _Add_15B5B6DC_Out_2);
                        float _Split_68B7323B_R_1 = _Add_15B5B6DC_Out_2[0];
                        float _Split_68B7323B_G_2 = _Add_15B5B6DC_Out_2[1];
                        float _Split_68B7323B_B_3 = 0;
                        float _Split_68B7323B_A_4 = 0;
                        float3 _Vector3_1ACBBFC4_Out_0 = float3(_Multiply_D70B5F94_Out_2, _Split_68B7323B_G_2, _Split_68B7323B_R_1);
                        float3 _Multiply_1C5CFCC5_Out_2;
                        Unity_Multiply_float(_Vector3_1ACBBFC4_Out_0, (_Split_98088E33_R_1.xxx), _Multiply_1C5CFCC5_Out_2);
                        float3 _Add_D483B2FD_Out_2;
                        Unity_Add_float3(_Multiply_9E620CB9_Out_2, _Multiply_1C5CFCC5_Out_2, _Add_D483B2FD_Out_2);
                        float3 _Add_166B5BED_Out_2;
                        Unity_Add_float3(_Multiply_B99FFB12_Out_2, _Add_D483B2FD_Out_2, _Add_166B5BED_Out_2);
                        float _Add_B73B64F6_Out_2;
                        Unity_Add_float(_Split_98088E33_R_1, _Split_98088E33_G_2, _Add_B73B64F6_Out_2);
                        float _Add_523B36E8_Out_2;
                        Unity_Add_float(_Add_B73B64F6_Out_2, _Split_98088E33_B_3, _Add_523B36E8_Out_2);
                        float3 _Divide_86C67C72_Out_2;
                        Unity_Divide_float3(_Add_166B5BED_Out_2, (_Add_523B36E8_Out_2.xxx), _Divide_86C67C72_Out_2);
                        float3x3 tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_F679F94B_Out_1 = TransformWorldToTangent(_Divide_86C67C72_Out_2.xyz, tangentTransform_World);
                        float3 _Normalize_E5F34A45_Out_1;
                        Unity_Normalize_float3(_Transform_F679F94B_Out_1, _Normalize_E5F34A45_Out_1);
                        XYZ = (float4(_Normalize_E5F34A45_Out_1, 1.0));
                        XZ = (float4(_Vector3_A5ECB01F_Out_0, 1.0));
                        YZ = (float4(_Vector3_77AAFCD8_Out_0, 1.0));
                        XY = (float4(_Vector3_1ACBBFC4_Out_0, 1.0));
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay = _Lerp_CA077B77_Out_3;
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _BaseTilingOffset;
                        float _Property_50A244CF_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_8DBCF4B4;
                        _PlanarNM_8DBCF4B4.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNM_8DBCF4B4.uv0 = IN.uv0;
                        float4 _PlanarNM_8DBCF4B4_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNM_8DBCF4B4, _PlanarNM_8DBCF4B4_XZ_2);
                        float4 _Property_3D23ECB5_Out_0 = _BaseColor;
                        float4 _Multiply_3B5A4F3A_Out_2;
                        Unity_Multiply_float(_PlanarNM_8DBCF4B4_XZ_2, _Property_3D23ECB5_Out_0, _Multiply_3B5A4F3A_Out_2);
                        float4 _Property_FC905A02_Out_0 = _DetailTilingOffset;
                        float _Split_66FEB2D6_R_1 = _Property_FC905A02_Out_0[0];
                        float _Split_66FEB2D6_G_2 = _Property_FC905A02_Out_0[1];
                        float _Split_66FEB2D6_B_3 = _Property_FC905A02_Out_0[2];
                        float _Split_66FEB2D6_A_4 = _Property_FC905A02_Out_0[3];
                        float2 _Vector2_2C65450F_Out_0 = float2(_Split_66FEB2D6_R_1, _Split_66FEB2D6_G_2);
                        float2 _Vector2_20821B1B_Out_0 = float2(_Split_66FEB2D6_B_3, _Split_66FEB2D6_A_4);
                        float2 _TilingAndOffset_AFDF49A5_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_2C65450F_Out_0, _Vector2_20821B1B_Out_0, _TilingAndOffset_AFDF49A5_Out_3);
                        float4 _SampleTexture2D_CD9C50D2_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_AFDF49A5_Out_3);
                        float _SampleTexture2D_CD9C50D2_R_4 = _SampleTexture2D_CD9C50D2_RGBA_0.r;
                        float _SampleTexture2D_CD9C50D2_G_5 = _SampleTexture2D_CD9C50D2_RGBA_0.g;
                        float _SampleTexture2D_CD9C50D2_B_6 = _SampleTexture2D_CD9C50D2_RGBA_0.b;
                        float _SampleTexture2D_CD9C50D2_A_7 = _SampleTexture2D_CD9C50D2_RGBA_0.a;
                        float _Multiply_6CEB2199_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CD9C50D2_R_4, 2, _Multiply_6CEB2199_Out_2);
                        float _Add_81546154_Out_2;
                        Unity_Add_float(_Multiply_6CEB2199_Out_2, -1, _Add_81546154_Out_2);
                        float _Property_2152BC92_Out_0 = _DetailAlbedoScale;
                        float _Multiply_4FF44BF6_Out_2;
                        Unity_Multiply_float(_Add_81546154_Out_2, _Property_2152BC92_Out_0, _Multiply_4FF44BF6_Out_2);
                        float _Saturate_44A6B3E6_Out_1;
                        Unity_Saturate_float(_Multiply_4FF44BF6_Out_2, _Saturate_44A6B3E6_Out_1);
                        float _Absolute_252B9168_Out_1;
                        Unity_Absolute_float(_Saturate_44A6B3E6_Out_1, _Absolute_252B9168_Out_1);
                        Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 _BlendOverlayBaseColor_DC11EFE2;
                        float3 _BlendOverlayBaseColor_DC11EFE2_OutVector4_1;
                        SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(_Multiply_3B5A4F3A_Out_2, _Add_81546154_Out_2, _Absolute_252B9168_Out_1, _BlendOverlayBaseColor_DC11EFE2, _BlendOverlayBaseColor_DC11EFE2_OutVector4_1);
                        float4 _Property_E0773BA3_Out_0 = _CoverTilingOffset;
                        float4 _Divide_49A78312_Out_2;
                        Unity_Divide_float4(float4(1, 1, 0, 0), _Property_E0773BA3_Out_0, _Divide_49A78312_Out_2);
                        float _Property_344EE56F_Out_0 = _CoverTriplanarThreshold;
                        Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea _TriplanarNM_3A98BEB6;
                        _TriplanarNM_3A98BEB6.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNM_3A98BEB6.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNM_3A98BEB6_XYZ_1;
                        float4 _TriplanarNM_3A98BEB6_XZ_2;
                        float4 _TriplanarNM_3A98BEB6_YZ_3;
                        float4 _TriplanarNM_3A98BEB6_XY_4;
                        SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_ARGS(_CoverBaseColorMap, sampler_CoverBaseColorMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNM_3A98BEB6, _TriplanarNM_3A98BEB6_XYZ_1, _TriplanarNM_3A98BEB6_XZ_2, _TriplanarNM_3A98BEB6_YZ_3, _TriplanarNM_3A98BEB6_XY_4);
                        float4 _Property_AF2EEB1D_Out_0 = _CoverBaseColor;
                        float4 _Multiply_64C7F396_Out_2;
                        Unity_Multiply_float(_TriplanarNM_3A98BEB6_XYZ_1, _Property_AF2EEB1D_Out_0, _Multiply_64C7F396_Out_2);
                        float _Property_4AB1A11C_Out_0 = _UseDynamicCoverTStaticMaskF;
                        float4 _UV_20D72EFB_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_E213A685_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_20D72EFB_Out_0.xy));
                        float _SampleTexture2D_E213A685_R_4 = _SampleTexture2D_E213A685_RGBA_0.r;
                        float _SampleTexture2D_E213A685_G_5 = _SampleTexture2D_E213A685_RGBA_0.g;
                        float _SampleTexture2D_E213A685_B_6 = _SampleTexture2D_E213A685_RGBA_0.b;
                        float _SampleTexture2D_E213A685_A_7 = _SampleTexture2D_E213A685_RGBA_0.a;
                        float _Property_23BACCE9_Out_0 = _CoverMaskPower;
                        float _Multiply_CEE6BF7E_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_E213A685_A_7, _Property_23BACCE9_Out_0, _Multiply_CEE6BF7E_Out_2);
                        float _Clamp_8BDA8462_Out_3;
                        Unity_Clamp_float(_Multiply_CEE6BF7E_Out_2, 0, 1, _Clamp_8BDA8462_Out_3);
                        float _Split_7AD1E82F_R_1 = IN.VertexColor[0];
                        float _Split_7AD1E82F_G_2 = IN.VertexColor[1];
                        float _Split_7AD1E82F_B_3 = IN.VertexColor[2];
                        float _Split_7AD1E82F_A_4 = IN.VertexColor[3];
                        float3 _Property_B337987A_Out_0 = _CoverDirection;
                        float2 _Vector2_D25079B9_Out_0 = float2(_SampleTexture2D_CD9C50D2_A_7, _SampleTexture2D_CD9C50D2_G_5);
                        float2 _Multiply_A6D263CC_Out_2;
                        Unity_Multiply_float(_Vector2_D25079B9_Out_0, float2(2, 2), _Multiply_A6D263CC_Out_2);
                        float2 _Add_A94F92F2_Out_2;
                        Unity_Add_float2(_Multiply_A6D263CC_Out_2, float2(-1, -1), _Add_A94F92F2_Out_2);
                        float _Property_5A04D61A_Out_0 = _DetailNormalScale;
                        float2 _Multiply_E3BBD5A0_Out_2;
                        Unity_Multiply_float(_Add_A94F92F2_Out_2, (_Property_5A04D61A_Out_0.xx), _Multiply_E3BBD5A0_Out_2);
                        float _Split_3BC0AA96_R_1 = _Multiply_E3BBD5A0_Out_2[0];
                        float _Split_3BC0AA96_G_2 = _Multiply_E3BBD5A0_Out_2[1];
                        float _Split_3BC0AA96_B_3 = 0;
                        float _Split_3BC0AA96_A_4 = 0;
                        float _DotProduct_9FB0B73C_Out_2;
                        Unity_DotProduct_float2(_Multiply_E3BBD5A0_Out_2, _Multiply_E3BBD5A0_Out_2, _DotProduct_9FB0B73C_Out_2);
                        float _Saturate_3C8C4A9B_Out_1;
                        Unity_Saturate_float(_DotProduct_9FB0B73C_Out_2, _Saturate_3C8C4A9B_Out_1);
                        float _OneMinus_E0A2EC16_Out_1;
                        Unity_OneMinus_float(_Saturate_3C8C4A9B_Out_1, _OneMinus_E0A2EC16_Out_1);
                        float _SquareRoot_7D6FC55F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_E0A2EC16_Out_1, _SquareRoot_7D6FC55F_Out_1);
                        float3 _Vector3_408E9F99_Out_0 = float3(_Split_3BC0AA96_R_1, _Split_3BC0AA96_G_2, _SquareRoot_7D6FC55F_Out_1);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_8FB4259D;
                        _PlanarNMn_8FB4259D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_8FB4259D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_8FB4259D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_8FB4259D.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNMn_8FB4259D.uv0 = IN.uv0;
                        float4 _PlanarNMn_8FB4259D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNMn_8FB4259D, _PlanarNMn_8FB4259D_XZ_2);
                        float _Property_1CABD952_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_8FB4259D_XZ_2.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float3 _NormalBlend_B205DA66_Out_2;
                        Unity_NormalBlend_float(_Vector3_408E9F99_Out_0, _NormalStrength_EDF1EB8B_Out_2, _NormalBlend_B205DA66_Out_2);
                        Bindings_TriplanarNMn_059da9746584140498cd018db3c76047 _TriplanarNMn_98A5B80C;
                        _TriplanarNMn_98A5B80C.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNMn_98A5B80C.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _TriplanarNMn_98A5B80C.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _TriplanarNMn_98A5B80C.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNMn_98A5B80C_XYZ_1;
                        float4 _TriplanarNMn_98A5B80C_XZ_2;
                        float4 _TriplanarNMn_98A5B80C_YZ_3;
                        float4 _TriplanarNMn_98A5B80C_XY_4;
                        SG_TriplanarNMn_059da9746584140498cd018db3c76047(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNMn_98A5B80C, _TriplanarNMn_98A5B80C_XYZ_1, _TriplanarNMn_98A5B80C_XZ_2, _TriplanarNMn_98A5B80C_YZ_3, _TriplanarNMn_98A5B80C_XY_4);
                        float _Property_1277E229_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D8740A3D_Out_2;
                        Unity_NormalStrength_float((_TriplanarNMn_98A5B80C_XYZ_1.xyz), _Property_1277E229_Out_0, _NormalStrength_D8740A3D_Out_2);
                        float3 _Multiply_C10488EF_Out_2;
                        Unity_Multiply_float(_Property_B337987A_Out_0, IN.WorldSpaceNormal, _Multiply_C10488EF_Out_2);
                        float _Split_F588AD82_R_1 = _Multiply_C10488EF_Out_2[0];
                        float _Split_F588AD82_G_2 = _Multiply_C10488EF_Out_2[1];
                        float _Split_F588AD82_B_3 = _Multiply_C10488EF_Out_2[2];
                        float _Split_F588AD82_A_4 = 0;
                        float _Add_1BF84D66_Out_2;
                        Unity_Add_float(_Split_F588AD82_R_1, _Split_F588AD82_G_2, _Add_1BF84D66_Out_2);
                        float _Add_55FEEDC7_Out_2;
                        Unity_Add_float(_Add_1BF84D66_Out_2, _Split_F588AD82_B_3, _Add_55FEEDC7_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Cover_Amount;
                        float _Property_7DFE3C77_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_5C7F53DB_Out_2;
                        Unity_Subtract_float(4, _Property_7DFE3C77_Out_0, _Subtract_5C7F53DB_Out_2);
                        float _Divide_2E853816_Out_2;
                        Unity_Divide_float(_Property_C3CE9B07_Out_0, _Subtract_5C7F53DB_Out_2, _Divide_2E853816_Out_2);
                        float _Absolute_B440693F_Out_1;
                        Unity_Absolute_float(_Divide_2E853816_Out_2, _Absolute_B440693F_Out_1);
                        float _Power_F952C21D_Out_2;
                        Unity_Power_float(_Absolute_B440693F_Out_1, _Subtract_5C7F53DB_Out_2, _Power_F952C21D_Out_2);
                        float _Clamp_FC9AF565_Out_3;
                        Unity_Clamp_float(_Power_F952C21D_Out_2, 0, 2, _Clamp_FC9AF565_Out_3);
                        float _Multiply_2164B3E7_Out_2;
                        Unity_Multiply_float(_Add_55FEEDC7_Out_2, _Clamp_FC9AF565_Out_3, _Multiply_2164B3E7_Out_2);
                        float _Saturate_173154BF_Out_1;
                        Unity_Saturate_float(_Multiply_2164B3E7_Out_2, _Saturate_173154BF_Out_1);
                        float _Clamp_898505F7_Out_3;
                        Unity_Clamp_float(_Add_55FEEDC7_Out_2, 0, 0.9999, _Clamp_898505F7_Out_3);
                        float _Property_A5C9D674_Out_0 = _Cover_Max_Angle;
                        float _Divide_87E47C29_Out_2;
                        Unity_Divide_float(_Property_A5C9D674_Out_0, 45, _Divide_87E47C29_Out_2);
                        float _OneMinus_18BF8D3A_Out_1;
                        Unity_OneMinus_float(_Divide_87E47C29_Out_2, _OneMinus_18BF8D3A_Out_1);
                        float _Subtract_CACC9F64_Out_2;
                        Unity_Subtract_float(_Clamp_898505F7_Out_3, _OneMinus_18BF8D3A_Out_1, _Subtract_CACC9F64_Out_2);
                        float _Clamp_989AEDE1_Out_3;
                        Unity_Clamp_float(_Subtract_CACC9F64_Out_2, 0, 2, _Clamp_989AEDE1_Out_3);
                        float _Divide_FFC65CC2_Out_2;
                        Unity_Divide_float(1, _Divide_87E47C29_Out_2, _Divide_FFC65CC2_Out_2);
                        float _Multiply_F5867110_Out_2;
                        Unity_Multiply_float(_Clamp_989AEDE1_Out_3, _Divide_FFC65CC2_Out_2, _Multiply_F5867110_Out_2);
                        float _Absolute_D89283B3_Out_1;
                        Unity_Absolute_float(_Multiply_F5867110_Out_2, _Absolute_D89283B3_Out_1);
                        float _Property_9B9027DB_Out_0 = _CoverHardness;
                        float _Power_B072AE57_Out_2;
                        Unity_Power_float(_Absolute_D89283B3_Out_1, _Property_9B9027DB_Out_0, _Power_B072AE57_Out_2);
                        float _Property_388C9B8B_Out_0 = _Cover_Min_Height;
                        float _OneMinus_4583AA8B_Out_1;
                        Unity_OneMinus_float(_Property_388C9B8B_Out_0, _OneMinus_4583AA8B_Out_1);
                        float _Split_E686ABCF_R_1 = IN.WorldSpacePosition[0];
                        float _Split_E686ABCF_G_2 = IN.WorldSpacePosition[1];
                        float _Split_E686ABCF_B_3 = IN.WorldSpacePosition[2];
                        float _Split_E686ABCF_A_4 = 0;
                        float _Add_BF4A84A1_Out_2;
                        Unity_Add_float(_OneMinus_4583AA8B_Out_1, _Split_E686ABCF_G_2, _Add_BF4A84A1_Out_2);
                        float _Add_6E3AF2BE_Out_2;
                        Unity_Add_float(_Add_BF4A84A1_Out_2, 1, _Add_6E3AF2BE_Out_2);
                        float _Clamp_4453A0AC_Out_3;
                        Unity_Clamp_float(_Add_6E3AF2BE_Out_2, 0, 1, _Clamp_4453A0AC_Out_3);
                        float _Property_24108C8C_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_1CB6388C_Out_2;
                        Unity_Add_float(_Add_BF4A84A1_Out_2, _Property_24108C8C_Out_0, _Add_1CB6388C_Out_2);
                        float _Divide_62D3B622_Out_2;
                        Unity_Divide_float(_Add_1CB6388C_Out_2, _Add_BF4A84A1_Out_2, _Divide_62D3B622_Out_2);
                        float _OneMinus_9A3B328E_Out_1;
                        Unity_OneMinus_float(_Divide_62D3B622_Out_2, _OneMinus_9A3B328E_Out_1);
                        float _Add_60A40097_Out_2;
                        Unity_Add_float(_OneMinus_9A3B328E_Out_1, -0.5, _Add_60A40097_Out_2);
                        float _Clamp_BF85F16F_Out_3;
                        Unity_Clamp_float(_Add_60A40097_Out_2, 0, 1, _Clamp_BF85F16F_Out_3);
                        float _Add_15252D0D_Out_2;
                        Unity_Add_float(_Clamp_4453A0AC_Out_3, _Clamp_BF85F16F_Out_3, _Add_15252D0D_Out_2);
                        float _Clamp_9B57A26B_Out_3;
                        Unity_Clamp_float(_Add_15252D0D_Out_2, 0, 1, _Clamp_9B57A26B_Out_3);
                        float _Multiply_C95AF257_Out_2;
                        Unity_Multiply_float(_Power_B072AE57_Out_2, _Clamp_9B57A26B_Out_3, _Multiply_C95AF257_Out_2);
                        float _Multiply_FF8131E5_Out_2;
                        Unity_Multiply_float(_Saturate_173154BF_Out_1, _Multiply_C95AF257_Out_2, _Multiply_FF8131E5_Out_2);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_NormalBlend_B205DA66_Out_2, _NormalStrength_D8740A3D_Out_2, (_Multiply_FF8131E5_Out_2.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_8AB587B2_Out_1 = mul(transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float3 _Multiply_40FEF87C_Out_2;
                        Unity_Multiply_float(_Property_B337987A_Out_0, _Transform_8AB587B2_Out_1, _Multiply_40FEF87C_Out_2);
                        float _Split_2E5CD9E3_R_1 = _Multiply_40FEF87C_Out_2[0];
                        float _Split_2E5CD9E3_G_2 = _Multiply_40FEF87C_Out_2[1];
                        float _Split_2E5CD9E3_B_3 = _Multiply_40FEF87C_Out_2[2];
                        float _Split_2E5CD9E3_A_4 = 0;
                        float _Add_931DAB0_Out_2;
                        Unity_Add_float(_Split_2E5CD9E3_R_1, _Split_2E5CD9E3_G_2, _Add_931DAB0_Out_2);
                        float _Add_896997D2_Out_2;
                        Unity_Add_float(_Add_931DAB0_Out_2, _Split_2E5CD9E3_B_3, _Add_896997D2_Out_2);
                        float _Multiply_E09536CA_Out_2;
                        Unity_Multiply_float(_Add_896997D2_Out_2, _Clamp_FC9AF565_Out_3, _Multiply_E09536CA_Out_2);
                        float _Multiply_4EFF53BC_Out_2;
                        Unity_Multiply_float(_Clamp_FC9AF565_Out_3, _Property_9B9027DB_Out_0, _Multiply_4EFF53BC_Out_2);
                        float _Multiply_EECDD75E_Out_2;
                        Unity_Multiply_float(_Multiply_4EFF53BC_Out_2, _Multiply_C95AF257_Out_2, _Multiply_EECDD75E_Out_2);
                        float _Multiply_D777B623_Out_2;
                        Unity_Multiply_float(_Multiply_E09536CA_Out_2, _Multiply_EECDD75E_Out_2, _Multiply_D777B623_Out_2);
                        Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea _TriplanarNM_38475939;
                        _TriplanarNM_38475939.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNM_38475939.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNM_38475939_XYZ_1;
                        float4 _TriplanarNM_38475939_XZ_2;
                        float4 _TriplanarNM_38475939_YZ_3;
                        float4 _TriplanarNM_38475939_XY_4;
                        SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNM_38475939, _TriplanarNM_38475939_XYZ_1, _TriplanarNM_38475939_XZ_2, _TriplanarNM_38475939_YZ_3, _TriplanarNM_38475939_XY_4);
                        float _Split_824C6099_R_1 = _TriplanarNM_38475939_XYZ_1[0];
                        float _Split_824C6099_G_2 = _TriplanarNM_38475939_XYZ_1[1];
                        float _Split_824C6099_B_3 = _TriplanarNM_38475939_XYZ_1[2];
                        float _Split_824C6099_A_4 = _TriplanarNM_38475939_XYZ_1[3];
                        float _Property_830946EB_Out_0 = _CoverHeightMapMin;
                        float _Property_A7E18B9F_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_4BC0C782_Out_0 = float2(_Property_830946EB_Out_0, _Property_A7E18B9F_Out_0);
                        float _Property_C3051ECE_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_242BA7BA_Out_2;
                        Unity_Add_float2(_Vector2_4BC0C782_Out_0, (_Property_C3051ECE_Out_0.xx), _Add_242BA7BA_Out_2);
                        float _Remap_C868580B_Out_3;
                        Unity_Remap_float(_Split_824C6099_B_3, float2 (0, 1), _Add_242BA7BA_Out_2, _Remap_C868580B_Out_3);
                        float _Multiply_5610F739_Out_2;
                        Unity_Multiply_float(_Multiply_D777B623_Out_2, _Remap_C868580B_Out_3, _Multiply_5610F739_Out_2);
                        float _Multiply_EF26B04B_Out_2;
                        Unity_Multiply_float(_Split_7AD1E82F_G_2, _Multiply_5610F739_Out_2, _Multiply_EF26B04B_Out_2);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Multiply_EF26B04B_Out_2, _Saturate_456E02AA_Out_1);
                        float _Multiply_17104BB2_Out_2;
                        Unity_Multiply_float(_Clamp_8BDA8462_Out_3, _Saturate_456E02AA_Out_1, _Multiply_17104BB2_Out_2);
                        float _Branch_D6B0024E_Out_3;
                        Unity_Branch_float(_Property_4AB1A11C_Out_0, _Multiply_17104BB2_Out_2, _Clamp_8BDA8462_Out_3, _Branch_D6B0024E_Out_3);
                        float3 _Lerp_75D9504F_Out_3;
                        Unity_Lerp_float3(_BlendOverlayBaseColor_DC11EFE2_OutVector4_1, (_Multiply_64C7F396_Out_2.xyz), (_Branch_D6B0024E_Out_3.xxx), _Lerp_75D9504F_Out_3);
                        float4 _Property_E4885F4_Out_0 = _WetColor;
                        float3 _Multiply_CAF8A50C_Out_2;
                        Unity_Multiply_float((_Property_E4885F4_Out_0.xyz), _Lerp_75D9504F_Out_3, _Multiply_CAF8A50C_Out_2);
                        float _OneMinus_69E30394_Out_1;
                        Unity_OneMinus_float(_Split_7AD1E82F_R_1, _OneMinus_69E30394_Out_1);
                        float3 _Lerp_1AB1B2C4_Out_3;
                        Unity_Lerp_float3(_Lerp_75D9504F_Out_3, _Multiply_CAF8A50C_Out_2, (_OneMinus_69E30394_Out_1.xxx), _Lerp_1AB1B2C4_Out_3);
                        float _Property_2BC6CE93_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_D9292962_Out_2;
                        Unity_NormalStrength_float((_TriplanarNMn_98A5B80C_XYZ_1.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_D9292962_Out_2);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_NormalBlend_B205DA66_Out_2, _NormalStrength_D9292962_Out_2, (_Branch_D6B0024E_Out_3.xxx), _Lerp_CC69B645_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_D55871DB;
                        _PlanarNM_D55871DB.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNM_D55871DB.uv0 = IN.uv0;
                        float4 _PlanarNM_D55871DB_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNM_D55871DB, _PlanarNM_D55871DB_XZ_2);
                        float _Split_65F1C04F_R_1 = _PlanarNM_D55871DB_XZ_2[0];
                        float _Split_65F1C04F_G_2 = _PlanarNM_D55871DB_XZ_2[1];
                        float _Split_65F1C04F_B_3 = _PlanarNM_D55871DB_XZ_2[2];
                        float _Split_65F1C04F_A_4 = _PlanarNM_D55871DB_XZ_2[3];
                        float _Property_25A8FF3A_Out_0 = _BaseMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_Split_65F1C04F_R_1, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _BaseAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_Split_65F1C04F_G_2, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_Split_65F1C04F_A_4, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float _Multiply_55B1F0BE_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CD9C50D2_B_6, 2, _Multiply_55B1F0BE_Out_2);
                        float _Add_AE24F590_Out_2;
                        Unity_Add_float(_Multiply_55B1F0BE_Out_2, -1, _Add_AE24F590_Out_2);
                        float _Property_B5AB31DA_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_C0EAB2EE_Out_2;
                        Unity_Multiply_float(_Add_AE24F590_Out_2, _Property_B5AB31DA_Out_0, _Multiply_C0EAB2EE_Out_2);
                        float _Saturate_1F246CE5_Out_1;
                        Unity_Saturate_float(_Multiply_C0EAB2EE_Out_2, _Saturate_1F246CE5_Out_1);
                        float _Absolute_95405FDB_Out_1;
                        Unity_Absolute_float(_Saturate_1F246CE5_Out_1, _Absolute_95405FDB_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_3B17247C;
                        float _BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_4C121471_Out_3, _Add_AE24F590_Out_2, _Absolute_95405FDB_Out_1, _BlendOverlayDetailSmoothness_3B17247C, _BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1);
                        float _Saturate_F6661092_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1, _Saturate_F6661092_Out_1);
                        float3 _Vector3_FEF1FB88_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Saturate_F6661092_Out_1);
                        float _Property_88D7F675_Out_0 = _CoverMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_Split_824C6099_R_1, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _CoverAORemapMin;
                        float _Property_C5C18557_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_Split_824C6099_G_2, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_Split_824C6099_A_4, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_4B858D29_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Vector3_FEF1FB88_Out_0, _Vector3_4B858D29_Out_0, (_Branch_D6B0024E_Out_3.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        float _Property_328F033C_Out_0 = _WetSmoothness;
                        float _Lerp_1DEC7741_Out_3;
                        Unity_Lerp_float(_Split_BF192904_B_3, _Property_328F033C_Out_0, _OneMinus_69E30394_Out_1, _Lerp_1DEC7741_Out_3);
                        surface.Albedo = _Lerp_1AB1B2C4_Out_3;
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.CoatMask = 0;
                        surface.Metallic = _Split_BF192904_R_1;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Lerp_1DEC7741_Out_3;
                        surface.Occlusion = _Split_BF192904_G_2;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
            FragInputs BuildFragInputs(VaryingsMeshToPS input)
            {
                FragInputs output;
                ZERO_INITIALIZE(FragInputs, output);
        
                // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                // to compute normals which are then passed on elsewhere to compute other values...
                output.tangentToWorld = k_identity3x3;
                output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
                output.positionRWS = input.positionRWS;
                output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                output.texCoord0 = input.texCoord0;
                // output.texCoord1 = input.texCoord1;
                // output.texCoord2 = input.texCoord2;
                // output.texCoord3 = input.texCoord3;
                output.color = input.color;
                #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #elif SHADER_STAGE_FRAGMENT
                // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #endif // SHADER_STAGE_FRAGMENT
        
                return output;
            }
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            // existing HDRP code uses the combined function to go directly from packed to frag inputs
            FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
            {
                UNITY_SETUP_INSTANCE_ID(input);
                VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                return BuildFragInputs(unpacked);
            }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // copy across graph values, if defined
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
                surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #else
                surfaceData.specularOcclusion = 1.0;
        #endif
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx)); // Quantize V to _ScreenSize values
                LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassLightTransport.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "ShadowCaster"
            Tags { "LightMode" = "ShadowCaster" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            Cull [_CullMode]
        
            
            ZWrite On
        
            ZClip [_ZClip]
        
            
            ColorMask 0
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            // #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_SHADOWS
                // ACTIVE FIELDS:
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescription.Alpha
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            // #define ATTRIBUTES_NEED_NORMAL
            // #define ATTRIBUTES_NEED_TANGENT
            // #define ATTRIBUTES_NEED_TEXCOORD0
            // #define ATTRIBUTES_NEED_TEXCOORD1
            // #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            // #define ATTRIBUTES_NEED_COLOR
            // #define VARYINGS_NEED_POSITION_WS
            // #define VARYINGS_NEED_TANGENT_TO_WORLD
            // #define VARYINGS_NEED_TEXCOORD0
            // #define VARYINGS_NEED_TEXCOORD1
            // #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            // #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        // Generated Type: AttributesMesh
        struct AttributesMesh {
            float3 positionOS : POSITION;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        
        // Generated Type: VaryingsMeshToPS
        struct VaryingsMeshToPS {
            float4 positionCS : SV_Position;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        struct PackedVaryingsMeshToPS {
            float4 positionCS : SV_Position; // unpacked
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        
        // Generated Type: VaryingsMeshToDS
        struct VaryingsMeshToDS {
            float3 positionRWS;
            float3 normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToDS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
        {
            PackedVaryingsMeshToDS output;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
        {
            VaryingsMeshToDS output;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float _BaseNormalScale;
                    float _BaseMetallic;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _UseDynamicCoverTStaticMaskF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float3 _CoverDirection;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float4 _CoverTilingOffset;
                    float _CoverTriplanarThreshold;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverMetallic;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _AlphaCutoff;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs {
                        float3 TangentSpaceNormal; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
            FragInputs BuildFragInputs(VaryingsMeshToPS input)
            {
                FragInputs output;
                ZERO_INITIALIZE(FragInputs, output);
        
                // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                // to compute normals which are then passed on elsewhere to compute other values...
                output.tangentToWorld = k_identity3x3;
                output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
                // output.positionRWS = input.positionRWS;
                // output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                // output.texCoord0 = input.texCoord0;
                // output.texCoord1 = input.texCoord1;
                // output.texCoord2 = input.texCoord2;
                // output.texCoord3 = input.texCoord3;
                // output.color = input.color;
                #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #elif SHADER_STAGE_FRAGMENT
                // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #endif // SHADER_STAGE_FRAGMENT
        
                return output;
            }
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                // output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                // output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                // output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                // output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                // output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            // existing HDRP code uses the combined function to go directly from packed to frag inputs
            FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
            {
                UNITY_SETUP_INSTANCE_ID(input);
                VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                return BuildFragInputs(unpacked);
            }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // copy across graph values, if defined
                // surfaceData.baseColor =                 surfaceDescription.Albedo;
                // surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                // surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
                // surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                // normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #else
                surfaceData.specularOcclusion = 1.0;
        #endif
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx)); // Quantize V to _ScreenSize values
                LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                // builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "SceneSelectionPass"
            Tags { "LightMode" = "SceneSelectionPass" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            
            
            
            
            
            ColorMask 0
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            // #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_DEPTH_ONLY
                #define SCENESELECTIONPASS
                #pragma editor_sync_compilation
                // ACTIVE FIELDS:
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescription.Alpha
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            // #define ATTRIBUTES_NEED_NORMAL
            // #define ATTRIBUTES_NEED_TANGENT
            // #define ATTRIBUTES_NEED_TEXCOORD0
            // #define ATTRIBUTES_NEED_TEXCOORD1
            // #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            // #define ATTRIBUTES_NEED_COLOR
            // #define VARYINGS_NEED_POSITION_WS
            // #define VARYINGS_NEED_TANGENT_TO_WORLD
            // #define VARYINGS_NEED_TEXCOORD0
            // #define VARYINGS_NEED_TEXCOORD1
            // #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            // #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        // Generated Type: AttributesMesh
        struct AttributesMesh {
            float3 positionOS : POSITION;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        
        // Generated Type: VaryingsMeshToPS
        struct VaryingsMeshToPS {
            float4 positionCS : SV_Position;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        struct PackedVaryingsMeshToPS {
            float4 positionCS : SV_Position; // unpacked
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        
        // Generated Type: VaryingsMeshToDS
        struct VaryingsMeshToDS {
            float3 positionRWS;
            float3 normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToDS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
        {
            PackedVaryingsMeshToDS output;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
        {
            VaryingsMeshToDS output;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float _BaseNormalScale;
                    float _BaseMetallic;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _UseDynamicCoverTStaticMaskF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float3 _CoverDirection;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float4 _CoverTilingOffset;
                    float _CoverTriplanarThreshold;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverMetallic;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _AlphaCutoff;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs {
                        float3 TangentSpaceNormal; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
            FragInputs BuildFragInputs(VaryingsMeshToPS input)
            {
                FragInputs output;
                ZERO_INITIALIZE(FragInputs, output);
        
                // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                // to compute normals which are then passed on elsewhere to compute other values...
                output.tangentToWorld = k_identity3x3;
                output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
                // output.positionRWS = input.positionRWS;
                // output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                // output.texCoord0 = input.texCoord0;
                // output.texCoord1 = input.texCoord1;
                // output.texCoord2 = input.texCoord2;
                // output.texCoord3 = input.texCoord3;
                // output.color = input.color;
                #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #elif SHADER_STAGE_FRAGMENT
                // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #endif // SHADER_STAGE_FRAGMENT
        
                return output;
            }
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                // output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                // output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                // output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                // output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                // output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                // output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            // existing HDRP code uses the combined function to go directly from packed to frag inputs
            FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
            {
                UNITY_SETUP_INSTANCE_ID(input);
                VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                return BuildFragInputs(unpacked);
            }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // copy across graph values, if defined
                // surfaceData.baseColor =                 surfaceDescription.Albedo;
                // surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                // surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
                // surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                // normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #else
                surfaceData.specularOcclusion = 1.0;
        #endif
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx)); // Quantize V to _ScreenSize values
                LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                // builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "DepthOnly"
            Tags { "LightMode" = "DepthOnly" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            Cull [_CullMode]
        
            
            ZWrite On
        
            
            // Stencil setup
        Stencil
        {
           WriteMask [_StencilWriteMaskDepth]
           Ref [_StencilRefDepth]
           Comp Always
           Pass Replace
        }
        
            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            // #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_DEPTH_ONLY
                #pragma multi_compile _ WRITE_NORMAL_BUFFER
                #pragma multi_compile _ WRITE_MSAA_DEPTH
                // ACTIVE FIELDS:
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.WorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescription.Normal
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Alpha
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.uv0
                //   AttributesMesh.uv1
                //   AttributesMesh.color
                //   AttributesMesh.uv2
                //   AttributesMesh.uv3
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   FragInputs.texCoord1
                //   FragInputs.texCoord2
                //   FragInputs.texCoord3
                //   FragInputs.color
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord1
                //   VaryingsMeshToPS.texCoord2
                //   VaryingsMeshToPS.texCoord3
                //   VaryingsMeshToPS.color
                //   AttributesMesh.positionOS
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define ATTRIBUTES_NEED_TEXCOORD3
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
            #define VARYINGS_NEED_TEXCOORD3
            #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        // Generated Type: AttributesMesh
        struct AttributesMesh {
            float3 positionOS : POSITION;
            float3 normalOS : NORMAL; // optional
            float4 tangentOS : TANGENT; // optional
            float4 uv0 : TEXCOORD0; // optional
            float4 uv1 : TEXCOORD1; // optional
            float4 uv2 : TEXCOORD2; // optional
            float4 uv3 : TEXCOORD3; // optional
            float4 color : COLOR; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        
        // Generated Type: VaryingsMeshToPS
        struct VaryingsMeshToPS {
            float4 positionCS : SV_Position;
            float3 positionRWS; // optional
            float3 normalWS; // optional
            float4 tangentWS; // optional
            float4 texCoord0; // optional
            float4 texCoord1; // optional
            float4 texCoord2; // optional
            float4 texCoord3; // optional
            float4 color; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        struct PackedVaryingsMeshToPS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            float4 interp02 : TEXCOORD2; // auto-packed
            float4 interp03 : TEXCOORD3; // auto-packed
            float4 interp04 : TEXCOORD4; // auto-packed
            float4 interp05 : TEXCOORD5; // auto-packed
            float4 interp06 : TEXCOORD6; // auto-packed
            float4 interp07 : TEXCOORD7; // auto-packed
            float4 positionCS : SV_Position; // unpacked
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            output.interp02.xyzw = input.tangentWS;
            output.interp03.xyzw = input.texCoord0;
            output.interp04.xyzw = input.texCoord1;
            output.interp05.xyzw = input.texCoord2;
            output.interp06.xyzw = input.texCoord3;
            output.interp07.xyzw = input.color;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            output.tangentWS = input.interp02.xyzw;
            output.texCoord0 = input.interp03.xyzw;
            output.texCoord1 = input.interp04.xyzw;
            output.texCoord2 = input.interp05.xyzw;
            output.texCoord3 = input.interp06.xyzw;
            output.color = input.interp07.xyzw;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        
        // Generated Type: VaryingsMeshToDS
        struct VaryingsMeshToDS {
            float3 positionRWS;
            float3 normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToDS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
        {
            PackedVaryingsMeshToDS output;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
        {
            VaryingsMeshToDS output;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float _BaseNormalScale;
                    float _BaseMetallic;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _UseDynamicCoverTStaticMaskF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float3 _CoverDirection;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float4 _CoverTilingOffset;
                    float _CoverTriplanarThreshold;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverMetallic;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _AlphaCutoff;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 WorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Normal;
                        float Smoothness;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float (float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float (float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Multiply_float (float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 WorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Absolute_float3(float3 In, out float3 Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Power_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Multiply_float (float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Divide_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A / B;
                    }
                
                    struct Bindings_TriplanarNMn_059da9746584140498cd018db3c76047
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 WorldSpacePosition;
                    };
                
                    void SG_TriplanarNMn_059da9746584140498cd018db3c76047(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNMn_059da9746584140498cd018db3c76047 IN, out float4 XYZ, out float4 XZ, out float4 YZ, out float4 XY)
                    {
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float _Property_7A4DC59B_Out_0 = Vector1_41461AC9;
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_D99671F1_Out_2);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_6E58BF97_Out_2;
                        Unity_Multiply_float((_Multiply_D99671F1_Out_2.xy), _Vector2_DC7A07A_Out_0, _Multiply_6E58BF97_Out_2);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_6E58BF97_Out_2);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_97283B7E_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_97283B7E_Out_2);
                        float3 _Vector3_A5ECB01F_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_97283B7E_Out_2, _Split_1D7F6EE9_G_2);
                        float3 _Absolute_FF95EDEB_Out_1;
                        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_FF95EDEB_Out_1);
                        float _Property_F8688E0_Out_0 = Vector1_E4D1C13A;
                        float3 _Power_C741CD3A_Out_2;
                        Unity_Power_float3(_Absolute_FF95EDEB_Out_1, (_Property_F8688E0_Out_0.xxx), _Power_C741CD3A_Out_2);
                        float3 _Multiply_3FB4A346_Out_2;
                        Unity_Multiply_float(_Power_C741CD3A_Out_2, _Power_C741CD3A_Out_2, _Multiply_3FB4A346_Out_2);
                        float _Split_98088E33_R_1 = _Multiply_3FB4A346_Out_2[0];
                        float _Split_98088E33_G_2 = _Multiply_3FB4A346_Out_2[1];
                        float _Split_98088E33_B_3 = _Multiply_3FB4A346_Out_2[2];
                        float _Split_98088E33_A_4 = 0;
                        float3 _Multiply_B99FFB12_Out_2;
                        Unity_Multiply_float(_Vector3_A5ECB01F_Out_0, (_Split_98088E33_G_2.xxx), _Multiply_B99FFB12_Out_2);
                        float4 _Combine_EAF808EA_RGBA_4;
                        float3 _Combine_EAF808EA_RGB_5;
                        float2 _Combine_EAF808EA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_G_2, 0, 0, _Combine_EAF808EA_RGBA_4, _Combine_EAF808EA_RGB_5, _Combine_EAF808EA_RG_6);
                        float4 _Multiply_9B855117_Out_2;
                        Unity_Multiply_float(_Combine_EAF808EA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_9B855117_Out_2);
                        float _Multiply_9028821C_Out_2;
                        Unity_Multiply_float(_Split_A88C5CBA_B_3, -1, _Multiply_9028821C_Out_2);
                        float2 _Vector2_34183E31_Out_0 = float2(_Multiply_9028821C_Out_2, 1);
                        float2 _Multiply_25D3DEE7_Out_2;
                        Unity_Multiply_float((_Multiply_9B855117_Out_2.xy), _Vector2_34183E31_Out_0, _Multiply_25D3DEE7_Out_2);
                        float4 _SampleTexture2D_66E4959F_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_25D3DEE7_Out_2);
                        _SampleTexture2D_66E4959F_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_66E4959F_RGBA_0);
                        float _SampleTexture2D_66E4959F_R_4 = _SampleTexture2D_66E4959F_RGBA_0.r;
                        float _SampleTexture2D_66E4959F_G_5 = _SampleTexture2D_66E4959F_RGBA_0.g;
                        float _SampleTexture2D_66E4959F_B_6 = _SampleTexture2D_66E4959F_RGBA_0.b;
                        float _SampleTexture2D_66E4959F_A_7 = _SampleTexture2D_66E4959F_RGBA_0.a;
                        float2 _Vector2_6CC92971_Out_0 = float2(_SampleTexture2D_66E4959F_R_4, _SampleTexture2D_66E4959F_G_5);
                        float2 _Multiply_EDE2F02C_Out_2;
                        Unity_Multiply_float(_Vector2_6CC92971_Out_0, _Vector2_34183E31_Out_0, _Multiply_EDE2F02C_Out_2);
                        float2 _Vector2_6D428360_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_G_2);
                        float2 _Add_6D3412BD_Out_2;
                        Unity_Add_float2(_Multiply_EDE2F02C_Out_2, _Vector2_6D428360_Out_0, _Add_6D3412BD_Out_2);
                        float _Split_79C8538A_R_1 = _Add_6D3412BD_Out_2[0];
                        float _Split_79C8538A_G_2 = _Add_6D3412BD_Out_2[1];
                        float _Split_79C8538A_B_3 = 0;
                        float _Split_79C8538A_A_4 = 0;
                        float _Multiply_576DD59F_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_66E4959F_B_6, _Split_CE0AB7C6_B_3, _Multiply_576DD59F_Out_2);
                        float3 _Vector3_77AAFCD8_Out_0 = float3(_Split_79C8538A_R_1, _Split_79C8538A_G_2, _Multiply_576DD59F_Out_2);
                        float3 _Multiply_9E620CB9_Out_2;
                        Unity_Multiply_float(_Vector3_77AAFCD8_Out_0, (_Split_98088E33_B_3.xxx), _Multiply_9E620CB9_Out_2);
                        float4 _Combine_D494A8E_RGBA_4;
                        float3 _Combine_D494A8E_RGB_5;
                        float2 _Combine_D494A8E_RG_6;
                        Unity_Combine_float(_Split_34F118DC_B_3, _Split_34F118DC_G_2, 0, 0, _Combine_D494A8E_RGBA_4, _Combine_D494A8E_RGB_5, _Combine_D494A8E_RG_6);
                        float4 _Multiply_1B29A9F1_Out_2;
                        Unity_Multiply_float(_Combine_D494A8E_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_1B29A9F1_Out_2);
                        float2 _Vector2_2EDA3EA2_Out_0 = float2(_Split_A88C5CBA_R_1, 1);
                        float2 _Multiply_4083C468_Out_2;
                        Unity_Multiply_float((_Multiply_1B29A9F1_Out_2.xy), _Vector2_2EDA3EA2_Out_0, _Multiply_4083C468_Out_2);
                        float4 _SampleTexture2D_96366F41_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_4083C468_Out_2);
                        _SampleTexture2D_96366F41_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_96366F41_RGBA_0);
                        float _SampleTexture2D_96366F41_R_4 = _SampleTexture2D_96366F41_RGBA_0.r;
                        float _SampleTexture2D_96366F41_G_5 = _SampleTexture2D_96366F41_RGBA_0.g;
                        float _SampleTexture2D_96366F41_B_6 = _SampleTexture2D_96366F41_RGBA_0.b;
                        float _SampleTexture2D_96366F41_A_7 = _SampleTexture2D_96366F41_RGBA_0.a;
                        float _Multiply_D70B5F94_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_96366F41_B_6, _Split_CE0AB7C6_R_1, _Multiply_D70B5F94_Out_2);
                        float2 _Vector2_D6F48DBF_Out_0 = float2(_SampleTexture2D_96366F41_R_4, _SampleTexture2D_96366F41_G_5);
                        float2 _Multiply_32364D17_Out_2;
                        Unity_Multiply_float(_Vector2_D6F48DBF_Out_0, _Vector2_2EDA3EA2_Out_0, _Multiply_32364D17_Out_2);
                        float2 _Vector2_5861421E_Out_0 = float2(_Split_CE0AB7C6_B_3, _Split_CE0AB7C6_G_2);
                        float2 _Add_15B5B6DC_Out_2;
                        Unity_Add_float2(_Multiply_32364D17_Out_2, _Vector2_5861421E_Out_0, _Add_15B5B6DC_Out_2);
                        float _Split_68B7323B_R_1 = _Add_15B5B6DC_Out_2[0];
                        float _Split_68B7323B_G_2 = _Add_15B5B6DC_Out_2[1];
                        float _Split_68B7323B_B_3 = 0;
                        float _Split_68B7323B_A_4 = 0;
                        float3 _Vector3_1ACBBFC4_Out_0 = float3(_Multiply_D70B5F94_Out_2, _Split_68B7323B_G_2, _Split_68B7323B_R_1);
                        float3 _Multiply_1C5CFCC5_Out_2;
                        Unity_Multiply_float(_Vector3_1ACBBFC4_Out_0, (_Split_98088E33_R_1.xxx), _Multiply_1C5CFCC5_Out_2);
                        float3 _Add_D483B2FD_Out_2;
                        Unity_Add_float3(_Multiply_9E620CB9_Out_2, _Multiply_1C5CFCC5_Out_2, _Add_D483B2FD_Out_2);
                        float3 _Add_166B5BED_Out_2;
                        Unity_Add_float3(_Multiply_B99FFB12_Out_2, _Add_D483B2FD_Out_2, _Add_166B5BED_Out_2);
                        float _Add_B73B64F6_Out_2;
                        Unity_Add_float(_Split_98088E33_R_1, _Split_98088E33_G_2, _Add_B73B64F6_Out_2);
                        float _Add_523B36E8_Out_2;
                        Unity_Add_float(_Add_B73B64F6_Out_2, _Split_98088E33_B_3, _Add_523B36E8_Out_2);
                        float3 _Divide_86C67C72_Out_2;
                        Unity_Divide_float3(_Add_166B5BED_Out_2, (_Add_523B36E8_Out_2.xxx), _Divide_86C67C72_Out_2);
                        float3x3 tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_F679F94B_Out_1 = TransformWorldToTangent(_Divide_86C67C72_Out_2.xyz, tangentTransform_World);
                        float3 _Normalize_E5F34A45_Out_1;
                        Unity_Normalize_float3(_Transform_F679F94B_Out_1, _Normalize_E5F34A45_Out_1);
                        XYZ = (float4(_Normalize_E5F34A45_Out_1, 1.0));
                        XZ = (float4(_Vector3_A5ECB01F_Out_0, 1.0));
                        YZ = (float4(_Vector3_77AAFCD8_Out_0, 1.0));
                        XY = (float4(_Vector3_1ACBBFC4_Out_0, 1.0));
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A + B;
                    }
                
                    struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpacePosition;
                    };
                
                    void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea IN, out float4 XYZ, out float4 XZ, out float4 YZ, out float4 XY)
                    {
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float _Property_7A4DC59B_Out_0 = Vector1_41461AC9;
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_D99671F1_Out_2);
                        float3 _Sign_C0850857_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_C0850857_Out_1);
                        float _Split_EEBC69B5_R_1 = _Sign_C0850857_Out_1[0];
                        float _Split_EEBC69B5_G_2 = _Sign_C0850857_Out_1[1];
                        float _Split_EEBC69B5_B_3 = _Sign_C0850857_Out_1[2];
                        float _Split_EEBC69B5_A_4 = 0;
                        float2 _Vector2_7598EA98_Out_0 = float2(_Split_EEBC69B5_G_2, 1);
                        float2 _Multiply_F82F3FE2_Out_2;
                        Unity_Multiply_float((_Multiply_D99671F1_Out_2.xy), _Vector2_7598EA98_Out_0, _Multiply_F82F3FE2_Out_2);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_F82F3FE2_Out_2);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float3 _Absolute_FF95EDEB_Out_1;
                        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_FF95EDEB_Out_1);
                        float _Property_F8688E0_Out_0 = Vector1_E4D1C13A;
                        float3 _Power_C741CD3A_Out_2;
                        Unity_Power_float3(_Absolute_FF95EDEB_Out_1, (_Property_F8688E0_Out_0.xxx), _Power_C741CD3A_Out_2);
                        float3 _Multiply_3FB4A346_Out_2;
                        Unity_Multiply_float(_Power_C741CD3A_Out_2, _Power_C741CD3A_Out_2, _Multiply_3FB4A346_Out_2);
                        float _Split_98088E33_R_1 = _Multiply_3FB4A346_Out_2[0];
                        float _Split_98088E33_G_2 = _Multiply_3FB4A346_Out_2[1];
                        float _Split_98088E33_B_3 = _Multiply_3FB4A346_Out_2[2];
                        float _Split_98088E33_A_4 = 0;
                        float4 _Multiply_B99FFB12_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_RGBA_0, (_Split_98088E33_G_2.xxxx), _Multiply_B99FFB12_Out_2);
                        float4 _Combine_EAF808EA_RGBA_4;
                        float3 _Combine_EAF808EA_RGB_5;
                        float2 _Combine_EAF808EA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_G_2, 0, 0, _Combine_EAF808EA_RGBA_4, _Combine_EAF808EA_RGB_5, _Combine_EAF808EA_RG_6);
                        float4 _Multiply_9B855117_Out_2;
                        Unity_Multiply_float(_Combine_EAF808EA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_9B855117_Out_2);
                        float _Multiply_B8AC16FB_Out_2;
                        Unity_Multiply_float(_Split_EEBC69B5_B_3, -1, _Multiply_B8AC16FB_Out_2);
                        float2 _Vector2_F031282A_Out_0 = float2(_Multiply_B8AC16FB_Out_2, 1);
                        float2 _Multiply_89A39D70_Out_2;
                        Unity_Multiply_float((_Multiply_9B855117_Out_2.xy), _Vector2_F031282A_Out_0, _Multiply_89A39D70_Out_2);
                        float4 _SampleTexture2D_66E4959F_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_89A39D70_Out_2);
                        float _SampleTexture2D_66E4959F_R_4 = _SampleTexture2D_66E4959F_RGBA_0.r;
                        float _SampleTexture2D_66E4959F_G_5 = _SampleTexture2D_66E4959F_RGBA_0.g;
                        float _SampleTexture2D_66E4959F_B_6 = _SampleTexture2D_66E4959F_RGBA_0.b;
                        float _SampleTexture2D_66E4959F_A_7 = _SampleTexture2D_66E4959F_RGBA_0.a;
                        float4 _Multiply_9E620CB9_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_66E4959F_RGBA_0, (_Split_98088E33_B_3.xxxx), _Multiply_9E620CB9_Out_2);
                        float4 _Combine_D494A8E_RGBA_4;
                        float3 _Combine_D494A8E_RGB_5;
                        float2 _Combine_D494A8E_RG_6;
                        Unity_Combine_float(_Split_34F118DC_B_3, _Split_34F118DC_G_2, 0, 0, _Combine_D494A8E_RGBA_4, _Combine_D494A8E_RGB_5, _Combine_D494A8E_RG_6);
                        float4 _Multiply_1B29A9F1_Out_2;
                        Unity_Multiply_float(_Combine_D494A8E_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_1B29A9F1_Out_2);
                        float2 _Vector2_1F147BEC_Out_0 = float2(_Split_EEBC69B5_R_1, 1);
                        float2 _Multiply_5B8B54E9_Out_2;
                        Unity_Multiply_float((_Multiply_1B29A9F1_Out_2.xy), _Vector2_1F147BEC_Out_0, _Multiply_5B8B54E9_Out_2);
                        float4 _SampleTexture2D_96366F41_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_5B8B54E9_Out_2);
                        float _SampleTexture2D_96366F41_R_4 = _SampleTexture2D_96366F41_RGBA_0.r;
                        float _SampleTexture2D_96366F41_G_5 = _SampleTexture2D_96366F41_RGBA_0.g;
                        float _SampleTexture2D_96366F41_B_6 = _SampleTexture2D_96366F41_RGBA_0.b;
                        float _SampleTexture2D_96366F41_A_7 = _SampleTexture2D_96366F41_RGBA_0.a;
                        float4 _Multiply_1C5CFCC5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_96366F41_RGBA_0, (_Split_98088E33_R_1.xxxx), _Multiply_1C5CFCC5_Out_2);
                        float4 _Add_D483B2FD_Out_2;
                        Unity_Add_float4(_Multiply_9E620CB9_Out_2, _Multiply_1C5CFCC5_Out_2, _Add_D483B2FD_Out_2);
                        float4 _Add_166B5BED_Out_2;
                        Unity_Add_float4(_Multiply_B99FFB12_Out_2, _Add_D483B2FD_Out_2, _Add_166B5BED_Out_2);
                        float _Add_B73B64F6_Out_2;
                        Unity_Add_float(_Split_98088E33_R_1, _Split_98088E33_G_2, _Add_B73B64F6_Out_2);
                        float _Add_523B36E8_Out_2;
                        Unity_Add_float(_Add_B73B64F6_Out_2, _Split_98088E33_B_3, _Add_523B36E8_Out_2);
                        float4 _Divide_86C67C72_Out_2;
                        Unity_Divide_float4(_Add_166B5BED_Out_2, (_Add_523B36E8_Out_2.xxxx), _Divide_86C67C72_Out_2);
                        XYZ = _Divide_86C67C72_Out_2;
                        XZ = _SampleTexture2D_AF934D9A_RGBA_0;
                        YZ = _SampleTexture2D_66E4959F_RGBA_0;
                        XY = _SampleTexture2D_96366F41_RGBA_0;
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 WorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay = _Lerp_CA077B77_Out_3;
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_FC905A02_Out_0 = _DetailTilingOffset;
                        float _Split_66FEB2D6_R_1 = _Property_FC905A02_Out_0[0];
                        float _Split_66FEB2D6_G_2 = _Property_FC905A02_Out_0[1];
                        float _Split_66FEB2D6_B_3 = _Property_FC905A02_Out_0[2];
                        float _Split_66FEB2D6_A_4 = _Property_FC905A02_Out_0[3];
                        float2 _Vector2_2C65450F_Out_0 = float2(_Split_66FEB2D6_R_1, _Split_66FEB2D6_G_2);
                        float2 _Vector2_20821B1B_Out_0 = float2(_Split_66FEB2D6_B_3, _Split_66FEB2D6_A_4);
                        float2 _TilingAndOffset_AFDF49A5_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_2C65450F_Out_0, _Vector2_20821B1B_Out_0, _TilingAndOffset_AFDF49A5_Out_3);
                        float4 _SampleTexture2D_CD9C50D2_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_AFDF49A5_Out_3);
                        float _SampleTexture2D_CD9C50D2_R_4 = _SampleTexture2D_CD9C50D2_RGBA_0.r;
                        float _SampleTexture2D_CD9C50D2_G_5 = _SampleTexture2D_CD9C50D2_RGBA_0.g;
                        float _SampleTexture2D_CD9C50D2_B_6 = _SampleTexture2D_CD9C50D2_RGBA_0.b;
                        float _SampleTexture2D_CD9C50D2_A_7 = _SampleTexture2D_CD9C50D2_RGBA_0.a;
                        float2 _Vector2_D25079B9_Out_0 = float2(_SampleTexture2D_CD9C50D2_A_7, _SampleTexture2D_CD9C50D2_G_5);
                        float2 _Multiply_A6D263CC_Out_2;
                        Unity_Multiply_float(_Vector2_D25079B9_Out_0, float2(2, 2), _Multiply_A6D263CC_Out_2);
                        float2 _Add_A94F92F2_Out_2;
                        Unity_Add_float2(_Multiply_A6D263CC_Out_2, float2(-1, -1), _Add_A94F92F2_Out_2);
                        float _Property_5A04D61A_Out_0 = _DetailNormalScale;
                        float2 _Multiply_E3BBD5A0_Out_2;
                        Unity_Multiply_float(_Add_A94F92F2_Out_2, (_Property_5A04D61A_Out_0.xx), _Multiply_E3BBD5A0_Out_2);
                        float _Split_3BC0AA96_R_1 = _Multiply_E3BBD5A0_Out_2[0];
                        float _Split_3BC0AA96_G_2 = _Multiply_E3BBD5A0_Out_2[1];
                        float _Split_3BC0AA96_B_3 = 0;
                        float _Split_3BC0AA96_A_4 = 0;
                        float _DotProduct_9FB0B73C_Out_2;
                        Unity_DotProduct_float2(_Multiply_E3BBD5A0_Out_2, _Multiply_E3BBD5A0_Out_2, _DotProduct_9FB0B73C_Out_2);
                        float _Saturate_3C8C4A9B_Out_1;
                        Unity_Saturate_float(_DotProduct_9FB0B73C_Out_2, _Saturate_3C8C4A9B_Out_1);
                        float _OneMinus_E0A2EC16_Out_1;
                        Unity_OneMinus_float(_Saturate_3C8C4A9B_Out_1, _OneMinus_E0A2EC16_Out_1);
                        float _SquareRoot_7D6FC55F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_E0A2EC16_Out_1, _SquareRoot_7D6FC55F_Out_1);
                        float3 _Vector3_408E9F99_Out_0 = float3(_Split_3BC0AA96_R_1, _Split_3BC0AA96_G_2, _SquareRoot_7D6FC55F_Out_1);
                        float4 _Property_3E4B16C8_Out_0 = _BaseTilingOffset;
                        float _Property_50A244CF_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_8FB4259D;
                        _PlanarNMn_8FB4259D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_8FB4259D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_8FB4259D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_8FB4259D.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNMn_8FB4259D.uv0 = IN.uv0;
                        float4 _PlanarNMn_8FB4259D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNMn_8FB4259D, _PlanarNMn_8FB4259D_XZ_2);
                        float _Property_1CABD952_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_8FB4259D_XZ_2.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float3 _NormalBlend_B205DA66_Out_2;
                        Unity_NormalBlend_float(_Vector3_408E9F99_Out_0, _NormalStrength_EDF1EB8B_Out_2, _NormalBlend_B205DA66_Out_2);
                        float4 _Property_E0773BA3_Out_0 = _CoverTilingOffset;
                        float4 _Divide_49A78312_Out_2;
                        Unity_Divide_float4(float4(1, 1, 0, 0), _Property_E0773BA3_Out_0, _Divide_49A78312_Out_2);
                        float _Property_344EE56F_Out_0 = _CoverTriplanarThreshold;
                        Bindings_TriplanarNMn_059da9746584140498cd018db3c76047 _TriplanarNMn_98A5B80C;
                        _TriplanarNMn_98A5B80C.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNMn_98A5B80C.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _TriplanarNMn_98A5B80C.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _TriplanarNMn_98A5B80C.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNMn_98A5B80C_XYZ_1;
                        float4 _TriplanarNMn_98A5B80C_XZ_2;
                        float4 _TriplanarNMn_98A5B80C_YZ_3;
                        float4 _TriplanarNMn_98A5B80C_XY_4;
                        SG_TriplanarNMn_059da9746584140498cd018db3c76047(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNMn_98A5B80C, _TriplanarNMn_98A5B80C_XYZ_1, _TriplanarNMn_98A5B80C_XZ_2, _TriplanarNMn_98A5B80C_YZ_3, _TriplanarNMn_98A5B80C_XY_4);
                        float _Property_2BC6CE93_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_D9292962_Out_2;
                        Unity_NormalStrength_float((_TriplanarNMn_98A5B80C_XYZ_1.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_D9292962_Out_2);
                        float _Property_4AB1A11C_Out_0 = _UseDynamicCoverTStaticMaskF;
                        float4 _UV_20D72EFB_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_E213A685_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_20D72EFB_Out_0.xy));
                        float _SampleTexture2D_E213A685_R_4 = _SampleTexture2D_E213A685_RGBA_0.r;
                        float _SampleTexture2D_E213A685_G_5 = _SampleTexture2D_E213A685_RGBA_0.g;
                        float _SampleTexture2D_E213A685_B_6 = _SampleTexture2D_E213A685_RGBA_0.b;
                        float _SampleTexture2D_E213A685_A_7 = _SampleTexture2D_E213A685_RGBA_0.a;
                        float _Property_23BACCE9_Out_0 = _CoverMaskPower;
                        float _Multiply_CEE6BF7E_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_E213A685_A_7, _Property_23BACCE9_Out_0, _Multiply_CEE6BF7E_Out_2);
                        float _Clamp_8BDA8462_Out_3;
                        Unity_Clamp_float(_Multiply_CEE6BF7E_Out_2, 0, 1, _Clamp_8BDA8462_Out_3);
                        float _Split_7AD1E82F_R_1 = IN.VertexColor[0];
                        float _Split_7AD1E82F_G_2 = IN.VertexColor[1];
                        float _Split_7AD1E82F_B_3 = IN.VertexColor[2];
                        float _Split_7AD1E82F_A_4 = IN.VertexColor[3];
                        float3 _Property_B337987A_Out_0 = _CoverDirection;
                        float _Property_1277E229_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D8740A3D_Out_2;
                        Unity_NormalStrength_float((_TriplanarNMn_98A5B80C_XYZ_1.xyz), _Property_1277E229_Out_0, _NormalStrength_D8740A3D_Out_2);
                        float3 _Multiply_C10488EF_Out_2;
                        Unity_Multiply_float(_Property_B337987A_Out_0, IN.WorldSpaceNormal, _Multiply_C10488EF_Out_2);
                        float _Split_F588AD82_R_1 = _Multiply_C10488EF_Out_2[0];
                        float _Split_F588AD82_G_2 = _Multiply_C10488EF_Out_2[1];
                        float _Split_F588AD82_B_3 = _Multiply_C10488EF_Out_2[2];
                        float _Split_F588AD82_A_4 = 0;
                        float _Add_1BF84D66_Out_2;
                        Unity_Add_float(_Split_F588AD82_R_1, _Split_F588AD82_G_2, _Add_1BF84D66_Out_2);
                        float _Add_55FEEDC7_Out_2;
                        Unity_Add_float(_Add_1BF84D66_Out_2, _Split_F588AD82_B_3, _Add_55FEEDC7_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Cover_Amount;
                        float _Property_7DFE3C77_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_5C7F53DB_Out_2;
                        Unity_Subtract_float(4, _Property_7DFE3C77_Out_0, _Subtract_5C7F53DB_Out_2);
                        float _Divide_2E853816_Out_2;
                        Unity_Divide_float(_Property_C3CE9B07_Out_0, _Subtract_5C7F53DB_Out_2, _Divide_2E853816_Out_2);
                        float _Absolute_B440693F_Out_1;
                        Unity_Absolute_float(_Divide_2E853816_Out_2, _Absolute_B440693F_Out_1);
                        float _Power_F952C21D_Out_2;
                        Unity_Power_float(_Absolute_B440693F_Out_1, _Subtract_5C7F53DB_Out_2, _Power_F952C21D_Out_2);
                        float _Clamp_FC9AF565_Out_3;
                        Unity_Clamp_float(_Power_F952C21D_Out_2, 0, 2, _Clamp_FC9AF565_Out_3);
                        float _Multiply_2164B3E7_Out_2;
                        Unity_Multiply_float(_Add_55FEEDC7_Out_2, _Clamp_FC9AF565_Out_3, _Multiply_2164B3E7_Out_2);
                        float _Saturate_173154BF_Out_1;
                        Unity_Saturate_float(_Multiply_2164B3E7_Out_2, _Saturate_173154BF_Out_1);
                        float _Clamp_898505F7_Out_3;
                        Unity_Clamp_float(_Add_55FEEDC7_Out_2, 0, 0.9999, _Clamp_898505F7_Out_3);
                        float _Property_A5C9D674_Out_0 = _Cover_Max_Angle;
                        float _Divide_87E47C29_Out_2;
                        Unity_Divide_float(_Property_A5C9D674_Out_0, 45, _Divide_87E47C29_Out_2);
                        float _OneMinus_18BF8D3A_Out_1;
                        Unity_OneMinus_float(_Divide_87E47C29_Out_2, _OneMinus_18BF8D3A_Out_1);
                        float _Subtract_CACC9F64_Out_2;
                        Unity_Subtract_float(_Clamp_898505F7_Out_3, _OneMinus_18BF8D3A_Out_1, _Subtract_CACC9F64_Out_2);
                        float _Clamp_989AEDE1_Out_3;
                        Unity_Clamp_float(_Subtract_CACC9F64_Out_2, 0, 2, _Clamp_989AEDE1_Out_3);
                        float _Divide_FFC65CC2_Out_2;
                        Unity_Divide_float(1, _Divide_87E47C29_Out_2, _Divide_FFC65CC2_Out_2);
                        float _Multiply_F5867110_Out_2;
                        Unity_Multiply_float(_Clamp_989AEDE1_Out_3, _Divide_FFC65CC2_Out_2, _Multiply_F5867110_Out_2);
                        float _Absolute_D89283B3_Out_1;
                        Unity_Absolute_float(_Multiply_F5867110_Out_2, _Absolute_D89283B3_Out_1);
                        float _Property_9B9027DB_Out_0 = _CoverHardness;
                        float _Power_B072AE57_Out_2;
                        Unity_Power_float(_Absolute_D89283B3_Out_1, _Property_9B9027DB_Out_0, _Power_B072AE57_Out_2);
                        float _Property_388C9B8B_Out_0 = _Cover_Min_Height;
                        float _OneMinus_4583AA8B_Out_1;
                        Unity_OneMinus_float(_Property_388C9B8B_Out_0, _OneMinus_4583AA8B_Out_1);
                        float _Split_E686ABCF_R_1 = IN.WorldSpacePosition[0];
                        float _Split_E686ABCF_G_2 = IN.WorldSpacePosition[1];
                        float _Split_E686ABCF_B_3 = IN.WorldSpacePosition[2];
                        float _Split_E686ABCF_A_4 = 0;
                        float _Add_BF4A84A1_Out_2;
                        Unity_Add_float(_OneMinus_4583AA8B_Out_1, _Split_E686ABCF_G_2, _Add_BF4A84A1_Out_2);
                        float _Add_6E3AF2BE_Out_2;
                        Unity_Add_float(_Add_BF4A84A1_Out_2, 1, _Add_6E3AF2BE_Out_2);
                        float _Clamp_4453A0AC_Out_3;
                        Unity_Clamp_float(_Add_6E3AF2BE_Out_2, 0, 1, _Clamp_4453A0AC_Out_3);
                        float _Property_24108C8C_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_1CB6388C_Out_2;
                        Unity_Add_float(_Add_BF4A84A1_Out_2, _Property_24108C8C_Out_0, _Add_1CB6388C_Out_2);
                        float _Divide_62D3B622_Out_2;
                        Unity_Divide_float(_Add_1CB6388C_Out_2, _Add_BF4A84A1_Out_2, _Divide_62D3B622_Out_2);
                        float _OneMinus_9A3B328E_Out_1;
                        Unity_OneMinus_float(_Divide_62D3B622_Out_2, _OneMinus_9A3B328E_Out_1);
                        float _Add_60A40097_Out_2;
                        Unity_Add_float(_OneMinus_9A3B328E_Out_1, -0.5, _Add_60A40097_Out_2);
                        float _Clamp_BF85F16F_Out_3;
                        Unity_Clamp_float(_Add_60A40097_Out_2, 0, 1, _Clamp_BF85F16F_Out_3);
                        float _Add_15252D0D_Out_2;
                        Unity_Add_float(_Clamp_4453A0AC_Out_3, _Clamp_BF85F16F_Out_3, _Add_15252D0D_Out_2);
                        float _Clamp_9B57A26B_Out_3;
                        Unity_Clamp_float(_Add_15252D0D_Out_2, 0, 1, _Clamp_9B57A26B_Out_3);
                        float _Multiply_C95AF257_Out_2;
                        Unity_Multiply_float(_Power_B072AE57_Out_2, _Clamp_9B57A26B_Out_3, _Multiply_C95AF257_Out_2);
                        float _Multiply_FF8131E5_Out_2;
                        Unity_Multiply_float(_Saturate_173154BF_Out_1, _Multiply_C95AF257_Out_2, _Multiply_FF8131E5_Out_2);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_NormalBlend_B205DA66_Out_2, _NormalStrength_D8740A3D_Out_2, (_Multiply_FF8131E5_Out_2.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_8AB587B2_Out_1 = mul(transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float3 _Multiply_40FEF87C_Out_2;
                        Unity_Multiply_float(_Property_B337987A_Out_0, _Transform_8AB587B2_Out_1, _Multiply_40FEF87C_Out_2);
                        float _Split_2E5CD9E3_R_1 = _Multiply_40FEF87C_Out_2[0];
                        float _Split_2E5CD9E3_G_2 = _Multiply_40FEF87C_Out_2[1];
                        float _Split_2E5CD9E3_B_3 = _Multiply_40FEF87C_Out_2[2];
                        float _Split_2E5CD9E3_A_4 = 0;
                        float _Add_931DAB0_Out_2;
                        Unity_Add_float(_Split_2E5CD9E3_R_1, _Split_2E5CD9E3_G_2, _Add_931DAB0_Out_2);
                        float _Add_896997D2_Out_2;
                        Unity_Add_float(_Add_931DAB0_Out_2, _Split_2E5CD9E3_B_3, _Add_896997D2_Out_2);
                        float _Multiply_E09536CA_Out_2;
                        Unity_Multiply_float(_Add_896997D2_Out_2, _Clamp_FC9AF565_Out_3, _Multiply_E09536CA_Out_2);
                        float _Multiply_4EFF53BC_Out_2;
                        Unity_Multiply_float(_Clamp_FC9AF565_Out_3, _Property_9B9027DB_Out_0, _Multiply_4EFF53BC_Out_2);
                        float _Multiply_EECDD75E_Out_2;
                        Unity_Multiply_float(_Multiply_4EFF53BC_Out_2, _Multiply_C95AF257_Out_2, _Multiply_EECDD75E_Out_2);
                        float _Multiply_D777B623_Out_2;
                        Unity_Multiply_float(_Multiply_E09536CA_Out_2, _Multiply_EECDD75E_Out_2, _Multiply_D777B623_Out_2);
                        Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea _TriplanarNM_38475939;
                        _TriplanarNM_38475939.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNM_38475939.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNM_38475939_XYZ_1;
                        float4 _TriplanarNM_38475939_XZ_2;
                        float4 _TriplanarNM_38475939_YZ_3;
                        float4 _TriplanarNM_38475939_XY_4;
                        SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNM_38475939, _TriplanarNM_38475939_XYZ_1, _TriplanarNM_38475939_XZ_2, _TriplanarNM_38475939_YZ_3, _TriplanarNM_38475939_XY_4);
                        float _Split_824C6099_R_1 = _TriplanarNM_38475939_XYZ_1[0];
                        float _Split_824C6099_G_2 = _TriplanarNM_38475939_XYZ_1[1];
                        float _Split_824C6099_B_3 = _TriplanarNM_38475939_XYZ_1[2];
                        float _Split_824C6099_A_4 = _TriplanarNM_38475939_XYZ_1[3];
                        float _Property_830946EB_Out_0 = _CoverHeightMapMin;
                        float _Property_A7E18B9F_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_4BC0C782_Out_0 = float2(_Property_830946EB_Out_0, _Property_A7E18B9F_Out_0);
                        float _Property_C3051ECE_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_242BA7BA_Out_2;
                        Unity_Add_float2(_Vector2_4BC0C782_Out_0, (_Property_C3051ECE_Out_0.xx), _Add_242BA7BA_Out_2);
                        float _Remap_C868580B_Out_3;
                        Unity_Remap_float(_Split_824C6099_B_3, float2 (0, 1), _Add_242BA7BA_Out_2, _Remap_C868580B_Out_3);
                        float _Multiply_5610F739_Out_2;
                        Unity_Multiply_float(_Multiply_D777B623_Out_2, _Remap_C868580B_Out_3, _Multiply_5610F739_Out_2);
                        float _Multiply_EF26B04B_Out_2;
                        Unity_Multiply_float(_Split_7AD1E82F_G_2, _Multiply_5610F739_Out_2, _Multiply_EF26B04B_Out_2);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Multiply_EF26B04B_Out_2, _Saturate_456E02AA_Out_1);
                        float _Multiply_17104BB2_Out_2;
                        Unity_Multiply_float(_Clamp_8BDA8462_Out_3, _Saturate_456E02AA_Out_1, _Multiply_17104BB2_Out_2);
                        float _Branch_D6B0024E_Out_3;
                        Unity_Branch_float(_Property_4AB1A11C_Out_0, _Multiply_17104BB2_Out_2, _Clamp_8BDA8462_Out_3, _Branch_D6B0024E_Out_3);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_NormalBlend_B205DA66_Out_2, _NormalStrength_D9292962_Out_2, (_Branch_D6B0024E_Out_3.xxx), _Lerp_CC69B645_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_D55871DB;
                        _PlanarNM_D55871DB.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNM_D55871DB.uv0 = IN.uv0;
                        float4 _PlanarNM_D55871DB_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNM_D55871DB, _PlanarNM_D55871DB_XZ_2);
                        float _Split_65F1C04F_R_1 = _PlanarNM_D55871DB_XZ_2[0];
                        float _Split_65F1C04F_G_2 = _PlanarNM_D55871DB_XZ_2[1];
                        float _Split_65F1C04F_B_3 = _PlanarNM_D55871DB_XZ_2[2];
                        float _Split_65F1C04F_A_4 = _PlanarNM_D55871DB_XZ_2[3];
                        float _Property_25A8FF3A_Out_0 = _BaseMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_Split_65F1C04F_R_1, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _BaseAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_Split_65F1C04F_G_2, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_Split_65F1C04F_A_4, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float _Multiply_55B1F0BE_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CD9C50D2_B_6, 2, _Multiply_55B1F0BE_Out_2);
                        float _Add_AE24F590_Out_2;
                        Unity_Add_float(_Multiply_55B1F0BE_Out_2, -1, _Add_AE24F590_Out_2);
                        float _Property_B5AB31DA_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_C0EAB2EE_Out_2;
                        Unity_Multiply_float(_Add_AE24F590_Out_2, _Property_B5AB31DA_Out_0, _Multiply_C0EAB2EE_Out_2);
                        float _Saturate_1F246CE5_Out_1;
                        Unity_Saturate_float(_Multiply_C0EAB2EE_Out_2, _Saturate_1F246CE5_Out_1);
                        float _Absolute_95405FDB_Out_1;
                        Unity_Absolute_float(_Saturate_1F246CE5_Out_1, _Absolute_95405FDB_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_3B17247C;
                        float _BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_4C121471_Out_3, _Add_AE24F590_Out_2, _Absolute_95405FDB_Out_1, _BlendOverlayDetailSmoothness_3B17247C, _BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1);
                        float _Saturate_F6661092_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1, _Saturate_F6661092_Out_1);
                        float3 _Vector3_FEF1FB88_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Saturate_F6661092_Out_1);
                        float _Property_88D7F675_Out_0 = _CoverMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_Split_824C6099_R_1, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _CoverAORemapMin;
                        float _Property_C5C18557_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_Split_824C6099_G_2, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_Split_824C6099_A_4, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_4B858D29_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Vector3_FEF1FB88_Out_0, _Vector3_4B858D29_Out_0, (_Branch_D6B0024E_Out_3.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        float _Property_328F033C_Out_0 = _WetSmoothness;
                        float _OneMinus_69E30394_Out_1;
                        Unity_OneMinus_float(_Split_7AD1E82F_R_1, _OneMinus_69E30394_Out_1);
                        float _Lerp_1DEC7741_Out_3;
                        Unity_Lerp_float(_Split_BF192904_B_3, _Property_328F033C_Out_0, _OneMinus_69E30394_Out_1, _Lerp_1DEC7741_Out_3);
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.Smoothness = _Lerp_1DEC7741_Out_3;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
            FragInputs BuildFragInputs(VaryingsMeshToPS input)
            {
                FragInputs output;
                ZERO_INITIALIZE(FragInputs, output);
        
                // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                // to compute normals which are then passed on elsewhere to compute other values...
                output.tangentToWorld = k_identity3x3;
                output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
                output.positionRWS = input.positionRWS;
                output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                output.texCoord0 = input.texCoord0;
                output.texCoord1 = input.texCoord1;
                output.texCoord2 = input.texCoord2;
                output.texCoord3 = input.texCoord3;
                output.color = input.color;
                #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #elif SHADER_STAGE_FRAGMENT
                // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #endif // SHADER_STAGE_FRAGMENT
        
                return output;
            }
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            // existing HDRP code uses the combined function to go directly from packed to frag inputs
            FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
            {
                UNITY_SETUP_INSTANCE_ID(input);
                VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                return BuildFragInputs(unpacked);
            }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // copy across graph values, if defined
                // surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                // surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
                // surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #else
                surfaceData.specularOcclusion = 1.0;
        #endif
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx)); // Quantize V to _ScreenSize values
                LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                // builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassDepthOnly.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "GBuffer"
            Tags { "LightMode" = "GBuffer" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            Cull [_CullMode]
        
            ZTest [_ZTestGBuffer]
        
            
            
            // Stencil setup
        Stencil
        {
           WriteMask [_StencilWriteMaskGBuffer]
           Ref [_StencilRefGBuffer]
           Comp Always
           Pass Replace
        }
        
            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_GBUFFER
                #pragma multi_compile _ DEBUG_DISPLAY
                #pragma multi_compile _ LIGHTMAP_ON
                #pragma multi_compile _ DIRLIGHTMAP_COMBINED
                #pragma multi_compile _ DYNAMICLIGHTMAP_ON
                #pragma multi_compile _ SHADOWS_SHADOWMASK
                #pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
                #pragma multi_compile _ LIGHT_LAYERS
                // ACTIVE FIELDS:
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.WorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Metallic
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord1
                //   FragInputs.texCoord2
                //   FragInputs.color
                //   FragInputs.texCoord0
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord1
                //   VaryingsMeshToPS.texCoord2
                //   VaryingsMeshToPS.color
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.tangentOS
                //   AttributesMesh.normalOS
                //   AttributesMesh.positionOS
                //   AttributesMesh.uv1
                //   AttributesMesh.uv2
                //   AttributesMesh.color
                //   AttributesMesh.uv0
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        // Generated Type: AttributesMesh
        struct AttributesMesh {
            float3 positionOS : POSITION;
            float3 normalOS : NORMAL; // optional
            float4 tangentOS : TANGENT; // optional
            float4 uv0 : TEXCOORD0; // optional
            float4 uv1 : TEXCOORD1; // optional
            float4 uv2 : TEXCOORD2; // optional
            float4 color : COLOR; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        
        // Generated Type: VaryingsMeshToPS
        struct VaryingsMeshToPS {
            float4 positionCS : SV_Position;
            float3 positionRWS; // optional
            float3 normalWS; // optional
            float4 tangentWS; // optional
            float4 texCoord0; // optional
            float4 texCoord1; // optional
            float4 texCoord2; // optional
            float4 color; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        struct PackedVaryingsMeshToPS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            float4 interp02 : TEXCOORD2; // auto-packed
            float4 interp03 : TEXCOORD3; // auto-packed
            float4 interp04 : TEXCOORD4; // auto-packed
            float4 interp05 : TEXCOORD5; // auto-packed
            float4 interp06 : TEXCOORD6; // auto-packed
            float4 positionCS : SV_Position; // unpacked
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            output.interp02.xyzw = input.tangentWS;
            output.interp03.xyzw = input.texCoord0;
            output.interp04.xyzw = input.texCoord1;
            output.interp05.xyzw = input.texCoord2;
            output.interp06.xyzw = input.color;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            output.tangentWS = input.interp02.xyzw;
            output.texCoord0 = input.interp03.xyzw;
            output.texCoord1 = input.interp04.xyzw;
            output.texCoord2 = input.interp05.xyzw;
            output.color = input.interp06.xyzw;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        
        // Generated Type: VaryingsMeshToDS
        struct VaryingsMeshToDS {
            float3 positionRWS;
            float3 normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToDS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
        {
            PackedVaryingsMeshToDS output;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
        {
            VaryingsMeshToDS output;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float _BaseNormalScale;
                    float _BaseMetallic;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _UseDynamicCoverTStaticMaskF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float3 _CoverDirection;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float4 _CoverTilingOffset;
                    float _CoverTriplanarThreshold;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverMetallic;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _AlphaCutoff;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 WorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float CoatMask;
                        float Metallic;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float (float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 WorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Multiply_float (float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_SquareRoot_float4(float4 In, out float4 Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2
                    {
                    };
                
                    void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 IN, out float3 OutVector4)
                    {
                        float4 _Property_90A62E4E_Out_0 = Color_9AA111D3;
                        float4 _SquareRoot_51430F5B_Out_1;
                        Unity_SquareRoot_float4(_Property_90A62E4E_Out_0, _SquareRoot_51430F5B_Out_1);
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Multiply_ED89DC5B_Out_2;
                        Unity_Multiply_float(_Property_33C740F_Out_0, _Property_33C740F_Out_0, _Multiply_ED89DC5B_Out_2);
                        float4 _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float4(_SquareRoot_51430F5B_Out_1, (_Ceiling_85D24F96_Out_1.xxxx), (_Multiply_ED89DC5B_Out_2.xxxx), _Lerp_CA077B77_Out_3);
                        float4 _Multiply_9305D041_Out_2;
                        Unity_Multiply_float(_Lerp_CA077B77_Out_3, _Lerp_CA077B77_Out_3, _Multiply_9305D041_Out_2);
                        OutVector4 = (_Multiply_9305D041_Out_2.xyz);
                    }
                
                    void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Multiply_float (float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Absolute_float3(float3 In, out float3 Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Power_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Multiply_float (float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A + B;
                    }
                
                    struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpacePosition;
                    };
                
                    void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea IN, out float4 XYZ, out float4 XZ, out float4 YZ, out float4 XY)
                    {
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float _Property_7A4DC59B_Out_0 = Vector1_41461AC9;
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_D99671F1_Out_2);
                        float3 _Sign_C0850857_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_C0850857_Out_1);
                        float _Split_EEBC69B5_R_1 = _Sign_C0850857_Out_1[0];
                        float _Split_EEBC69B5_G_2 = _Sign_C0850857_Out_1[1];
                        float _Split_EEBC69B5_B_3 = _Sign_C0850857_Out_1[2];
                        float _Split_EEBC69B5_A_4 = 0;
                        float2 _Vector2_7598EA98_Out_0 = float2(_Split_EEBC69B5_G_2, 1);
                        float2 _Multiply_F82F3FE2_Out_2;
                        Unity_Multiply_float((_Multiply_D99671F1_Out_2.xy), _Vector2_7598EA98_Out_0, _Multiply_F82F3FE2_Out_2);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_F82F3FE2_Out_2);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float3 _Absolute_FF95EDEB_Out_1;
                        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_FF95EDEB_Out_1);
                        float _Property_F8688E0_Out_0 = Vector1_E4D1C13A;
                        float3 _Power_C741CD3A_Out_2;
                        Unity_Power_float3(_Absolute_FF95EDEB_Out_1, (_Property_F8688E0_Out_0.xxx), _Power_C741CD3A_Out_2);
                        float3 _Multiply_3FB4A346_Out_2;
                        Unity_Multiply_float(_Power_C741CD3A_Out_2, _Power_C741CD3A_Out_2, _Multiply_3FB4A346_Out_2);
                        float _Split_98088E33_R_1 = _Multiply_3FB4A346_Out_2[0];
                        float _Split_98088E33_G_2 = _Multiply_3FB4A346_Out_2[1];
                        float _Split_98088E33_B_3 = _Multiply_3FB4A346_Out_2[2];
                        float _Split_98088E33_A_4 = 0;
                        float4 _Multiply_B99FFB12_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_RGBA_0, (_Split_98088E33_G_2.xxxx), _Multiply_B99FFB12_Out_2);
                        float4 _Combine_EAF808EA_RGBA_4;
                        float3 _Combine_EAF808EA_RGB_5;
                        float2 _Combine_EAF808EA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_G_2, 0, 0, _Combine_EAF808EA_RGBA_4, _Combine_EAF808EA_RGB_5, _Combine_EAF808EA_RG_6);
                        float4 _Multiply_9B855117_Out_2;
                        Unity_Multiply_float(_Combine_EAF808EA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_9B855117_Out_2);
                        float _Multiply_B8AC16FB_Out_2;
                        Unity_Multiply_float(_Split_EEBC69B5_B_3, -1, _Multiply_B8AC16FB_Out_2);
                        float2 _Vector2_F031282A_Out_0 = float2(_Multiply_B8AC16FB_Out_2, 1);
                        float2 _Multiply_89A39D70_Out_2;
                        Unity_Multiply_float((_Multiply_9B855117_Out_2.xy), _Vector2_F031282A_Out_0, _Multiply_89A39D70_Out_2);
                        float4 _SampleTexture2D_66E4959F_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_89A39D70_Out_2);
                        float _SampleTexture2D_66E4959F_R_4 = _SampleTexture2D_66E4959F_RGBA_0.r;
                        float _SampleTexture2D_66E4959F_G_5 = _SampleTexture2D_66E4959F_RGBA_0.g;
                        float _SampleTexture2D_66E4959F_B_6 = _SampleTexture2D_66E4959F_RGBA_0.b;
                        float _SampleTexture2D_66E4959F_A_7 = _SampleTexture2D_66E4959F_RGBA_0.a;
                        float4 _Multiply_9E620CB9_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_66E4959F_RGBA_0, (_Split_98088E33_B_3.xxxx), _Multiply_9E620CB9_Out_2);
                        float4 _Combine_D494A8E_RGBA_4;
                        float3 _Combine_D494A8E_RGB_5;
                        float2 _Combine_D494A8E_RG_6;
                        Unity_Combine_float(_Split_34F118DC_B_3, _Split_34F118DC_G_2, 0, 0, _Combine_D494A8E_RGBA_4, _Combine_D494A8E_RGB_5, _Combine_D494A8E_RG_6);
                        float4 _Multiply_1B29A9F1_Out_2;
                        Unity_Multiply_float(_Combine_D494A8E_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_1B29A9F1_Out_2);
                        float2 _Vector2_1F147BEC_Out_0 = float2(_Split_EEBC69B5_R_1, 1);
                        float2 _Multiply_5B8B54E9_Out_2;
                        Unity_Multiply_float((_Multiply_1B29A9F1_Out_2.xy), _Vector2_1F147BEC_Out_0, _Multiply_5B8B54E9_Out_2);
                        float4 _SampleTexture2D_96366F41_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_5B8B54E9_Out_2);
                        float _SampleTexture2D_96366F41_R_4 = _SampleTexture2D_96366F41_RGBA_0.r;
                        float _SampleTexture2D_96366F41_G_5 = _SampleTexture2D_96366F41_RGBA_0.g;
                        float _SampleTexture2D_96366F41_B_6 = _SampleTexture2D_96366F41_RGBA_0.b;
                        float _SampleTexture2D_96366F41_A_7 = _SampleTexture2D_96366F41_RGBA_0.a;
                        float4 _Multiply_1C5CFCC5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_96366F41_RGBA_0, (_Split_98088E33_R_1.xxxx), _Multiply_1C5CFCC5_Out_2);
                        float4 _Add_D483B2FD_Out_2;
                        Unity_Add_float4(_Multiply_9E620CB9_Out_2, _Multiply_1C5CFCC5_Out_2, _Add_D483B2FD_Out_2);
                        float4 _Add_166B5BED_Out_2;
                        Unity_Add_float4(_Multiply_B99FFB12_Out_2, _Add_D483B2FD_Out_2, _Add_166B5BED_Out_2);
                        float _Add_B73B64F6_Out_2;
                        Unity_Add_float(_Split_98088E33_R_1, _Split_98088E33_G_2, _Add_B73B64F6_Out_2);
                        float _Add_523B36E8_Out_2;
                        Unity_Add_float(_Add_B73B64F6_Out_2, _Split_98088E33_B_3, _Add_523B36E8_Out_2);
                        float4 _Divide_86C67C72_Out_2;
                        Unity_Divide_float4(_Add_166B5BED_Out_2, (_Add_523B36E8_Out_2.xxxx), _Divide_86C67C72_Out_2);
                        XYZ = _Divide_86C67C72_Out_2;
                        XZ = _SampleTexture2D_AF934D9A_RGBA_0;
                        YZ = _SampleTexture2D_66E4959F_RGBA_0;
                        XY = _SampleTexture2D_96366F41_RGBA_0;
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 WorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Add_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Divide_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A / B;
                    }
                
                    struct Bindings_TriplanarNMn_059da9746584140498cd018db3c76047
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 WorldSpacePosition;
                    };
                
                    void SG_TriplanarNMn_059da9746584140498cd018db3c76047(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNMn_059da9746584140498cd018db3c76047 IN, out float4 XYZ, out float4 XZ, out float4 YZ, out float4 XY)
                    {
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float _Property_7A4DC59B_Out_0 = Vector1_41461AC9;
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_D99671F1_Out_2);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_6E58BF97_Out_2;
                        Unity_Multiply_float((_Multiply_D99671F1_Out_2.xy), _Vector2_DC7A07A_Out_0, _Multiply_6E58BF97_Out_2);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_6E58BF97_Out_2);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_97283B7E_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_97283B7E_Out_2);
                        float3 _Vector3_A5ECB01F_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_97283B7E_Out_2, _Split_1D7F6EE9_G_2);
                        float3 _Absolute_FF95EDEB_Out_1;
                        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_FF95EDEB_Out_1);
                        float _Property_F8688E0_Out_0 = Vector1_E4D1C13A;
                        float3 _Power_C741CD3A_Out_2;
                        Unity_Power_float3(_Absolute_FF95EDEB_Out_1, (_Property_F8688E0_Out_0.xxx), _Power_C741CD3A_Out_2);
                        float3 _Multiply_3FB4A346_Out_2;
                        Unity_Multiply_float(_Power_C741CD3A_Out_2, _Power_C741CD3A_Out_2, _Multiply_3FB4A346_Out_2);
                        float _Split_98088E33_R_1 = _Multiply_3FB4A346_Out_2[0];
                        float _Split_98088E33_G_2 = _Multiply_3FB4A346_Out_2[1];
                        float _Split_98088E33_B_3 = _Multiply_3FB4A346_Out_2[2];
                        float _Split_98088E33_A_4 = 0;
                        float3 _Multiply_B99FFB12_Out_2;
                        Unity_Multiply_float(_Vector3_A5ECB01F_Out_0, (_Split_98088E33_G_2.xxx), _Multiply_B99FFB12_Out_2);
                        float4 _Combine_EAF808EA_RGBA_4;
                        float3 _Combine_EAF808EA_RGB_5;
                        float2 _Combine_EAF808EA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_G_2, 0, 0, _Combine_EAF808EA_RGBA_4, _Combine_EAF808EA_RGB_5, _Combine_EAF808EA_RG_6);
                        float4 _Multiply_9B855117_Out_2;
                        Unity_Multiply_float(_Combine_EAF808EA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_9B855117_Out_2);
                        float _Multiply_9028821C_Out_2;
                        Unity_Multiply_float(_Split_A88C5CBA_B_3, -1, _Multiply_9028821C_Out_2);
                        float2 _Vector2_34183E31_Out_0 = float2(_Multiply_9028821C_Out_2, 1);
                        float2 _Multiply_25D3DEE7_Out_2;
                        Unity_Multiply_float((_Multiply_9B855117_Out_2.xy), _Vector2_34183E31_Out_0, _Multiply_25D3DEE7_Out_2);
                        float4 _SampleTexture2D_66E4959F_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_25D3DEE7_Out_2);
                        _SampleTexture2D_66E4959F_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_66E4959F_RGBA_0);
                        float _SampleTexture2D_66E4959F_R_4 = _SampleTexture2D_66E4959F_RGBA_0.r;
                        float _SampleTexture2D_66E4959F_G_5 = _SampleTexture2D_66E4959F_RGBA_0.g;
                        float _SampleTexture2D_66E4959F_B_6 = _SampleTexture2D_66E4959F_RGBA_0.b;
                        float _SampleTexture2D_66E4959F_A_7 = _SampleTexture2D_66E4959F_RGBA_0.a;
                        float2 _Vector2_6CC92971_Out_0 = float2(_SampleTexture2D_66E4959F_R_4, _SampleTexture2D_66E4959F_G_5);
                        float2 _Multiply_EDE2F02C_Out_2;
                        Unity_Multiply_float(_Vector2_6CC92971_Out_0, _Vector2_34183E31_Out_0, _Multiply_EDE2F02C_Out_2);
                        float2 _Vector2_6D428360_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_G_2);
                        float2 _Add_6D3412BD_Out_2;
                        Unity_Add_float2(_Multiply_EDE2F02C_Out_2, _Vector2_6D428360_Out_0, _Add_6D3412BD_Out_2);
                        float _Split_79C8538A_R_1 = _Add_6D3412BD_Out_2[0];
                        float _Split_79C8538A_G_2 = _Add_6D3412BD_Out_2[1];
                        float _Split_79C8538A_B_3 = 0;
                        float _Split_79C8538A_A_4 = 0;
                        float _Multiply_576DD59F_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_66E4959F_B_6, _Split_CE0AB7C6_B_3, _Multiply_576DD59F_Out_2);
                        float3 _Vector3_77AAFCD8_Out_0 = float3(_Split_79C8538A_R_1, _Split_79C8538A_G_2, _Multiply_576DD59F_Out_2);
                        float3 _Multiply_9E620CB9_Out_2;
                        Unity_Multiply_float(_Vector3_77AAFCD8_Out_0, (_Split_98088E33_B_3.xxx), _Multiply_9E620CB9_Out_2);
                        float4 _Combine_D494A8E_RGBA_4;
                        float3 _Combine_D494A8E_RGB_5;
                        float2 _Combine_D494A8E_RG_6;
                        Unity_Combine_float(_Split_34F118DC_B_3, _Split_34F118DC_G_2, 0, 0, _Combine_D494A8E_RGBA_4, _Combine_D494A8E_RGB_5, _Combine_D494A8E_RG_6);
                        float4 _Multiply_1B29A9F1_Out_2;
                        Unity_Multiply_float(_Combine_D494A8E_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_1B29A9F1_Out_2);
                        float2 _Vector2_2EDA3EA2_Out_0 = float2(_Split_A88C5CBA_R_1, 1);
                        float2 _Multiply_4083C468_Out_2;
                        Unity_Multiply_float((_Multiply_1B29A9F1_Out_2.xy), _Vector2_2EDA3EA2_Out_0, _Multiply_4083C468_Out_2);
                        float4 _SampleTexture2D_96366F41_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_4083C468_Out_2);
                        _SampleTexture2D_96366F41_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_96366F41_RGBA_0);
                        float _SampleTexture2D_96366F41_R_4 = _SampleTexture2D_96366F41_RGBA_0.r;
                        float _SampleTexture2D_96366F41_G_5 = _SampleTexture2D_96366F41_RGBA_0.g;
                        float _SampleTexture2D_96366F41_B_6 = _SampleTexture2D_96366F41_RGBA_0.b;
                        float _SampleTexture2D_96366F41_A_7 = _SampleTexture2D_96366F41_RGBA_0.a;
                        float _Multiply_D70B5F94_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_96366F41_B_6, _Split_CE0AB7C6_R_1, _Multiply_D70B5F94_Out_2);
                        float2 _Vector2_D6F48DBF_Out_0 = float2(_SampleTexture2D_96366F41_R_4, _SampleTexture2D_96366F41_G_5);
                        float2 _Multiply_32364D17_Out_2;
                        Unity_Multiply_float(_Vector2_D6F48DBF_Out_0, _Vector2_2EDA3EA2_Out_0, _Multiply_32364D17_Out_2);
                        float2 _Vector2_5861421E_Out_0 = float2(_Split_CE0AB7C6_B_3, _Split_CE0AB7C6_G_2);
                        float2 _Add_15B5B6DC_Out_2;
                        Unity_Add_float2(_Multiply_32364D17_Out_2, _Vector2_5861421E_Out_0, _Add_15B5B6DC_Out_2);
                        float _Split_68B7323B_R_1 = _Add_15B5B6DC_Out_2[0];
                        float _Split_68B7323B_G_2 = _Add_15B5B6DC_Out_2[1];
                        float _Split_68B7323B_B_3 = 0;
                        float _Split_68B7323B_A_4 = 0;
                        float3 _Vector3_1ACBBFC4_Out_0 = float3(_Multiply_D70B5F94_Out_2, _Split_68B7323B_G_2, _Split_68B7323B_R_1);
                        float3 _Multiply_1C5CFCC5_Out_2;
                        Unity_Multiply_float(_Vector3_1ACBBFC4_Out_0, (_Split_98088E33_R_1.xxx), _Multiply_1C5CFCC5_Out_2);
                        float3 _Add_D483B2FD_Out_2;
                        Unity_Add_float3(_Multiply_9E620CB9_Out_2, _Multiply_1C5CFCC5_Out_2, _Add_D483B2FD_Out_2);
                        float3 _Add_166B5BED_Out_2;
                        Unity_Add_float3(_Multiply_B99FFB12_Out_2, _Add_D483B2FD_Out_2, _Add_166B5BED_Out_2);
                        float _Add_B73B64F6_Out_2;
                        Unity_Add_float(_Split_98088E33_R_1, _Split_98088E33_G_2, _Add_B73B64F6_Out_2);
                        float _Add_523B36E8_Out_2;
                        Unity_Add_float(_Add_B73B64F6_Out_2, _Split_98088E33_B_3, _Add_523B36E8_Out_2);
                        float3 _Divide_86C67C72_Out_2;
                        Unity_Divide_float3(_Add_166B5BED_Out_2, (_Add_523B36E8_Out_2.xxx), _Divide_86C67C72_Out_2);
                        float3x3 tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_F679F94B_Out_1 = TransformWorldToTangent(_Divide_86C67C72_Out_2.xyz, tangentTransform_World);
                        float3 _Normalize_E5F34A45_Out_1;
                        Unity_Normalize_float3(_Transform_F679F94B_Out_1, _Normalize_E5F34A45_Out_1);
                        XYZ = (float4(_Normalize_E5F34A45_Out_1, 1.0));
                        XZ = (float4(_Vector3_A5ECB01F_Out_0, 1.0));
                        YZ = (float4(_Vector3_77AAFCD8_Out_0, 1.0));
                        XY = (float4(_Vector3_1ACBBFC4_Out_0, 1.0));
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay = _Lerp_CA077B77_Out_3;
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _BaseTilingOffset;
                        float _Property_50A244CF_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_8DBCF4B4;
                        _PlanarNM_8DBCF4B4.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNM_8DBCF4B4.uv0 = IN.uv0;
                        float4 _PlanarNM_8DBCF4B4_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNM_8DBCF4B4, _PlanarNM_8DBCF4B4_XZ_2);
                        float4 _Property_3D23ECB5_Out_0 = _BaseColor;
                        float4 _Multiply_3B5A4F3A_Out_2;
                        Unity_Multiply_float(_PlanarNM_8DBCF4B4_XZ_2, _Property_3D23ECB5_Out_0, _Multiply_3B5A4F3A_Out_2);
                        float4 _Property_FC905A02_Out_0 = _DetailTilingOffset;
                        float _Split_66FEB2D6_R_1 = _Property_FC905A02_Out_0[0];
                        float _Split_66FEB2D6_G_2 = _Property_FC905A02_Out_0[1];
                        float _Split_66FEB2D6_B_3 = _Property_FC905A02_Out_0[2];
                        float _Split_66FEB2D6_A_4 = _Property_FC905A02_Out_0[3];
                        float2 _Vector2_2C65450F_Out_0 = float2(_Split_66FEB2D6_R_1, _Split_66FEB2D6_G_2);
                        float2 _Vector2_20821B1B_Out_0 = float2(_Split_66FEB2D6_B_3, _Split_66FEB2D6_A_4);
                        float2 _TilingAndOffset_AFDF49A5_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_2C65450F_Out_0, _Vector2_20821B1B_Out_0, _TilingAndOffset_AFDF49A5_Out_3);
                        float4 _SampleTexture2D_CD9C50D2_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_AFDF49A5_Out_3);
                        float _SampleTexture2D_CD9C50D2_R_4 = _SampleTexture2D_CD9C50D2_RGBA_0.r;
                        float _SampleTexture2D_CD9C50D2_G_5 = _SampleTexture2D_CD9C50D2_RGBA_0.g;
                        float _SampleTexture2D_CD9C50D2_B_6 = _SampleTexture2D_CD9C50D2_RGBA_0.b;
                        float _SampleTexture2D_CD9C50D2_A_7 = _SampleTexture2D_CD9C50D2_RGBA_0.a;
                        float _Multiply_6CEB2199_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CD9C50D2_R_4, 2, _Multiply_6CEB2199_Out_2);
                        float _Add_81546154_Out_2;
                        Unity_Add_float(_Multiply_6CEB2199_Out_2, -1, _Add_81546154_Out_2);
                        float _Property_2152BC92_Out_0 = _DetailAlbedoScale;
                        float _Multiply_4FF44BF6_Out_2;
                        Unity_Multiply_float(_Add_81546154_Out_2, _Property_2152BC92_Out_0, _Multiply_4FF44BF6_Out_2);
                        float _Saturate_44A6B3E6_Out_1;
                        Unity_Saturate_float(_Multiply_4FF44BF6_Out_2, _Saturate_44A6B3E6_Out_1);
                        float _Absolute_252B9168_Out_1;
                        Unity_Absolute_float(_Saturate_44A6B3E6_Out_1, _Absolute_252B9168_Out_1);
                        Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 _BlendOverlayBaseColor_DC11EFE2;
                        float3 _BlendOverlayBaseColor_DC11EFE2_OutVector4_1;
                        SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(_Multiply_3B5A4F3A_Out_2, _Add_81546154_Out_2, _Absolute_252B9168_Out_1, _BlendOverlayBaseColor_DC11EFE2, _BlendOverlayBaseColor_DC11EFE2_OutVector4_1);
                        float4 _Property_E0773BA3_Out_0 = _CoverTilingOffset;
                        float4 _Divide_49A78312_Out_2;
                        Unity_Divide_float4(float4(1, 1, 0, 0), _Property_E0773BA3_Out_0, _Divide_49A78312_Out_2);
                        float _Property_344EE56F_Out_0 = _CoverTriplanarThreshold;
                        Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea _TriplanarNM_3A98BEB6;
                        _TriplanarNM_3A98BEB6.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNM_3A98BEB6.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNM_3A98BEB6_XYZ_1;
                        float4 _TriplanarNM_3A98BEB6_XZ_2;
                        float4 _TriplanarNM_3A98BEB6_YZ_3;
                        float4 _TriplanarNM_3A98BEB6_XY_4;
                        SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_ARGS(_CoverBaseColorMap, sampler_CoverBaseColorMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNM_3A98BEB6, _TriplanarNM_3A98BEB6_XYZ_1, _TriplanarNM_3A98BEB6_XZ_2, _TriplanarNM_3A98BEB6_YZ_3, _TriplanarNM_3A98BEB6_XY_4);
                        float4 _Property_AF2EEB1D_Out_0 = _CoverBaseColor;
                        float4 _Multiply_64C7F396_Out_2;
                        Unity_Multiply_float(_TriplanarNM_3A98BEB6_XYZ_1, _Property_AF2EEB1D_Out_0, _Multiply_64C7F396_Out_2);
                        float _Property_4AB1A11C_Out_0 = _UseDynamicCoverTStaticMaskF;
                        float4 _UV_20D72EFB_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_E213A685_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_20D72EFB_Out_0.xy));
                        float _SampleTexture2D_E213A685_R_4 = _SampleTexture2D_E213A685_RGBA_0.r;
                        float _SampleTexture2D_E213A685_G_5 = _SampleTexture2D_E213A685_RGBA_0.g;
                        float _SampleTexture2D_E213A685_B_6 = _SampleTexture2D_E213A685_RGBA_0.b;
                        float _SampleTexture2D_E213A685_A_7 = _SampleTexture2D_E213A685_RGBA_0.a;
                        float _Property_23BACCE9_Out_0 = _CoverMaskPower;
                        float _Multiply_CEE6BF7E_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_E213A685_A_7, _Property_23BACCE9_Out_0, _Multiply_CEE6BF7E_Out_2);
                        float _Clamp_8BDA8462_Out_3;
                        Unity_Clamp_float(_Multiply_CEE6BF7E_Out_2, 0, 1, _Clamp_8BDA8462_Out_3);
                        float _Split_7AD1E82F_R_1 = IN.VertexColor[0];
                        float _Split_7AD1E82F_G_2 = IN.VertexColor[1];
                        float _Split_7AD1E82F_B_3 = IN.VertexColor[2];
                        float _Split_7AD1E82F_A_4 = IN.VertexColor[3];
                        float3 _Property_B337987A_Out_0 = _CoverDirection;
                        float2 _Vector2_D25079B9_Out_0 = float2(_SampleTexture2D_CD9C50D2_A_7, _SampleTexture2D_CD9C50D2_G_5);
                        float2 _Multiply_A6D263CC_Out_2;
                        Unity_Multiply_float(_Vector2_D25079B9_Out_0, float2(2, 2), _Multiply_A6D263CC_Out_2);
                        float2 _Add_A94F92F2_Out_2;
                        Unity_Add_float2(_Multiply_A6D263CC_Out_2, float2(-1, -1), _Add_A94F92F2_Out_2);
                        float _Property_5A04D61A_Out_0 = _DetailNormalScale;
                        float2 _Multiply_E3BBD5A0_Out_2;
                        Unity_Multiply_float(_Add_A94F92F2_Out_2, (_Property_5A04D61A_Out_0.xx), _Multiply_E3BBD5A0_Out_2);
                        float _Split_3BC0AA96_R_1 = _Multiply_E3BBD5A0_Out_2[0];
                        float _Split_3BC0AA96_G_2 = _Multiply_E3BBD5A0_Out_2[1];
                        float _Split_3BC0AA96_B_3 = 0;
                        float _Split_3BC0AA96_A_4 = 0;
                        float _DotProduct_9FB0B73C_Out_2;
                        Unity_DotProduct_float2(_Multiply_E3BBD5A0_Out_2, _Multiply_E3BBD5A0_Out_2, _DotProduct_9FB0B73C_Out_2);
                        float _Saturate_3C8C4A9B_Out_1;
                        Unity_Saturate_float(_DotProduct_9FB0B73C_Out_2, _Saturate_3C8C4A9B_Out_1);
                        float _OneMinus_E0A2EC16_Out_1;
                        Unity_OneMinus_float(_Saturate_3C8C4A9B_Out_1, _OneMinus_E0A2EC16_Out_1);
                        float _SquareRoot_7D6FC55F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_E0A2EC16_Out_1, _SquareRoot_7D6FC55F_Out_1);
                        float3 _Vector3_408E9F99_Out_0 = float3(_Split_3BC0AA96_R_1, _Split_3BC0AA96_G_2, _SquareRoot_7D6FC55F_Out_1);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_8FB4259D;
                        _PlanarNMn_8FB4259D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_8FB4259D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_8FB4259D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_8FB4259D.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNMn_8FB4259D.uv0 = IN.uv0;
                        float4 _PlanarNMn_8FB4259D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNMn_8FB4259D, _PlanarNMn_8FB4259D_XZ_2);
                        float _Property_1CABD952_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_8FB4259D_XZ_2.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float3 _NormalBlend_B205DA66_Out_2;
                        Unity_NormalBlend_float(_Vector3_408E9F99_Out_0, _NormalStrength_EDF1EB8B_Out_2, _NormalBlend_B205DA66_Out_2);
                        Bindings_TriplanarNMn_059da9746584140498cd018db3c76047 _TriplanarNMn_98A5B80C;
                        _TriplanarNMn_98A5B80C.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNMn_98A5B80C.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _TriplanarNMn_98A5B80C.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _TriplanarNMn_98A5B80C.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNMn_98A5B80C_XYZ_1;
                        float4 _TriplanarNMn_98A5B80C_XZ_2;
                        float4 _TriplanarNMn_98A5B80C_YZ_3;
                        float4 _TriplanarNMn_98A5B80C_XY_4;
                        SG_TriplanarNMn_059da9746584140498cd018db3c76047(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNMn_98A5B80C, _TriplanarNMn_98A5B80C_XYZ_1, _TriplanarNMn_98A5B80C_XZ_2, _TriplanarNMn_98A5B80C_YZ_3, _TriplanarNMn_98A5B80C_XY_4);
                        float _Property_1277E229_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D8740A3D_Out_2;
                        Unity_NormalStrength_float((_TriplanarNMn_98A5B80C_XYZ_1.xyz), _Property_1277E229_Out_0, _NormalStrength_D8740A3D_Out_2);
                        float3 _Multiply_C10488EF_Out_2;
                        Unity_Multiply_float(_Property_B337987A_Out_0, IN.WorldSpaceNormal, _Multiply_C10488EF_Out_2);
                        float _Split_F588AD82_R_1 = _Multiply_C10488EF_Out_2[0];
                        float _Split_F588AD82_G_2 = _Multiply_C10488EF_Out_2[1];
                        float _Split_F588AD82_B_3 = _Multiply_C10488EF_Out_2[2];
                        float _Split_F588AD82_A_4 = 0;
                        float _Add_1BF84D66_Out_2;
                        Unity_Add_float(_Split_F588AD82_R_1, _Split_F588AD82_G_2, _Add_1BF84D66_Out_2);
                        float _Add_55FEEDC7_Out_2;
                        Unity_Add_float(_Add_1BF84D66_Out_2, _Split_F588AD82_B_3, _Add_55FEEDC7_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Cover_Amount;
                        float _Property_7DFE3C77_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_5C7F53DB_Out_2;
                        Unity_Subtract_float(4, _Property_7DFE3C77_Out_0, _Subtract_5C7F53DB_Out_2);
                        float _Divide_2E853816_Out_2;
                        Unity_Divide_float(_Property_C3CE9B07_Out_0, _Subtract_5C7F53DB_Out_2, _Divide_2E853816_Out_2);
                        float _Absolute_B440693F_Out_1;
                        Unity_Absolute_float(_Divide_2E853816_Out_2, _Absolute_B440693F_Out_1);
                        float _Power_F952C21D_Out_2;
                        Unity_Power_float(_Absolute_B440693F_Out_1, _Subtract_5C7F53DB_Out_2, _Power_F952C21D_Out_2);
                        float _Clamp_FC9AF565_Out_3;
                        Unity_Clamp_float(_Power_F952C21D_Out_2, 0, 2, _Clamp_FC9AF565_Out_3);
                        float _Multiply_2164B3E7_Out_2;
                        Unity_Multiply_float(_Add_55FEEDC7_Out_2, _Clamp_FC9AF565_Out_3, _Multiply_2164B3E7_Out_2);
                        float _Saturate_173154BF_Out_1;
                        Unity_Saturate_float(_Multiply_2164B3E7_Out_2, _Saturate_173154BF_Out_1);
                        float _Clamp_898505F7_Out_3;
                        Unity_Clamp_float(_Add_55FEEDC7_Out_2, 0, 0.9999, _Clamp_898505F7_Out_3);
                        float _Property_A5C9D674_Out_0 = _Cover_Max_Angle;
                        float _Divide_87E47C29_Out_2;
                        Unity_Divide_float(_Property_A5C9D674_Out_0, 45, _Divide_87E47C29_Out_2);
                        float _OneMinus_18BF8D3A_Out_1;
                        Unity_OneMinus_float(_Divide_87E47C29_Out_2, _OneMinus_18BF8D3A_Out_1);
                        float _Subtract_CACC9F64_Out_2;
                        Unity_Subtract_float(_Clamp_898505F7_Out_3, _OneMinus_18BF8D3A_Out_1, _Subtract_CACC9F64_Out_2);
                        float _Clamp_989AEDE1_Out_3;
                        Unity_Clamp_float(_Subtract_CACC9F64_Out_2, 0, 2, _Clamp_989AEDE1_Out_3);
                        float _Divide_FFC65CC2_Out_2;
                        Unity_Divide_float(1, _Divide_87E47C29_Out_2, _Divide_FFC65CC2_Out_2);
                        float _Multiply_F5867110_Out_2;
                        Unity_Multiply_float(_Clamp_989AEDE1_Out_3, _Divide_FFC65CC2_Out_2, _Multiply_F5867110_Out_2);
                        float _Absolute_D89283B3_Out_1;
                        Unity_Absolute_float(_Multiply_F5867110_Out_2, _Absolute_D89283B3_Out_1);
                        float _Property_9B9027DB_Out_0 = _CoverHardness;
                        float _Power_B072AE57_Out_2;
                        Unity_Power_float(_Absolute_D89283B3_Out_1, _Property_9B9027DB_Out_0, _Power_B072AE57_Out_2);
                        float _Property_388C9B8B_Out_0 = _Cover_Min_Height;
                        float _OneMinus_4583AA8B_Out_1;
                        Unity_OneMinus_float(_Property_388C9B8B_Out_0, _OneMinus_4583AA8B_Out_1);
                        float _Split_E686ABCF_R_1 = IN.WorldSpacePosition[0];
                        float _Split_E686ABCF_G_2 = IN.WorldSpacePosition[1];
                        float _Split_E686ABCF_B_3 = IN.WorldSpacePosition[2];
                        float _Split_E686ABCF_A_4 = 0;
                        float _Add_BF4A84A1_Out_2;
                        Unity_Add_float(_OneMinus_4583AA8B_Out_1, _Split_E686ABCF_G_2, _Add_BF4A84A1_Out_2);
                        float _Add_6E3AF2BE_Out_2;
                        Unity_Add_float(_Add_BF4A84A1_Out_2, 1, _Add_6E3AF2BE_Out_2);
                        float _Clamp_4453A0AC_Out_3;
                        Unity_Clamp_float(_Add_6E3AF2BE_Out_2, 0, 1, _Clamp_4453A0AC_Out_3);
                        float _Property_24108C8C_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_1CB6388C_Out_2;
                        Unity_Add_float(_Add_BF4A84A1_Out_2, _Property_24108C8C_Out_0, _Add_1CB6388C_Out_2);
                        float _Divide_62D3B622_Out_2;
                        Unity_Divide_float(_Add_1CB6388C_Out_2, _Add_BF4A84A1_Out_2, _Divide_62D3B622_Out_2);
                        float _OneMinus_9A3B328E_Out_1;
                        Unity_OneMinus_float(_Divide_62D3B622_Out_2, _OneMinus_9A3B328E_Out_1);
                        float _Add_60A40097_Out_2;
                        Unity_Add_float(_OneMinus_9A3B328E_Out_1, -0.5, _Add_60A40097_Out_2);
                        float _Clamp_BF85F16F_Out_3;
                        Unity_Clamp_float(_Add_60A40097_Out_2, 0, 1, _Clamp_BF85F16F_Out_3);
                        float _Add_15252D0D_Out_2;
                        Unity_Add_float(_Clamp_4453A0AC_Out_3, _Clamp_BF85F16F_Out_3, _Add_15252D0D_Out_2);
                        float _Clamp_9B57A26B_Out_3;
                        Unity_Clamp_float(_Add_15252D0D_Out_2, 0, 1, _Clamp_9B57A26B_Out_3);
                        float _Multiply_C95AF257_Out_2;
                        Unity_Multiply_float(_Power_B072AE57_Out_2, _Clamp_9B57A26B_Out_3, _Multiply_C95AF257_Out_2);
                        float _Multiply_FF8131E5_Out_2;
                        Unity_Multiply_float(_Saturate_173154BF_Out_1, _Multiply_C95AF257_Out_2, _Multiply_FF8131E5_Out_2);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_NormalBlend_B205DA66_Out_2, _NormalStrength_D8740A3D_Out_2, (_Multiply_FF8131E5_Out_2.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_8AB587B2_Out_1 = mul(transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float3 _Multiply_40FEF87C_Out_2;
                        Unity_Multiply_float(_Property_B337987A_Out_0, _Transform_8AB587B2_Out_1, _Multiply_40FEF87C_Out_2);
                        float _Split_2E5CD9E3_R_1 = _Multiply_40FEF87C_Out_2[0];
                        float _Split_2E5CD9E3_G_2 = _Multiply_40FEF87C_Out_2[1];
                        float _Split_2E5CD9E3_B_3 = _Multiply_40FEF87C_Out_2[2];
                        float _Split_2E5CD9E3_A_4 = 0;
                        float _Add_931DAB0_Out_2;
                        Unity_Add_float(_Split_2E5CD9E3_R_1, _Split_2E5CD9E3_G_2, _Add_931DAB0_Out_2);
                        float _Add_896997D2_Out_2;
                        Unity_Add_float(_Add_931DAB0_Out_2, _Split_2E5CD9E3_B_3, _Add_896997D2_Out_2);
                        float _Multiply_E09536CA_Out_2;
                        Unity_Multiply_float(_Add_896997D2_Out_2, _Clamp_FC9AF565_Out_3, _Multiply_E09536CA_Out_2);
                        float _Multiply_4EFF53BC_Out_2;
                        Unity_Multiply_float(_Clamp_FC9AF565_Out_3, _Property_9B9027DB_Out_0, _Multiply_4EFF53BC_Out_2);
                        float _Multiply_EECDD75E_Out_2;
                        Unity_Multiply_float(_Multiply_4EFF53BC_Out_2, _Multiply_C95AF257_Out_2, _Multiply_EECDD75E_Out_2);
                        float _Multiply_D777B623_Out_2;
                        Unity_Multiply_float(_Multiply_E09536CA_Out_2, _Multiply_EECDD75E_Out_2, _Multiply_D777B623_Out_2);
                        Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea _TriplanarNM_38475939;
                        _TriplanarNM_38475939.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNM_38475939.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNM_38475939_XYZ_1;
                        float4 _TriplanarNM_38475939_XZ_2;
                        float4 _TriplanarNM_38475939_YZ_3;
                        float4 _TriplanarNM_38475939_XY_4;
                        SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNM_38475939, _TriplanarNM_38475939_XYZ_1, _TriplanarNM_38475939_XZ_2, _TriplanarNM_38475939_YZ_3, _TriplanarNM_38475939_XY_4);
                        float _Split_824C6099_R_1 = _TriplanarNM_38475939_XYZ_1[0];
                        float _Split_824C6099_G_2 = _TriplanarNM_38475939_XYZ_1[1];
                        float _Split_824C6099_B_3 = _TriplanarNM_38475939_XYZ_1[2];
                        float _Split_824C6099_A_4 = _TriplanarNM_38475939_XYZ_1[3];
                        float _Property_830946EB_Out_0 = _CoverHeightMapMin;
                        float _Property_A7E18B9F_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_4BC0C782_Out_0 = float2(_Property_830946EB_Out_0, _Property_A7E18B9F_Out_0);
                        float _Property_C3051ECE_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_242BA7BA_Out_2;
                        Unity_Add_float2(_Vector2_4BC0C782_Out_0, (_Property_C3051ECE_Out_0.xx), _Add_242BA7BA_Out_2);
                        float _Remap_C868580B_Out_3;
                        Unity_Remap_float(_Split_824C6099_B_3, float2 (0, 1), _Add_242BA7BA_Out_2, _Remap_C868580B_Out_3);
                        float _Multiply_5610F739_Out_2;
                        Unity_Multiply_float(_Multiply_D777B623_Out_2, _Remap_C868580B_Out_3, _Multiply_5610F739_Out_2);
                        float _Multiply_EF26B04B_Out_2;
                        Unity_Multiply_float(_Split_7AD1E82F_G_2, _Multiply_5610F739_Out_2, _Multiply_EF26B04B_Out_2);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Multiply_EF26B04B_Out_2, _Saturate_456E02AA_Out_1);
                        float _Multiply_17104BB2_Out_2;
                        Unity_Multiply_float(_Clamp_8BDA8462_Out_3, _Saturate_456E02AA_Out_1, _Multiply_17104BB2_Out_2);
                        float _Branch_D6B0024E_Out_3;
                        Unity_Branch_float(_Property_4AB1A11C_Out_0, _Multiply_17104BB2_Out_2, _Clamp_8BDA8462_Out_3, _Branch_D6B0024E_Out_3);
                        float3 _Lerp_75D9504F_Out_3;
                        Unity_Lerp_float3(_BlendOverlayBaseColor_DC11EFE2_OutVector4_1, (_Multiply_64C7F396_Out_2.xyz), (_Branch_D6B0024E_Out_3.xxx), _Lerp_75D9504F_Out_3);
                        float4 _Property_E4885F4_Out_0 = _WetColor;
                        float3 _Multiply_CAF8A50C_Out_2;
                        Unity_Multiply_float((_Property_E4885F4_Out_0.xyz), _Lerp_75D9504F_Out_3, _Multiply_CAF8A50C_Out_2);
                        float _OneMinus_69E30394_Out_1;
                        Unity_OneMinus_float(_Split_7AD1E82F_R_1, _OneMinus_69E30394_Out_1);
                        float3 _Lerp_1AB1B2C4_Out_3;
                        Unity_Lerp_float3(_Lerp_75D9504F_Out_3, _Multiply_CAF8A50C_Out_2, (_OneMinus_69E30394_Out_1.xxx), _Lerp_1AB1B2C4_Out_3);
                        float _Property_2BC6CE93_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_D9292962_Out_2;
                        Unity_NormalStrength_float((_TriplanarNMn_98A5B80C_XYZ_1.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_D9292962_Out_2);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_NormalBlend_B205DA66_Out_2, _NormalStrength_D9292962_Out_2, (_Branch_D6B0024E_Out_3.xxx), _Lerp_CC69B645_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_D55871DB;
                        _PlanarNM_D55871DB.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNM_D55871DB.uv0 = IN.uv0;
                        float4 _PlanarNM_D55871DB_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNM_D55871DB, _PlanarNM_D55871DB_XZ_2);
                        float _Split_65F1C04F_R_1 = _PlanarNM_D55871DB_XZ_2[0];
                        float _Split_65F1C04F_G_2 = _PlanarNM_D55871DB_XZ_2[1];
                        float _Split_65F1C04F_B_3 = _PlanarNM_D55871DB_XZ_2[2];
                        float _Split_65F1C04F_A_4 = _PlanarNM_D55871DB_XZ_2[3];
                        float _Property_25A8FF3A_Out_0 = _BaseMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_Split_65F1C04F_R_1, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _BaseAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_Split_65F1C04F_G_2, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_Split_65F1C04F_A_4, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float _Multiply_55B1F0BE_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CD9C50D2_B_6, 2, _Multiply_55B1F0BE_Out_2);
                        float _Add_AE24F590_Out_2;
                        Unity_Add_float(_Multiply_55B1F0BE_Out_2, -1, _Add_AE24F590_Out_2);
                        float _Property_B5AB31DA_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_C0EAB2EE_Out_2;
                        Unity_Multiply_float(_Add_AE24F590_Out_2, _Property_B5AB31DA_Out_0, _Multiply_C0EAB2EE_Out_2);
                        float _Saturate_1F246CE5_Out_1;
                        Unity_Saturate_float(_Multiply_C0EAB2EE_Out_2, _Saturate_1F246CE5_Out_1);
                        float _Absolute_95405FDB_Out_1;
                        Unity_Absolute_float(_Saturate_1F246CE5_Out_1, _Absolute_95405FDB_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_3B17247C;
                        float _BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_4C121471_Out_3, _Add_AE24F590_Out_2, _Absolute_95405FDB_Out_1, _BlendOverlayDetailSmoothness_3B17247C, _BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1);
                        float _Saturate_F6661092_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1, _Saturate_F6661092_Out_1);
                        float3 _Vector3_FEF1FB88_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Saturate_F6661092_Out_1);
                        float _Property_88D7F675_Out_0 = _CoverMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_Split_824C6099_R_1, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _CoverAORemapMin;
                        float _Property_C5C18557_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_Split_824C6099_G_2, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_Split_824C6099_A_4, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_4B858D29_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Vector3_FEF1FB88_Out_0, _Vector3_4B858D29_Out_0, (_Branch_D6B0024E_Out_3.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        float _Property_328F033C_Out_0 = _WetSmoothness;
                        float _Lerp_1DEC7741_Out_3;
                        Unity_Lerp_float(_Split_BF192904_B_3, _Property_328F033C_Out_0, _OneMinus_69E30394_Out_1, _Lerp_1DEC7741_Out_3);
                        surface.Albedo = _Lerp_1AB1B2C4_Out_3;
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.CoatMask = 0;
                        surface.Metallic = _Split_BF192904_R_1;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Lerp_1DEC7741_Out_3;
                        surface.Occlusion = _Split_BF192904_G_2;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
            FragInputs BuildFragInputs(VaryingsMeshToPS input)
            {
                FragInputs output;
                ZERO_INITIALIZE(FragInputs, output);
        
                // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                // to compute normals which are then passed on elsewhere to compute other values...
                output.tangentToWorld = k_identity3x3;
                output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
                output.positionRWS = input.positionRWS;
                output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                output.texCoord0 = input.texCoord0;
                output.texCoord1 = input.texCoord1;
                output.texCoord2 = input.texCoord2;
                // output.texCoord3 = input.texCoord3;
                output.color = input.color;
                #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #elif SHADER_STAGE_FRAGMENT
                // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #endif // SHADER_STAGE_FRAGMENT
        
                return output;
            }
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            // existing HDRP code uses the combined function to go directly from packed to frag inputs
            FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
            {
                UNITY_SETUP_INSTANCE_ID(input);
                VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                return BuildFragInputs(unpacked);
            }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // copy across graph values, if defined
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
                surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #else
                surfaceData.specularOcclusion = 1.0;
        #endif
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx)); // Quantize V to _ScreenSize values
                LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassGBuffer.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "MotionVectors"
            Tags { "LightMode" = "MotionVectors" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            
            Cull [_CullMode]
        
            
            ZWrite On
        
            
            // Stencil setup
        Stencil
        {
           WriteMask [_StencilWriteMaskMV]
           Ref [_StencilRefMV]
           Comp Always
           Pass Replace
        }
        
            
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            // #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_MOTION_VECTORS
                #pragma multi_compile _ WRITE_NORMAL_BUFFER
                #pragma multi_compile _ WRITE_MSAA_DEPTH
                // ACTIVE FIELDS:
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.WorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescription.Normal
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Alpha
                //   AttributesMesh.normalOS
                //   AttributesMesh.tangentOS
                //   AttributesMesh.uv0
                //   AttributesMesh.uv1
                //   AttributesMesh.color
                //   AttributesMesh.uv2
                //   AttributesMesh.uv3
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord0
                //   FragInputs.texCoord1
                //   FragInputs.texCoord2
                //   FragInputs.texCoord3
                //   FragInputs.color
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord0
                //   VaryingsMeshToPS.texCoord1
                //   VaryingsMeshToPS.texCoord2
                //   VaryingsMeshToPS.texCoord3
                //   VaryingsMeshToPS.color
                //   AttributesMesh.positionOS
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define ATTRIBUTES_NEED_TEXCOORD3
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
            #define VARYINGS_NEED_TEXCOORD3
            #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        // Generated Type: AttributesMesh
        struct AttributesMesh {
            float3 positionOS : POSITION;
            float3 normalOS : NORMAL; // optional
            float4 tangentOS : TANGENT; // optional
            float4 uv0 : TEXCOORD0; // optional
            float4 uv1 : TEXCOORD1; // optional
            float4 uv2 : TEXCOORD2; // optional
            float4 uv3 : TEXCOORD3; // optional
            float4 color : COLOR; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        
        // Generated Type: VaryingsMeshToPS
        struct VaryingsMeshToPS {
            float4 positionCS : SV_Position;
            float3 positionRWS; // optional
            float3 normalWS; // optional
            float4 tangentWS; // optional
            float4 texCoord0; // optional
            float4 texCoord1; // optional
            float4 texCoord2; // optional
            float4 texCoord3; // optional
            float4 color; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        struct PackedVaryingsMeshToPS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            float4 interp02 : TEXCOORD2; // auto-packed
            float4 interp03 : TEXCOORD3; // auto-packed
            float4 interp04 : TEXCOORD4; // auto-packed
            float4 interp05 : TEXCOORD5; // auto-packed
            float4 interp06 : TEXCOORD6; // auto-packed
            float4 interp07 : TEXCOORD7; // auto-packed
            float4 positionCS : SV_Position; // unpacked
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            output.interp02.xyzw = input.tangentWS;
            output.interp03.xyzw = input.texCoord0;
            output.interp04.xyzw = input.texCoord1;
            output.interp05.xyzw = input.texCoord2;
            output.interp06.xyzw = input.texCoord3;
            output.interp07.xyzw = input.color;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            output.tangentWS = input.interp02.xyzw;
            output.texCoord0 = input.interp03.xyzw;
            output.texCoord1 = input.interp04.xyzw;
            output.texCoord2 = input.interp05.xyzw;
            output.texCoord3 = input.interp06.xyzw;
            output.color = input.interp07.xyzw;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        
        // Generated Type: VaryingsMeshToDS
        struct VaryingsMeshToDS {
            float3 positionRWS;
            float3 normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToDS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
        {
            PackedVaryingsMeshToDS output;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
        {
            VaryingsMeshToDS output;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float _BaseNormalScale;
                    float _BaseMetallic;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _UseDynamicCoverTStaticMaskF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float3 _CoverDirection;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float4 _CoverTilingOffset;
                    float _CoverTriplanarThreshold;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverMetallic;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _AlphaCutoff;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 WorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Normal;
                        float Smoothness;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Multiply_float (float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float (float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Multiply_float (float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 WorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Absolute_float3(float3 In, out float3 Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Power_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Multiply_float (float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Divide_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A / B;
                    }
                
                    struct Bindings_TriplanarNMn_059da9746584140498cd018db3c76047
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 WorldSpacePosition;
                    };
                
                    void SG_TriplanarNMn_059da9746584140498cd018db3c76047(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNMn_059da9746584140498cd018db3c76047 IN, out float4 XYZ, out float4 XZ, out float4 YZ, out float4 XY)
                    {
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float _Property_7A4DC59B_Out_0 = Vector1_41461AC9;
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_D99671F1_Out_2);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_6E58BF97_Out_2;
                        Unity_Multiply_float((_Multiply_D99671F1_Out_2.xy), _Vector2_DC7A07A_Out_0, _Multiply_6E58BF97_Out_2);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_6E58BF97_Out_2);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_97283B7E_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_97283B7E_Out_2);
                        float3 _Vector3_A5ECB01F_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_97283B7E_Out_2, _Split_1D7F6EE9_G_2);
                        float3 _Absolute_FF95EDEB_Out_1;
                        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_FF95EDEB_Out_1);
                        float _Property_F8688E0_Out_0 = Vector1_E4D1C13A;
                        float3 _Power_C741CD3A_Out_2;
                        Unity_Power_float3(_Absolute_FF95EDEB_Out_1, (_Property_F8688E0_Out_0.xxx), _Power_C741CD3A_Out_2);
                        float3 _Multiply_3FB4A346_Out_2;
                        Unity_Multiply_float(_Power_C741CD3A_Out_2, _Power_C741CD3A_Out_2, _Multiply_3FB4A346_Out_2);
                        float _Split_98088E33_R_1 = _Multiply_3FB4A346_Out_2[0];
                        float _Split_98088E33_G_2 = _Multiply_3FB4A346_Out_2[1];
                        float _Split_98088E33_B_3 = _Multiply_3FB4A346_Out_2[2];
                        float _Split_98088E33_A_4 = 0;
                        float3 _Multiply_B99FFB12_Out_2;
                        Unity_Multiply_float(_Vector3_A5ECB01F_Out_0, (_Split_98088E33_G_2.xxx), _Multiply_B99FFB12_Out_2);
                        float4 _Combine_EAF808EA_RGBA_4;
                        float3 _Combine_EAF808EA_RGB_5;
                        float2 _Combine_EAF808EA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_G_2, 0, 0, _Combine_EAF808EA_RGBA_4, _Combine_EAF808EA_RGB_5, _Combine_EAF808EA_RG_6);
                        float4 _Multiply_9B855117_Out_2;
                        Unity_Multiply_float(_Combine_EAF808EA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_9B855117_Out_2);
                        float _Multiply_9028821C_Out_2;
                        Unity_Multiply_float(_Split_A88C5CBA_B_3, -1, _Multiply_9028821C_Out_2);
                        float2 _Vector2_34183E31_Out_0 = float2(_Multiply_9028821C_Out_2, 1);
                        float2 _Multiply_25D3DEE7_Out_2;
                        Unity_Multiply_float((_Multiply_9B855117_Out_2.xy), _Vector2_34183E31_Out_0, _Multiply_25D3DEE7_Out_2);
                        float4 _SampleTexture2D_66E4959F_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_25D3DEE7_Out_2);
                        _SampleTexture2D_66E4959F_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_66E4959F_RGBA_0);
                        float _SampleTexture2D_66E4959F_R_4 = _SampleTexture2D_66E4959F_RGBA_0.r;
                        float _SampleTexture2D_66E4959F_G_5 = _SampleTexture2D_66E4959F_RGBA_0.g;
                        float _SampleTexture2D_66E4959F_B_6 = _SampleTexture2D_66E4959F_RGBA_0.b;
                        float _SampleTexture2D_66E4959F_A_7 = _SampleTexture2D_66E4959F_RGBA_0.a;
                        float2 _Vector2_6CC92971_Out_0 = float2(_SampleTexture2D_66E4959F_R_4, _SampleTexture2D_66E4959F_G_5);
                        float2 _Multiply_EDE2F02C_Out_2;
                        Unity_Multiply_float(_Vector2_6CC92971_Out_0, _Vector2_34183E31_Out_0, _Multiply_EDE2F02C_Out_2);
                        float2 _Vector2_6D428360_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_G_2);
                        float2 _Add_6D3412BD_Out_2;
                        Unity_Add_float2(_Multiply_EDE2F02C_Out_2, _Vector2_6D428360_Out_0, _Add_6D3412BD_Out_2);
                        float _Split_79C8538A_R_1 = _Add_6D3412BD_Out_2[0];
                        float _Split_79C8538A_G_2 = _Add_6D3412BD_Out_2[1];
                        float _Split_79C8538A_B_3 = 0;
                        float _Split_79C8538A_A_4 = 0;
                        float _Multiply_576DD59F_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_66E4959F_B_6, _Split_CE0AB7C6_B_3, _Multiply_576DD59F_Out_2);
                        float3 _Vector3_77AAFCD8_Out_0 = float3(_Split_79C8538A_R_1, _Split_79C8538A_G_2, _Multiply_576DD59F_Out_2);
                        float3 _Multiply_9E620CB9_Out_2;
                        Unity_Multiply_float(_Vector3_77AAFCD8_Out_0, (_Split_98088E33_B_3.xxx), _Multiply_9E620CB9_Out_2);
                        float4 _Combine_D494A8E_RGBA_4;
                        float3 _Combine_D494A8E_RGB_5;
                        float2 _Combine_D494A8E_RG_6;
                        Unity_Combine_float(_Split_34F118DC_B_3, _Split_34F118DC_G_2, 0, 0, _Combine_D494A8E_RGBA_4, _Combine_D494A8E_RGB_5, _Combine_D494A8E_RG_6);
                        float4 _Multiply_1B29A9F1_Out_2;
                        Unity_Multiply_float(_Combine_D494A8E_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_1B29A9F1_Out_2);
                        float2 _Vector2_2EDA3EA2_Out_0 = float2(_Split_A88C5CBA_R_1, 1);
                        float2 _Multiply_4083C468_Out_2;
                        Unity_Multiply_float((_Multiply_1B29A9F1_Out_2.xy), _Vector2_2EDA3EA2_Out_0, _Multiply_4083C468_Out_2);
                        float4 _SampleTexture2D_96366F41_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_4083C468_Out_2);
                        _SampleTexture2D_96366F41_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_96366F41_RGBA_0);
                        float _SampleTexture2D_96366F41_R_4 = _SampleTexture2D_96366F41_RGBA_0.r;
                        float _SampleTexture2D_96366F41_G_5 = _SampleTexture2D_96366F41_RGBA_0.g;
                        float _SampleTexture2D_96366F41_B_6 = _SampleTexture2D_96366F41_RGBA_0.b;
                        float _SampleTexture2D_96366F41_A_7 = _SampleTexture2D_96366F41_RGBA_0.a;
                        float _Multiply_D70B5F94_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_96366F41_B_6, _Split_CE0AB7C6_R_1, _Multiply_D70B5F94_Out_2);
                        float2 _Vector2_D6F48DBF_Out_0 = float2(_SampleTexture2D_96366F41_R_4, _SampleTexture2D_96366F41_G_5);
                        float2 _Multiply_32364D17_Out_2;
                        Unity_Multiply_float(_Vector2_D6F48DBF_Out_0, _Vector2_2EDA3EA2_Out_0, _Multiply_32364D17_Out_2);
                        float2 _Vector2_5861421E_Out_0 = float2(_Split_CE0AB7C6_B_3, _Split_CE0AB7C6_G_2);
                        float2 _Add_15B5B6DC_Out_2;
                        Unity_Add_float2(_Multiply_32364D17_Out_2, _Vector2_5861421E_Out_0, _Add_15B5B6DC_Out_2);
                        float _Split_68B7323B_R_1 = _Add_15B5B6DC_Out_2[0];
                        float _Split_68B7323B_G_2 = _Add_15B5B6DC_Out_2[1];
                        float _Split_68B7323B_B_3 = 0;
                        float _Split_68B7323B_A_4 = 0;
                        float3 _Vector3_1ACBBFC4_Out_0 = float3(_Multiply_D70B5F94_Out_2, _Split_68B7323B_G_2, _Split_68B7323B_R_1);
                        float3 _Multiply_1C5CFCC5_Out_2;
                        Unity_Multiply_float(_Vector3_1ACBBFC4_Out_0, (_Split_98088E33_R_1.xxx), _Multiply_1C5CFCC5_Out_2);
                        float3 _Add_D483B2FD_Out_2;
                        Unity_Add_float3(_Multiply_9E620CB9_Out_2, _Multiply_1C5CFCC5_Out_2, _Add_D483B2FD_Out_2);
                        float3 _Add_166B5BED_Out_2;
                        Unity_Add_float3(_Multiply_B99FFB12_Out_2, _Add_D483B2FD_Out_2, _Add_166B5BED_Out_2);
                        float _Add_B73B64F6_Out_2;
                        Unity_Add_float(_Split_98088E33_R_1, _Split_98088E33_G_2, _Add_B73B64F6_Out_2);
                        float _Add_523B36E8_Out_2;
                        Unity_Add_float(_Add_B73B64F6_Out_2, _Split_98088E33_B_3, _Add_523B36E8_Out_2);
                        float3 _Divide_86C67C72_Out_2;
                        Unity_Divide_float3(_Add_166B5BED_Out_2, (_Add_523B36E8_Out_2.xxx), _Divide_86C67C72_Out_2);
                        float3x3 tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_F679F94B_Out_1 = TransformWorldToTangent(_Divide_86C67C72_Out_2.xyz, tangentTransform_World);
                        float3 _Normalize_E5F34A45_Out_1;
                        Unity_Normalize_float3(_Transform_F679F94B_Out_1, _Normalize_E5F34A45_Out_1);
                        XYZ = (float4(_Normalize_E5F34A45_Out_1, 1.0));
                        XZ = (float4(_Vector3_A5ECB01F_Out_0, 1.0));
                        YZ = (float4(_Vector3_77AAFCD8_Out_0, 1.0));
                        XY = (float4(_Vector3_1ACBBFC4_Out_0, 1.0));
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A + B;
                    }
                
                    struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpacePosition;
                    };
                
                    void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea IN, out float4 XYZ, out float4 XZ, out float4 YZ, out float4 XY)
                    {
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float _Property_7A4DC59B_Out_0 = Vector1_41461AC9;
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_D99671F1_Out_2);
                        float3 _Sign_C0850857_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_C0850857_Out_1);
                        float _Split_EEBC69B5_R_1 = _Sign_C0850857_Out_1[0];
                        float _Split_EEBC69B5_G_2 = _Sign_C0850857_Out_1[1];
                        float _Split_EEBC69B5_B_3 = _Sign_C0850857_Out_1[2];
                        float _Split_EEBC69B5_A_4 = 0;
                        float2 _Vector2_7598EA98_Out_0 = float2(_Split_EEBC69B5_G_2, 1);
                        float2 _Multiply_F82F3FE2_Out_2;
                        Unity_Multiply_float((_Multiply_D99671F1_Out_2.xy), _Vector2_7598EA98_Out_0, _Multiply_F82F3FE2_Out_2);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_F82F3FE2_Out_2);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float3 _Absolute_FF95EDEB_Out_1;
                        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_FF95EDEB_Out_1);
                        float _Property_F8688E0_Out_0 = Vector1_E4D1C13A;
                        float3 _Power_C741CD3A_Out_2;
                        Unity_Power_float3(_Absolute_FF95EDEB_Out_1, (_Property_F8688E0_Out_0.xxx), _Power_C741CD3A_Out_2);
                        float3 _Multiply_3FB4A346_Out_2;
                        Unity_Multiply_float(_Power_C741CD3A_Out_2, _Power_C741CD3A_Out_2, _Multiply_3FB4A346_Out_2);
                        float _Split_98088E33_R_1 = _Multiply_3FB4A346_Out_2[0];
                        float _Split_98088E33_G_2 = _Multiply_3FB4A346_Out_2[1];
                        float _Split_98088E33_B_3 = _Multiply_3FB4A346_Out_2[2];
                        float _Split_98088E33_A_4 = 0;
                        float4 _Multiply_B99FFB12_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_RGBA_0, (_Split_98088E33_G_2.xxxx), _Multiply_B99FFB12_Out_2);
                        float4 _Combine_EAF808EA_RGBA_4;
                        float3 _Combine_EAF808EA_RGB_5;
                        float2 _Combine_EAF808EA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_G_2, 0, 0, _Combine_EAF808EA_RGBA_4, _Combine_EAF808EA_RGB_5, _Combine_EAF808EA_RG_6);
                        float4 _Multiply_9B855117_Out_2;
                        Unity_Multiply_float(_Combine_EAF808EA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_9B855117_Out_2);
                        float _Multiply_B8AC16FB_Out_2;
                        Unity_Multiply_float(_Split_EEBC69B5_B_3, -1, _Multiply_B8AC16FB_Out_2);
                        float2 _Vector2_F031282A_Out_0 = float2(_Multiply_B8AC16FB_Out_2, 1);
                        float2 _Multiply_89A39D70_Out_2;
                        Unity_Multiply_float((_Multiply_9B855117_Out_2.xy), _Vector2_F031282A_Out_0, _Multiply_89A39D70_Out_2);
                        float4 _SampleTexture2D_66E4959F_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_89A39D70_Out_2);
                        float _SampleTexture2D_66E4959F_R_4 = _SampleTexture2D_66E4959F_RGBA_0.r;
                        float _SampleTexture2D_66E4959F_G_5 = _SampleTexture2D_66E4959F_RGBA_0.g;
                        float _SampleTexture2D_66E4959F_B_6 = _SampleTexture2D_66E4959F_RGBA_0.b;
                        float _SampleTexture2D_66E4959F_A_7 = _SampleTexture2D_66E4959F_RGBA_0.a;
                        float4 _Multiply_9E620CB9_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_66E4959F_RGBA_0, (_Split_98088E33_B_3.xxxx), _Multiply_9E620CB9_Out_2);
                        float4 _Combine_D494A8E_RGBA_4;
                        float3 _Combine_D494A8E_RGB_5;
                        float2 _Combine_D494A8E_RG_6;
                        Unity_Combine_float(_Split_34F118DC_B_3, _Split_34F118DC_G_2, 0, 0, _Combine_D494A8E_RGBA_4, _Combine_D494A8E_RGB_5, _Combine_D494A8E_RG_6);
                        float4 _Multiply_1B29A9F1_Out_2;
                        Unity_Multiply_float(_Combine_D494A8E_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_1B29A9F1_Out_2);
                        float2 _Vector2_1F147BEC_Out_0 = float2(_Split_EEBC69B5_R_1, 1);
                        float2 _Multiply_5B8B54E9_Out_2;
                        Unity_Multiply_float((_Multiply_1B29A9F1_Out_2.xy), _Vector2_1F147BEC_Out_0, _Multiply_5B8B54E9_Out_2);
                        float4 _SampleTexture2D_96366F41_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_5B8B54E9_Out_2);
                        float _SampleTexture2D_96366F41_R_4 = _SampleTexture2D_96366F41_RGBA_0.r;
                        float _SampleTexture2D_96366F41_G_5 = _SampleTexture2D_96366F41_RGBA_0.g;
                        float _SampleTexture2D_96366F41_B_6 = _SampleTexture2D_96366F41_RGBA_0.b;
                        float _SampleTexture2D_96366F41_A_7 = _SampleTexture2D_96366F41_RGBA_0.a;
                        float4 _Multiply_1C5CFCC5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_96366F41_RGBA_0, (_Split_98088E33_R_1.xxxx), _Multiply_1C5CFCC5_Out_2);
                        float4 _Add_D483B2FD_Out_2;
                        Unity_Add_float4(_Multiply_9E620CB9_Out_2, _Multiply_1C5CFCC5_Out_2, _Add_D483B2FD_Out_2);
                        float4 _Add_166B5BED_Out_2;
                        Unity_Add_float4(_Multiply_B99FFB12_Out_2, _Add_D483B2FD_Out_2, _Add_166B5BED_Out_2);
                        float _Add_B73B64F6_Out_2;
                        Unity_Add_float(_Split_98088E33_R_1, _Split_98088E33_G_2, _Add_B73B64F6_Out_2);
                        float _Add_523B36E8_Out_2;
                        Unity_Add_float(_Add_B73B64F6_Out_2, _Split_98088E33_B_3, _Add_523B36E8_Out_2);
                        float4 _Divide_86C67C72_Out_2;
                        Unity_Divide_float4(_Add_166B5BED_Out_2, (_Add_523B36E8_Out_2.xxxx), _Divide_86C67C72_Out_2);
                        XYZ = _Divide_86C67C72_Out_2;
                        XZ = _SampleTexture2D_AF934D9A_RGBA_0;
                        YZ = _SampleTexture2D_66E4959F_RGBA_0;
                        XY = _SampleTexture2D_96366F41_RGBA_0;
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 WorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay = _Lerp_CA077B77_Out_3;
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_FC905A02_Out_0 = _DetailTilingOffset;
                        float _Split_66FEB2D6_R_1 = _Property_FC905A02_Out_0[0];
                        float _Split_66FEB2D6_G_2 = _Property_FC905A02_Out_0[1];
                        float _Split_66FEB2D6_B_3 = _Property_FC905A02_Out_0[2];
                        float _Split_66FEB2D6_A_4 = _Property_FC905A02_Out_0[3];
                        float2 _Vector2_2C65450F_Out_0 = float2(_Split_66FEB2D6_R_1, _Split_66FEB2D6_G_2);
                        float2 _Vector2_20821B1B_Out_0 = float2(_Split_66FEB2D6_B_3, _Split_66FEB2D6_A_4);
                        float2 _TilingAndOffset_AFDF49A5_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_2C65450F_Out_0, _Vector2_20821B1B_Out_0, _TilingAndOffset_AFDF49A5_Out_3);
                        float4 _SampleTexture2D_CD9C50D2_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_AFDF49A5_Out_3);
                        float _SampleTexture2D_CD9C50D2_R_4 = _SampleTexture2D_CD9C50D2_RGBA_0.r;
                        float _SampleTexture2D_CD9C50D2_G_5 = _SampleTexture2D_CD9C50D2_RGBA_0.g;
                        float _SampleTexture2D_CD9C50D2_B_6 = _SampleTexture2D_CD9C50D2_RGBA_0.b;
                        float _SampleTexture2D_CD9C50D2_A_7 = _SampleTexture2D_CD9C50D2_RGBA_0.a;
                        float2 _Vector2_D25079B9_Out_0 = float2(_SampleTexture2D_CD9C50D2_A_7, _SampleTexture2D_CD9C50D2_G_5);
                        float2 _Multiply_A6D263CC_Out_2;
                        Unity_Multiply_float(_Vector2_D25079B9_Out_0, float2(2, 2), _Multiply_A6D263CC_Out_2);
                        float2 _Add_A94F92F2_Out_2;
                        Unity_Add_float2(_Multiply_A6D263CC_Out_2, float2(-1, -1), _Add_A94F92F2_Out_2);
                        float _Property_5A04D61A_Out_0 = _DetailNormalScale;
                        float2 _Multiply_E3BBD5A0_Out_2;
                        Unity_Multiply_float(_Add_A94F92F2_Out_2, (_Property_5A04D61A_Out_0.xx), _Multiply_E3BBD5A0_Out_2);
                        float _Split_3BC0AA96_R_1 = _Multiply_E3BBD5A0_Out_2[0];
                        float _Split_3BC0AA96_G_2 = _Multiply_E3BBD5A0_Out_2[1];
                        float _Split_3BC0AA96_B_3 = 0;
                        float _Split_3BC0AA96_A_4 = 0;
                        float _DotProduct_9FB0B73C_Out_2;
                        Unity_DotProduct_float2(_Multiply_E3BBD5A0_Out_2, _Multiply_E3BBD5A0_Out_2, _DotProduct_9FB0B73C_Out_2);
                        float _Saturate_3C8C4A9B_Out_1;
                        Unity_Saturate_float(_DotProduct_9FB0B73C_Out_2, _Saturate_3C8C4A9B_Out_1);
                        float _OneMinus_E0A2EC16_Out_1;
                        Unity_OneMinus_float(_Saturate_3C8C4A9B_Out_1, _OneMinus_E0A2EC16_Out_1);
                        float _SquareRoot_7D6FC55F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_E0A2EC16_Out_1, _SquareRoot_7D6FC55F_Out_1);
                        float3 _Vector3_408E9F99_Out_0 = float3(_Split_3BC0AA96_R_1, _Split_3BC0AA96_G_2, _SquareRoot_7D6FC55F_Out_1);
                        float4 _Property_3E4B16C8_Out_0 = _BaseTilingOffset;
                        float _Property_50A244CF_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_8FB4259D;
                        _PlanarNMn_8FB4259D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_8FB4259D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_8FB4259D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_8FB4259D.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNMn_8FB4259D.uv0 = IN.uv0;
                        float4 _PlanarNMn_8FB4259D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNMn_8FB4259D, _PlanarNMn_8FB4259D_XZ_2);
                        float _Property_1CABD952_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_8FB4259D_XZ_2.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float3 _NormalBlend_B205DA66_Out_2;
                        Unity_NormalBlend_float(_Vector3_408E9F99_Out_0, _NormalStrength_EDF1EB8B_Out_2, _NormalBlend_B205DA66_Out_2);
                        float4 _Property_E0773BA3_Out_0 = _CoverTilingOffset;
                        float4 _Divide_49A78312_Out_2;
                        Unity_Divide_float4(float4(1, 1, 0, 0), _Property_E0773BA3_Out_0, _Divide_49A78312_Out_2);
                        float _Property_344EE56F_Out_0 = _CoverTriplanarThreshold;
                        Bindings_TriplanarNMn_059da9746584140498cd018db3c76047 _TriplanarNMn_98A5B80C;
                        _TriplanarNMn_98A5B80C.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNMn_98A5B80C.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _TriplanarNMn_98A5B80C.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _TriplanarNMn_98A5B80C.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNMn_98A5B80C_XYZ_1;
                        float4 _TriplanarNMn_98A5B80C_XZ_2;
                        float4 _TriplanarNMn_98A5B80C_YZ_3;
                        float4 _TriplanarNMn_98A5B80C_XY_4;
                        SG_TriplanarNMn_059da9746584140498cd018db3c76047(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNMn_98A5B80C, _TriplanarNMn_98A5B80C_XYZ_1, _TriplanarNMn_98A5B80C_XZ_2, _TriplanarNMn_98A5B80C_YZ_3, _TriplanarNMn_98A5B80C_XY_4);
                        float _Property_2BC6CE93_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_D9292962_Out_2;
                        Unity_NormalStrength_float((_TriplanarNMn_98A5B80C_XYZ_1.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_D9292962_Out_2);
                        float _Property_4AB1A11C_Out_0 = _UseDynamicCoverTStaticMaskF;
                        float4 _UV_20D72EFB_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_E213A685_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_20D72EFB_Out_0.xy));
                        float _SampleTexture2D_E213A685_R_4 = _SampleTexture2D_E213A685_RGBA_0.r;
                        float _SampleTexture2D_E213A685_G_5 = _SampleTexture2D_E213A685_RGBA_0.g;
                        float _SampleTexture2D_E213A685_B_6 = _SampleTexture2D_E213A685_RGBA_0.b;
                        float _SampleTexture2D_E213A685_A_7 = _SampleTexture2D_E213A685_RGBA_0.a;
                        float _Property_23BACCE9_Out_0 = _CoverMaskPower;
                        float _Multiply_CEE6BF7E_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_E213A685_A_7, _Property_23BACCE9_Out_0, _Multiply_CEE6BF7E_Out_2);
                        float _Clamp_8BDA8462_Out_3;
                        Unity_Clamp_float(_Multiply_CEE6BF7E_Out_2, 0, 1, _Clamp_8BDA8462_Out_3);
                        float _Split_7AD1E82F_R_1 = IN.VertexColor[0];
                        float _Split_7AD1E82F_G_2 = IN.VertexColor[1];
                        float _Split_7AD1E82F_B_3 = IN.VertexColor[2];
                        float _Split_7AD1E82F_A_4 = IN.VertexColor[3];
                        float3 _Property_B337987A_Out_0 = _CoverDirection;
                        float _Property_1277E229_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D8740A3D_Out_2;
                        Unity_NormalStrength_float((_TriplanarNMn_98A5B80C_XYZ_1.xyz), _Property_1277E229_Out_0, _NormalStrength_D8740A3D_Out_2);
                        float3 _Multiply_C10488EF_Out_2;
                        Unity_Multiply_float(_Property_B337987A_Out_0, IN.WorldSpaceNormal, _Multiply_C10488EF_Out_2);
                        float _Split_F588AD82_R_1 = _Multiply_C10488EF_Out_2[0];
                        float _Split_F588AD82_G_2 = _Multiply_C10488EF_Out_2[1];
                        float _Split_F588AD82_B_3 = _Multiply_C10488EF_Out_2[2];
                        float _Split_F588AD82_A_4 = 0;
                        float _Add_1BF84D66_Out_2;
                        Unity_Add_float(_Split_F588AD82_R_1, _Split_F588AD82_G_2, _Add_1BF84D66_Out_2);
                        float _Add_55FEEDC7_Out_2;
                        Unity_Add_float(_Add_1BF84D66_Out_2, _Split_F588AD82_B_3, _Add_55FEEDC7_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Cover_Amount;
                        float _Property_7DFE3C77_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_5C7F53DB_Out_2;
                        Unity_Subtract_float(4, _Property_7DFE3C77_Out_0, _Subtract_5C7F53DB_Out_2);
                        float _Divide_2E853816_Out_2;
                        Unity_Divide_float(_Property_C3CE9B07_Out_0, _Subtract_5C7F53DB_Out_2, _Divide_2E853816_Out_2);
                        float _Absolute_B440693F_Out_1;
                        Unity_Absolute_float(_Divide_2E853816_Out_2, _Absolute_B440693F_Out_1);
                        float _Power_F952C21D_Out_2;
                        Unity_Power_float(_Absolute_B440693F_Out_1, _Subtract_5C7F53DB_Out_2, _Power_F952C21D_Out_2);
                        float _Clamp_FC9AF565_Out_3;
                        Unity_Clamp_float(_Power_F952C21D_Out_2, 0, 2, _Clamp_FC9AF565_Out_3);
                        float _Multiply_2164B3E7_Out_2;
                        Unity_Multiply_float(_Add_55FEEDC7_Out_2, _Clamp_FC9AF565_Out_3, _Multiply_2164B3E7_Out_2);
                        float _Saturate_173154BF_Out_1;
                        Unity_Saturate_float(_Multiply_2164B3E7_Out_2, _Saturate_173154BF_Out_1);
                        float _Clamp_898505F7_Out_3;
                        Unity_Clamp_float(_Add_55FEEDC7_Out_2, 0, 0.9999, _Clamp_898505F7_Out_3);
                        float _Property_A5C9D674_Out_0 = _Cover_Max_Angle;
                        float _Divide_87E47C29_Out_2;
                        Unity_Divide_float(_Property_A5C9D674_Out_0, 45, _Divide_87E47C29_Out_2);
                        float _OneMinus_18BF8D3A_Out_1;
                        Unity_OneMinus_float(_Divide_87E47C29_Out_2, _OneMinus_18BF8D3A_Out_1);
                        float _Subtract_CACC9F64_Out_2;
                        Unity_Subtract_float(_Clamp_898505F7_Out_3, _OneMinus_18BF8D3A_Out_1, _Subtract_CACC9F64_Out_2);
                        float _Clamp_989AEDE1_Out_3;
                        Unity_Clamp_float(_Subtract_CACC9F64_Out_2, 0, 2, _Clamp_989AEDE1_Out_3);
                        float _Divide_FFC65CC2_Out_2;
                        Unity_Divide_float(1, _Divide_87E47C29_Out_2, _Divide_FFC65CC2_Out_2);
                        float _Multiply_F5867110_Out_2;
                        Unity_Multiply_float(_Clamp_989AEDE1_Out_3, _Divide_FFC65CC2_Out_2, _Multiply_F5867110_Out_2);
                        float _Absolute_D89283B3_Out_1;
                        Unity_Absolute_float(_Multiply_F5867110_Out_2, _Absolute_D89283B3_Out_1);
                        float _Property_9B9027DB_Out_0 = _CoverHardness;
                        float _Power_B072AE57_Out_2;
                        Unity_Power_float(_Absolute_D89283B3_Out_1, _Property_9B9027DB_Out_0, _Power_B072AE57_Out_2);
                        float _Property_388C9B8B_Out_0 = _Cover_Min_Height;
                        float _OneMinus_4583AA8B_Out_1;
                        Unity_OneMinus_float(_Property_388C9B8B_Out_0, _OneMinus_4583AA8B_Out_1);
                        float _Split_E686ABCF_R_1 = IN.WorldSpacePosition[0];
                        float _Split_E686ABCF_G_2 = IN.WorldSpacePosition[1];
                        float _Split_E686ABCF_B_3 = IN.WorldSpacePosition[2];
                        float _Split_E686ABCF_A_4 = 0;
                        float _Add_BF4A84A1_Out_2;
                        Unity_Add_float(_OneMinus_4583AA8B_Out_1, _Split_E686ABCF_G_2, _Add_BF4A84A1_Out_2);
                        float _Add_6E3AF2BE_Out_2;
                        Unity_Add_float(_Add_BF4A84A1_Out_2, 1, _Add_6E3AF2BE_Out_2);
                        float _Clamp_4453A0AC_Out_3;
                        Unity_Clamp_float(_Add_6E3AF2BE_Out_2, 0, 1, _Clamp_4453A0AC_Out_3);
                        float _Property_24108C8C_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_1CB6388C_Out_2;
                        Unity_Add_float(_Add_BF4A84A1_Out_2, _Property_24108C8C_Out_0, _Add_1CB6388C_Out_2);
                        float _Divide_62D3B622_Out_2;
                        Unity_Divide_float(_Add_1CB6388C_Out_2, _Add_BF4A84A1_Out_2, _Divide_62D3B622_Out_2);
                        float _OneMinus_9A3B328E_Out_1;
                        Unity_OneMinus_float(_Divide_62D3B622_Out_2, _OneMinus_9A3B328E_Out_1);
                        float _Add_60A40097_Out_2;
                        Unity_Add_float(_OneMinus_9A3B328E_Out_1, -0.5, _Add_60A40097_Out_2);
                        float _Clamp_BF85F16F_Out_3;
                        Unity_Clamp_float(_Add_60A40097_Out_2, 0, 1, _Clamp_BF85F16F_Out_3);
                        float _Add_15252D0D_Out_2;
                        Unity_Add_float(_Clamp_4453A0AC_Out_3, _Clamp_BF85F16F_Out_3, _Add_15252D0D_Out_2);
                        float _Clamp_9B57A26B_Out_3;
                        Unity_Clamp_float(_Add_15252D0D_Out_2, 0, 1, _Clamp_9B57A26B_Out_3);
                        float _Multiply_C95AF257_Out_2;
                        Unity_Multiply_float(_Power_B072AE57_Out_2, _Clamp_9B57A26B_Out_3, _Multiply_C95AF257_Out_2);
                        float _Multiply_FF8131E5_Out_2;
                        Unity_Multiply_float(_Saturate_173154BF_Out_1, _Multiply_C95AF257_Out_2, _Multiply_FF8131E5_Out_2);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_NormalBlend_B205DA66_Out_2, _NormalStrength_D8740A3D_Out_2, (_Multiply_FF8131E5_Out_2.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_8AB587B2_Out_1 = mul(transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float3 _Multiply_40FEF87C_Out_2;
                        Unity_Multiply_float(_Property_B337987A_Out_0, _Transform_8AB587B2_Out_1, _Multiply_40FEF87C_Out_2);
                        float _Split_2E5CD9E3_R_1 = _Multiply_40FEF87C_Out_2[0];
                        float _Split_2E5CD9E3_G_2 = _Multiply_40FEF87C_Out_2[1];
                        float _Split_2E5CD9E3_B_3 = _Multiply_40FEF87C_Out_2[2];
                        float _Split_2E5CD9E3_A_4 = 0;
                        float _Add_931DAB0_Out_2;
                        Unity_Add_float(_Split_2E5CD9E3_R_1, _Split_2E5CD9E3_G_2, _Add_931DAB0_Out_2);
                        float _Add_896997D2_Out_2;
                        Unity_Add_float(_Add_931DAB0_Out_2, _Split_2E5CD9E3_B_3, _Add_896997D2_Out_2);
                        float _Multiply_E09536CA_Out_2;
                        Unity_Multiply_float(_Add_896997D2_Out_2, _Clamp_FC9AF565_Out_3, _Multiply_E09536CA_Out_2);
                        float _Multiply_4EFF53BC_Out_2;
                        Unity_Multiply_float(_Clamp_FC9AF565_Out_3, _Property_9B9027DB_Out_0, _Multiply_4EFF53BC_Out_2);
                        float _Multiply_EECDD75E_Out_2;
                        Unity_Multiply_float(_Multiply_4EFF53BC_Out_2, _Multiply_C95AF257_Out_2, _Multiply_EECDD75E_Out_2);
                        float _Multiply_D777B623_Out_2;
                        Unity_Multiply_float(_Multiply_E09536CA_Out_2, _Multiply_EECDD75E_Out_2, _Multiply_D777B623_Out_2);
                        Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea _TriplanarNM_38475939;
                        _TriplanarNM_38475939.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNM_38475939.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNM_38475939_XYZ_1;
                        float4 _TriplanarNM_38475939_XZ_2;
                        float4 _TriplanarNM_38475939_YZ_3;
                        float4 _TriplanarNM_38475939_XY_4;
                        SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNM_38475939, _TriplanarNM_38475939_XYZ_1, _TriplanarNM_38475939_XZ_2, _TriplanarNM_38475939_YZ_3, _TriplanarNM_38475939_XY_4);
                        float _Split_824C6099_R_1 = _TriplanarNM_38475939_XYZ_1[0];
                        float _Split_824C6099_G_2 = _TriplanarNM_38475939_XYZ_1[1];
                        float _Split_824C6099_B_3 = _TriplanarNM_38475939_XYZ_1[2];
                        float _Split_824C6099_A_4 = _TriplanarNM_38475939_XYZ_1[3];
                        float _Property_830946EB_Out_0 = _CoverHeightMapMin;
                        float _Property_A7E18B9F_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_4BC0C782_Out_0 = float2(_Property_830946EB_Out_0, _Property_A7E18B9F_Out_0);
                        float _Property_C3051ECE_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_242BA7BA_Out_2;
                        Unity_Add_float2(_Vector2_4BC0C782_Out_0, (_Property_C3051ECE_Out_0.xx), _Add_242BA7BA_Out_2);
                        float _Remap_C868580B_Out_3;
                        Unity_Remap_float(_Split_824C6099_B_3, float2 (0, 1), _Add_242BA7BA_Out_2, _Remap_C868580B_Out_3);
                        float _Multiply_5610F739_Out_2;
                        Unity_Multiply_float(_Multiply_D777B623_Out_2, _Remap_C868580B_Out_3, _Multiply_5610F739_Out_2);
                        float _Multiply_EF26B04B_Out_2;
                        Unity_Multiply_float(_Split_7AD1E82F_G_2, _Multiply_5610F739_Out_2, _Multiply_EF26B04B_Out_2);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Multiply_EF26B04B_Out_2, _Saturate_456E02AA_Out_1);
                        float _Multiply_17104BB2_Out_2;
                        Unity_Multiply_float(_Clamp_8BDA8462_Out_3, _Saturate_456E02AA_Out_1, _Multiply_17104BB2_Out_2);
                        float _Branch_D6B0024E_Out_3;
                        Unity_Branch_float(_Property_4AB1A11C_Out_0, _Multiply_17104BB2_Out_2, _Clamp_8BDA8462_Out_3, _Branch_D6B0024E_Out_3);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_NormalBlend_B205DA66_Out_2, _NormalStrength_D9292962_Out_2, (_Branch_D6B0024E_Out_3.xxx), _Lerp_CC69B645_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_D55871DB;
                        _PlanarNM_D55871DB.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNM_D55871DB.uv0 = IN.uv0;
                        float4 _PlanarNM_D55871DB_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNM_D55871DB, _PlanarNM_D55871DB_XZ_2);
                        float _Split_65F1C04F_R_1 = _PlanarNM_D55871DB_XZ_2[0];
                        float _Split_65F1C04F_G_2 = _PlanarNM_D55871DB_XZ_2[1];
                        float _Split_65F1C04F_B_3 = _PlanarNM_D55871DB_XZ_2[2];
                        float _Split_65F1C04F_A_4 = _PlanarNM_D55871DB_XZ_2[3];
                        float _Property_25A8FF3A_Out_0 = _BaseMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_Split_65F1C04F_R_1, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _BaseAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_Split_65F1C04F_G_2, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_Split_65F1C04F_A_4, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float _Multiply_55B1F0BE_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CD9C50D2_B_6, 2, _Multiply_55B1F0BE_Out_2);
                        float _Add_AE24F590_Out_2;
                        Unity_Add_float(_Multiply_55B1F0BE_Out_2, -1, _Add_AE24F590_Out_2);
                        float _Property_B5AB31DA_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_C0EAB2EE_Out_2;
                        Unity_Multiply_float(_Add_AE24F590_Out_2, _Property_B5AB31DA_Out_0, _Multiply_C0EAB2EE_Out_2);
                        float _Saturate_1F246CE5_Out_1;
                        Unity_Saturate_float(_Multiply_C0EAB2EE_Out_2, _Saturate_1F246CE5_Out_1);
                        float _Absolute_95405FDB_Out_1;
                        Unity_Absolute_float(_Saturate_1F246CE5_Out_1, _Absolute_95405FDB_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_3B17247C;
                        float _BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_4C121471_Out_3, _Add_AE24F590_Out_2, _Absolute_95405FDB_Out_1, _BlendOverlayDetailSmoothness_3B17247C, _BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1);
                        float _Saturate_F6661092_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1, _Saturate_F6661092_Out_1);
                        float3 _Vector3_FEF1FB88_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Saturate_F6661092_Out_1);
                        float _Property_88D7F675_Out_0 = _CoverMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_Split_824C6099_R_1, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _CoverAORemapMin;
                        float _Property_C5C18557_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_Split_824C6099_G_2, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_Split_824C6099_A_4, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_4B858D29_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Vector3_FEF1FB88_Out_0, _Vector3_4B858D29_Out_0, (_Branch_D6B0024E_Out_3.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        float _Property_328F033C_Out_0 = _WetSmoothness;
                        float _OneMinus_69E30394_Out_1;
                        Unity_OneMinus_float(_Split_7AD1E82F_R_1, _OneMinus_69E30394_Out_1);
                        float _Lerp_1DEC7741_Out_3;
                        Unity_Lerp_float(_Split_BF192904_B_3, _Property_328F033C_Out_0, _OneMinus_69E30394_Out_1, _Lerp_1DEC7741_Out_3);
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.Smoothness = _Lerp_1DEC7741_Out_3;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
            FragInputs BuildFragInputs(VaryingsMeshToPS input)
            {
                FragInputs output;
                ZERO_INITIALIZE(FragInputs, output);
        
                // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                // to compute normals which are then passed on elsewhere to compute other values...
                output.tangentToWorld = k_identity3x3;
                output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
                output.positionRWS = input.positionRWS;
                output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                output.texCoord0 = input.texCoord0;
                output.texCoord1 = input.texCoord1;
                output.texCoord2 = input.texCoord2;
                output.texCoord3 = input.texCoord3;
                output.color = input.color;
                #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #elif SHADER_STAGE_FRAGMENT
                // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #endif // SHADER_STAGE_FRAGMENT
        
                return output;
            }
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            // existing HDRP code uses the combined function to go directly from packed to frag inputs
            FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
            {
                UNITY_SETUP_INSTANCE_ID(input);
                VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                return BuildFragInputs(unpacked);
            }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // copy across graph values, if defined
                // surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                // surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                // surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
                // surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #else
                surfaceData.specularOcclusion = 1.0;
        #endif
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx)); // Quantize V to _ScreenSize values
                LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                // builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassMotionVectors.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
        Pass
        {
            // based on HDLitPass.template
            Name "Forward"
            Tags { "LightMode" = "Forward" }
        
            //-------------------------------------------------------------------------------------
            // Render Modes (Blend, Cull, ZTest, Stencil, etc)
            //-------------------------------------------------------------------------------------
            Blend [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
        
            Cull [_CullModeForward]
        
            ZTest [_ZTestDepthEqualForOpaque]
        
            ZWrite [_ZWrite]
        
            
            // Stencil setup
        Stencil
        {
           WriteMask [_StencilWriteMask]
           Ref [_StencilRef]
           Comp Always
           Pass Replace
        }
        
            ColorMask [_ColorMaskTransparentVel] 1
        
            //-------------------------------------------------------------------------------------
            // End Render Modes
            //-------------------------------------------------------------------------------------
        
            HLSLPROGRAM
        
            #pragma target 4.5
            #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
            //#pragma enable_d3d11_debug_symbols
        
            #pragma multi_compile_instancing
        #pragma instancing_options nolightprobe
        #pragma instancing_options nolodfade
        
            #pragma multi_compile _ LOD_FADE_CROSSFADE
        
            #pragma shader_feature _SURFACE_TYPE_TRANSPARENT
            #pragma shader_feature_local _DOUBLESIDED_ON
            #pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
        
            //-------------------------------------------------------------------------------------
            // Variant Definitions (active field translations to HDRP defines)
            //-------------------------------------------------------------------------------------
            // #define _MATERIAL_FEATURE_SUBSURFACE_SCATTERING 1
            // #define _MATERIAL_FEATURE_TRANSMISSION 1
            // #define _MATERIAL_FEATURE_ANISOTROPY 1
            // #define _MATERIAL_FEATURE_IRIDESCENCE 1
            // #define _MATERIAL_FEATURE_SPECULAR_COLOR 1
            // #define _ENABLE_FOG_ON_TRANSPARENT 1
            #define _AMBIENT_OCCLUSION 1
            #define _SPECULAR_OCCLUSION_FROM_AO 1
            // #define _SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL 1
            // #define _SPECULAR_OCCLUSION_CUSTOM 1
            #define _ENERGY_CONSERVING_SPECULAR 1
            // #define _ENABLE_GEOMETRIC_SPECULAR_AA 1
            // #define _HAS_REFRACTION 1
            // #define _REFRACTION_PLANE 1
            // #define _REFRACTION_SPHERE 1
            // #define _DISABLE_DECALS 1
            // #define _DISABLE_SSR 1
            // #define _WRITE_TRANSPARENT_MOTION_VECTOR 1
            // #define _DEPTHOFFSET_ON 1
            // #define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
        
            //-------------------------------------------------------------------------------------
            // End Variant Definitions
            //-------------------------------------------------------------------------------------
        
            #pragma vertex Vert
            #pragma fragment Frag
        
            // If we use subsurface scattering, enable output split lighting (for forward pass)
            #if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
            #define OUTPUT_SPLIT_LIGHTING
            #endif
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
        
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
        
            // define FragInputs structure
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
        
            //-------------------------------------------------------------------------------------
            // Defines
            //-------------------------------------------------------------------------------------
                    #define SHADERPASS SHADERPASS_FORWARD
                #pragma multi_compile _ DEBUG_DISPLAY
                #pragma multi_compile _ LIGHTMAP_ON
                #pragma multi_compile _ DIRLIGHTMAP_COMBINED
                #pragma multi_compile _ DYNAMICLIGHTMAP_ON
                #pragma multi_compile _ SHADOWS_SHADOWMASK
                #pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
                #pragma multi_compile USE_FPTL_LIGHTLIST USE_CLUSTERED_LIGHTLIST
                #pragma multi_compile SHADOW_LOW SHADOW_MEDIUM SHADOW_HIGH SHADOW_VERY_HIGH
                // ACTIVE FIELDS:
                //   Material.Standard
                //   Specular.EnergyConserving
                //   SpecularOcclusionFromAO
                //   AmbientOcclusion
                //   SurfaceDescriptionInputs.VertexColor
                //   SurfaceDescriptionInputs.WorldSpaceNormal
                //   SurfaceDescriptionInputs.TangentSpaceNormal
                //   SurfaceDescriptionInputs.WorldSpaceTangent
                //   SurfaceDescriptionInputs.WorldSpaceBiTangent
                //   SurfaceDescriptionInputs.WorldSpacePosition
                //   SurfaceDescriptionInputs.uv0
                //   SurfaceDescription.Albedo
                //   SurfaceDescription.Normal
                //   SurfaceDescription.BentNormal
                //   SurfaceDescription.CoatMask
                //   SurfaceDescription.Metallic
                //   SurfaceDescription.Emission
                //   SurfaceDescription.Smoothness
                //   SurfaceDescription.Occlusion
                //   SurfaceDescription.Alpha
                //   FragInputs.tangentToWorld
                //   FragInputs.positionRWS
                //   FragInputs.texCoord1
                //   FragInputs.texCoord2
                //   FragInputs.color
                //   FragInputs.texCoord0
                //   VaryingsMeshToPS.tangentWS
                //   VaryingsMeshToPS.normalWS
                //   VaryingsMeshToPS.positionRWS
                //   VaryingsMeshToPS.texCoord1
                //   VaryingsMeshToPS.texCoord2
                //   VaryingsMeshToPS.color
                //   VaryingsMeshToPS.texCoord0
                //   AttributesMesh.tangentOS
                //   AttributesMesh.normalOS
                //   AttributesMesh.positionOS
                //   AttributesMesh.uv1
                //   AttributesMesh.uv2
                //   AttributesMesh.color
                //   AttributesMesh.uv0
        
            // this translates the new dependency tracker into the old preprocessor definitions for the existing HDRP shader code
            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD0
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            // #define ATTRIBUTES_NEED_TEXCOORD3
            #define ATTRIBUTES_NEED_COLOR
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD0
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2
            // #define VARYINGS_NEED_TEXCOORD3
            #define VARYINGS_NEED_COLOR
            // #define VARYINGS_NEED_CULLFACE
            // #define HAVE_MESH_MODIFICATION
        
        // We need isFontFace when using double sided
        #if defined(_DOUBLESIDED_ON) && !defined(VARYINGS_NEED_CULLFACE)
            #define VARYINGS_NEED_CULLFACE
        #endif
        
            //-------------------------------------------------------------------------------------
            // End Defines
            //-------------------------------------------------------------------------------------
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
        #ifdef DEBUG_DISPLAY
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Debug/DebugDisplay.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
        
        #if (SHADERPASS == SHADERPASS_FORWARD)
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"
        
            #define HAS_LIGHTLOOP
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
        #else
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
        #endif
        
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
            // Used by SceneSelectionPass
            int _ObjectId;
            int _PassValue;
        
            //-------------------------------------------------------------------------------------
            // Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        // Generated Type: AttributesMesh
        struct AttributesMesh {
            float3 positionOS : POSITION;
            float3 normalOS : NORMAL; // optional
            float4 tangentOS : TANGENT; // optional
            float4 uv0 : TEXCOORD0; // optional
            float4 uv1 : TEXCOORD1; // optional
            float4 uv2 : TEXCOORD2; // optional
            float4 color : COLOR; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : INSTANCEID_SEMANTIC;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        
        // Generated Type: VaryingsMeshToPS
        struct VaryingsMeshToPS {
            float4 positionCS : SV_Position;
            float3 positionRWS; // optional
            float3 normalWS; // optional
            float4 tangentWS; // optional
            float4 texCoord0; // optional
            float4 texCoord1; // optional
            float4 texCoord2; // optional
            float4 color; // optional
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        struct PackedVaryingsMeshToPS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            float4 interp02 : TEXCOORD2; // auto-packed
            float4 interp03 : TEXCOORD3; // auto-packed
            float4 interp04 : TEXCOORD4; // auto-packed
            float4 interp05 : TEXCOORD5; // auto-packed
            float4 interp06 : TEXCOORD6; // auto-packed
            float4 positionCS : SV_Position; // unpacked
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            FRONT_FACE_TYPE cullFace : FRONT_FACE_SEMANTIC; // unpacked
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
        };
        PackedVaryingsMeshToPS PackVaryingsMeshToPS(VaryingsMeshToPS input)
        {
            PackedVaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            output.interp02.xyzw = input.tangentWS;
            output.interp03.xyzw = input.texCoord0;
            output.interp04.xyzw = input.texCoord1;
            output.interp05.xyzw = input.texCoord2;
            output.interp06.xyzw = input.color;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        VaryingsMeshToPS UnpackVaryingsMeshToPS(PackedVaryingsMeshToPS input)
        {
            VaryingsMeshToPS output;
            output.positionCS = input.positionCS;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            output.tangentWS = input.interp02.xyzw;
            output.texCoord0 = input.interp03.xyzw;
            output.texCoord1 = input.interp04.xyzw;
            output.texCoord2 = input.interp05.xyzw;
            output.color = input.interp06.xyzw;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            #if defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            output.cullFace = input.cullFace;
            #endif // defined(SHADER_STAGE_FRAGMENT) && defined(VARYINGS_NEED_CULLFACE)
            return output;
        }
        
        // Generated Type: VaryingsMeshToDS
        struct VaryingsMeshToDS {
            float3 positionRWS;
            float3 normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        struct PackedVaryingsMeshToDS {
            float3 interp00 : TEXCOORD0; // auto-packed
            float3 interp01 : TEXCOORD1; // auto-packed
            #if UNITY_ANY_INSTANCING_ENABLED
            uint instanceID : CUSTOM_INSTANCE_ID; // unpacked
            #endif // UNITY_ANY_INSTANCING_ENABLED
        };
        PackedVaryingsMeshToDS PackVaryingsMeshToDS(VaryingsMeshToDS input)
        {
            PackedVaryingsMeshToDS output;
            output.interp00.xyz = input.positionRWS;
            output.interp01.xyz = input.normalWS;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        VaryingsMeshToDS UnpackVaryingsMeshToDS(PackedVaryingsMeshToDS input)
        {
            VaryingsMeshToDS output;
            output.positionRWS = input.interp00.xyz;
            output.normalWS = input.interp01.xyz;
            #if UNITY_ANY_INSTANCING_ENABLED
            output.instanceID = input.instanceID;
            #endif // UNITY_ANY_INSTANCING_ENABLED
            return output;
        }
        
            //-------------------------------------------------------------------------------------
            // End Interpolator Packing And Struct Declarations
            //-------------------------------------------------------------------------------------
        
            //-------------------------------------------------------------------------------------
            // Graph generated code
            //-------------------------------------------------------------------------------------
                    // Shared Graph Properties (uniform inputs)
                    CBUFFER_START(UnityPerMaterial)
                    float4 _BaseColor;
                    float _BaseUsePlanarUV;
                    float4 _BaseTilingOffset;
                    float _BaseNormalScale;
                    float _BaseMetallic;
                    float _BaseAORemapMin;
                    float _BaseAORemapMax;
                    float _BaseSmoothnessRemapMin;
                    float _BaseSmoothnessRemapMax;
                    float _UseDynamicCoverTStaticMaskF;
                    float _CoverMaskPower;
                    float _Cover_Amount;
                    float _Cover_Amount_Grow_Speed;
                    float3 _CoverDirection;
                    float _Cover_Max_Angle;
                    float _Cover_Min_Height;
                    float _Cover_Min_Height_Blending;
                    float4 _CoverBaseColor;
                    float4 _CoverTilingOffset;
                    float _CoverTriplanarThreshold;
                    float _CoverNormalScale;
                    float _CoverNormalBlendHardness;
                    float _CoverHardness;
                    float _CoverHeightMapMin;
                    float _CoverHeightMapMax;
                    float _CoverHeightMapOffset;
                    float _CoverMetallic;
                    float _CoverAORemapMin;
                    float _CoverAORemapMax;
                    float _CoverSmoothnessRemapMin;
                    float _CoverSmoothnessRemapMax;
                    float4 _DetailTilingOffset;
                    float _DetailAlbedoScale;
                    float _DetailNormalScale;
                    float _DetailSmoothnessScale;
                    float4 _WetColor;
                    float _WetSmoothness;
                    float4 _EmissionColor;
                    float _RenderQueueType;
                    float _StencilRef;
                    float _StencilWriteMask;
                    float _StencilRefDepth;
                    float _StencilWriteMaskDepth;
                    float _StencilRefMV;
                    float _StencilWriteMaskMV;
                    float _StencilRefDistortionVec;
                    float _StencilWriteMaskDistortionVec;
                    float _StencilWriteMaskGBuffer;
                    float _StencilRefGBuffer;
                    float _ZTestGBuffer;
                    float _RequireSplitLighting;
                    float _ReceivesSSR;
                    float _SurfaceType;
                    float _BlendMode;
                    float _SrcBlend;
                    float _DstBlend;
                    float _AlphaSrcBlend;
                    float _AlphaDstBlend;
                    float _ZWrite;
                    float _CullMode;
                    float _TransparentSortPriority;
                    float _CullModeForward;
                    float _TransparentCullMode;
                    float _ZTestDepthEqualForOpaque;
                    float _ZTestTransparent;
                    float _TransparentBackfaceEnable;
                    float _AlphaCutoffEnable;
                    float _AlphaCutoff;
                    float _UseShadowThreshold;
                    float _DoubleSidedEnable;
                    float _DoubleSidedNormalMode;
                    float4 _DoubleSidedConstants;
                    CBUFFER_END
                
                    TEXTURE2D(_BaseColorMap); SAMPLER(sampler_BaseColorMap); float4 _BaseColorMap_TexelSize;
                    TEXTURE2D(_BaseNormalMap); SAMPLER(sampler_BaseNormalMap); float4 _BaseNormalMap_TexelSize;
                    TEXTURE2D(_BaseMaskMap); SAMPLER(sampler_BaseMaskMap); float4 _BaseMaskMap_TexelSize;
                    TEXTURE2D(_CoverMaskA); SAMPLER(sampler_CoverMaskA); float4 _CoverMaskA_TexelSize;
                    TEXTURE2D(_CoverBaseColorMap); SAMPLER(sampler_CoverBaseColorMap); float4 _CoverBaseColorMap_TexelSize;
                    TEXTURE2D(_CoverNormalMap); SAMPLER(sampler_CoverNormalMap); float4 _CoverNormalMap_TexelSize;
                    TEXTURE2D(_CoverMaskMap); SAMPLER(sampler_CoverMaskMap); float4 _CoverMaskMap_TexelSize;
                    TEXTURE2D(_DetailMap); SAMPLER(sampler_DetailMap); float4 _DetailMap_TexelSize;
                
                // Pixel Graph Inputs
                    struct SurfaceDescriptionInputs {
                        float3 WorldSpaceNormal; // optional
                        float3 TangentSpaceNormal; // optional
                        float3 WorldSpaceTangent; // optional
                        float3 WorldSpaceBiTangent; // optional
                        float3 WorldSpacePosition; // optional
                        float4 uv0; // optional
                        float4 VertexColor; // optional
                    };
                // Pixel Graph Outputs
                    struct SurfaceDescription
                    {
                        float3 Albedo;
                        float3 Normal;
                        float3 BentNormal;
                        float CoatMask;
                        float Metallic;
                        float3 Emission;
                        float Smoothness;
                        float Occlusion;
                        float Alpha;
                    };
                    
                // Shared Graph Node Functions
                
                    void Unity_Combine_float(float R, float G, float B, float A, out float4 RGBA, out float3 RGB, out float2 RG)
                    {
                        RGBA = float4(R, G, B, A);
                        RGB = float3(R, G, B);
                        RG = float2(R, G);
                    }
                
                    void Unity_Divide_float(float A, float B, out float Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Multiply_float (float4 A, float4 B, out float4 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
                    {
                        Out = UV * Tiling + Offset;
                    }
                
                    void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6
                    {
                        float3 WorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Vector4_2EBA7A3B, float Boolean_7ABB9909, Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 IN, out float4 XZ)
                    {
                        float _Property_7E8A3125_Out_0 = Boolean_7ABB9909;
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_C4659339_Out_0 = Vector4_2EBA7A3B;
                        float _Split_73D91F75_R_1 = _Property_C4659339_Out_0[0];
                        float _Split_73D91F75_G_2 = _Property_C4659339_Out_0[1];
                        float _Split_73D91F75_B_3 = _Property_C4659339_Out_0[2];
                        float _Split_73D91F75_A_4 = _Property_C4659339_Out_0[3];
                        float _Divide_26B6AE80_Out_2;
                        Unity_Divide_float(1, _Split_73D91F75_R_1, _Divide_26B6AE80_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_26B6AE80_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_6DD20118_Out_0 = float2(_Split_73D91F75_R_1, _Split_73D91F75_G_2);
                        float2 _Vector2_AF5F407D_Out_0 = float2(_Split_73D91F75_B_3, _Split_73D91F75_A_4);
                        float2 _TilingAndOffset_1DC08BD9_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_6DD20118_Out_0, _Vector2_AF5F407D_Out_0, _TilingAndOffset_1DC08BD9_Out_3);
                        float2 _Branch_4FEBA43B_Out_3;
                        Unity_Branch_float2(_Property_7E8A3125_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_1DC08BD9_Out_3, _Branch_4FEBA43B_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_4FEBA43B_Out_3);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        XZ = _SampleTexture2D_AF934D9A_RGBA_0;
                    }
                
                    void Unity_Multiply_float (float A, float B, out float Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float(float A, float B, out float Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Saturate_float(float In, out float Out)
                    {
                        Out = saturate(In);
                    }
                
                    void Unity_Absolute_float(float In, out float Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_SquareRoot_float4(float4 In, out float4 Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Sign_float(float In, out float Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Ceiling_float(float In, out float Out)
                    {
                        Out = ceil(In);
                    }
                
                    void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2
                    {
                    };
                
                    void SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(float4 Color_9AA111D3, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 IN, out float3 OutVector4)
                    {
                        float4 _Property_90A62E4E_Out_0 = Color_9AA111D3;
                        float4 _SquareRoot_51430F5B_Out_1;
                        Unity_SquareRoot_float4(_Property_90A62E4E_Out_0, _SquareRoot_51430F5B_Out_1);
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Multiply_ED89DC5B_Out_2;
                        Unity_Multiply_float(_Property_33C740F_Out_0, _Property_33C740F_Out_0, _Multiply_ED89DC5B_Out_2);
                        float4 _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float4(_SquareRoot_51430F5B_Out_1, (_Ceiling_85D24F96_Out_1.xxxx), (_Multiply_ED89DC5B_Out_2.xxxx), _Lerp_CA077B77_Out_3);
                        float4 _Multiply_9305D041_Out_2;
                        Unity_Multiply_float(_Lerp_CA077B77_Out_3, _Lerp_CA077B77_Out_3, _Multiply_9305D041_Out_2);
                        OutVector4 = (_Multiply_9305D041_Out_2.xyz);
                    }
                
                    void Unity_Divide_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A / B;
                    }
                
                    void Unity_Sign_float3(float3 In, out float3 Out)
                    {
                        Out = sign(In);
                    }
                
                    void Unity_Multiply_float (float2 A, float2 B, out float2 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Absolute_float3(float3 In, out float3 Out)
                    {
                        Out = abs(In);
                    }
                
                    void Unity_Power_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Multiply_float (float3 A, float3 B, out float3 Out)
                    {
                        Out = A * B;
                    }
                
                    void Unity_Add_float4(float4 A, float4 B, out float4 Out)
                    {
                        Out = A + B;
                    }
                
                    struct Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpacePosition;
                    };
                
                    void SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea IN, out float4 XYZ, out float4 XZ, out float4 YZ, out float4 XY)
                    {
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float _Property_7A4DC59B_Out_0 = Vector1_41461AC9;
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_D99671F1_Out_2);
                        float3 _Sign_C0850857_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_C0850857_Out_1);
                        float _Split_EEBC69B5_R_1 = _Sign_C0850857_Out_1[0];
                        float _Split_EEBC69B5_G_2 = _Sign_C0850857_Out_1[1];
                        float _Split_EEBC69B5_B_3 = _Sign_C0850857_Out_1[2];
                        float _Split_EEBC69B5_A_4 = 0;
                        float2 _Vector2_7598EA98_Out_0 = float2(_Split_EEBC69B5_G_2, 1);
                        float2 _Multiply_F82F3FE2_Out_2;
                        Unity_Multiply_float((_Multiply_D99671F1_Out_2.xy), _Vector2_7598EA98_Out_0, _Multiply_F82F3FE2_Out_2);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_F82F3FE2_Out_2);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float3 _Absolute_FF95EDEB_Out_1;
                        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_FF95EDEB_Out_1);
                        float _Property_F8688E0_Out_0 = Vector1_E4D1C13A;
                        float3 _Power_C741CD3A_Out_2;
                        Unity_Power_float3(_Absolute_FF95EDEB_Out_1, (_Property_F8688E0_Out_0.xxx), _Power_C741CD3A_Out_2);
                        float3 _Multiply_3FB4A346_Out_2;
                        Unity_Multiply_float(_Power_C741CD3A_Out_2, _Power_C741CD3A_Out_2, _Multiply_3FB4A346_Out_2);
                        float _Split_98088E33_R_1 = _Multiply_3FB4A346_Out_2[0];
                        float _Split_98088E33_G_2 = _Multiply_3FB4A346_Out_2[1];
                        float _Split_98088E33_B_3 = _Multiply_3FB4A346_Out_2[2];
                        float _Split_98088E33_A_4 = 0;
                        float4 _Multiply_B99FFB12_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_RGBA_0, (_Split_98088E33_G_2.xxxx), _Multiply_B99FFB12_Out_2);
                        float4 _Combine_EAF808EA_RGBA_4;
                        float3 _Combine_EAF808EA_RGB_5;
                        float2 _Combine_EAF808EA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_G_2, 0, 0, _Combine_EAF808EA_RGBA_4, _Combine_EAF808EA_RGB_5, _Combine_EAF808EA_RG_6);
                        float4 _Multiply_9B855117_Out_2;
                        Unity_Multiply_float(_Combine_EAF808EA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_9B855117_Out_2);
                        float _Multiply_B8AC16FB_Out_2;
                        Unity_Multiply_float(_Split_EEBC69B5_B_3, -1, _Multiply_B8AC16FB_Out_2);
                        float2 _Vector2_F031282A_Out_0 = float2(_Multiply_B8AC16FB_Out_2, 1);
                        float2 _Multiply_89A39D70_Out_2;
                        Unity_Multiply_float((_Multiply_9B855117_Out_2.xy), _Vector2_F031282A_Out_0, _Multiply_89A39D70_Out_2);
                        float4 _SampleTexture2D_66E4959F_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_89A39D70_Out_2);
                        float _SampleTexture2D_66E4959F_R_4 = _SampleTexture2D_66E4959F_RGBA_0.r;
                        float _SampleTexture2D_66E4959F_G_5 = _SampleTexture2D_66E4959F_RGBA_0.g;
                        float _SampleTexture2D_66E4959F_B_6 = _SampleTexture2D_66E4959F_RGBA_0.b;
                        float _SampleTexture2D_66E4959F_A_7 = _SampleTexture2D_66E4959F_RGBA_0.a;
                        float4 _Multiply_9E620CB9_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_66E4959F_RGBA_0, (_Split_98088E33_B_3.xxxx), _Multiply_9E620CB9_Out_2);
                        float4 _Combine_D494A8E_RGBA_4;
                        float3 _Combine_D494A8E_RGB_5;
                        float2 _Combine_D494A8E_RG_6;
                        Unity_Combine_float(_Split_34F118DC_B_3, _Split_34F118DC_G_2, 0, 0, _Combine_D494A8E_RGBA_4, _Combine_D494A8E_RGB_5, _Combine_D494A8E_RG_6);
                        float4 _Multiply_1B29A9F1_Out_2;
                        Unity_Multiply_float(_Combine_D494A8E_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_1B29A9F1_Out_2);
                        float2 _Vector2_1F147BEC_Out_0 = float2(_Split_EEBC69B5_R_1, 1);
                        float2 _Multiply_5B8B54E9_Out_2;
                        Unity_Multiply_float((_Multiply_1B29A9F1_Out_2.xy), _Vector2_1F147BEC_Out_0, _Multiply_5B8B54E9_Out_2);
                        float4 _SampleTexture2D_96366F41_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_5B8B54E9_Out_2);
                        float _SampleTexture2D_96366F41_R_4 = _SampleTexture2D_96366F41_RGBA_0.r;
                        float _SampleTexture2D_96366F41_G_5 = _SampleTexture2D_96366F41_RGBA_0.g;
                        float _SampleTexture2D_96366F41_B_6 = _SampleTexture2D_96366F41_RGBA_0.b;
                        float _SampleTexture2D_96366F41_A_7 = _SampleTexture2D_96366F41_RGBA_0.a;
                        float4 _Multiply_1C5CFCC5_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_96366F41_RGBA_0, (_Split_98088E33_R_1.xxxx), _Multiply_1C5CFCC5_Out_2);
                        float4 _Add_D483B2FD_Out_2;
                        Unity_Add_float4(_Multiply_9E620CB9_Out_2, _Multiply_1C5CFCC5_Out_2, _Add_D483B2FD_Out_2);
                        float4 _Add_166B5BED_Out_2;
                        Unity_Add_float4(_Multiply_B99FFB12_Out_2, _Add_D483B2FD_Out_2, _Add_166B5BED_Out_2);
                        float _Add_B73B64F6_Out_2;
                        Unity_Add_float(_Split_98088E33_R_1, _Split_98088E33_G_2, _Add_B73B64F6_Out_2);
                        float _Add_523B36E8_Out_2;
                        Unity_Add_float(_Add_B73B64F6_Out_2, _Split_98088E33_B_3, _Add_523B36E8_Out_2);
                        float4 _Divide_86C67C72_Out_2;
                        Unity_Divide_float4(_Add_166B5BED_Out_2, (_Add_523B36E8_Out_2.xxxx), _Divide_86C67C72_Out_2);
                        XYZ = _Divide_86C67C72_Out_2;
                        XZ = _SampleTexture2D_AF934D9A_RGBA_0;
                        YZ = _SampleTexture2D_66E4959F_RGBA_0;
                        XY = _SampleTexture2D_96366F41_RGBA_0;
                    }
                
                    void Unity_Clamp_float(float In, float Min, float Max, out float Out)
                    {
                        Out = clamp(In, Min, Max);
                    }
                
                    void Unity_Add_float2(float2 A, float2 B, out float2 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_DotProduct_float2(float2 A, float2 B, out float Out)
                    {
                        Out = dot(A, B);
                    }
                
                    void Unity_OneMinus_float(float In, out float Out)
                    {
                        Out = 1 - In;
                    }
                
                    void Unity_SquareRoot_float(float In, out float Out)
                    {
                        Out = sqrt(In);
                    }
                
                    void Unity_Normalize_float3(float3 In, out float3 Out)
                    {
                        Out = normalize(In);
                    }
                
                    void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    struct Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 WorldSpacePosition;
                        half4 uv0;
                    };
                
                    void SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float4 Vector4_82674548, float Boolean_9FF42DF6, Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 IN, out float4 XZ)
                    {
                        float _Property_EECC5191_Out_0 = Boolean_9FF42DF6;
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float4 _Property_3C0E791E_Out_0 = Vector4_82674548;
                        float _Split_BDB607D3_R_1 = _Property_3C0E791E_Out_0[0];
                        float _Split_BDB607D3_G_2 = _Property_3C0E791E_Out_0[1];
                        float _Split_BDB607D3_B_3 = _Property_3C0E791E_Out_0[2];
                        float _Split_BDB607D3_A_4 = _Property_3C0E791E_Out_0[3];
                        float _Divide_99B56138_Out_2;
                        Unity_Divide_float(1, _Split_BDB607D3_R_1, _Divide_99B56138_Out_2);
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Divide_99B56138_Out_2.xxxx), _Multiply_D99671F1_Out_2);
                        float2 _Vector2_870D34BF_Out_0 = float2(_Split_BDB607D3_R_1, _Split_BDB607D3_G_2);
                        float2 _Vector2_9D160F08_Out_0 = float2(_Split_BDB607D3_B_3, _Split_BDB607D3_A_4);
                        float2 _TilingAndOffset_C775B36F_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_870D34BF_Out_0, _Vector2_9D160F08_Out_0, _TilingAndOffset_C775B36F_Out_3);
                        float2 _Branch_F57F5E8_Out_3;
                        Unity_Branch_float2(_Property_EECC5191_Out_0, (_Multiply_D99671F1_Out_2.xy), _TilingAndOffset_C775B36F_Out_3, _Branch_F57F5E8_Out_3);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Branch_F57F5E8_Out_3);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_D1C95945_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_D1C95945_Out_2);
                        float3 _Vector3_CB17D4AB_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_D1C95945_Out_2, _Split_1D7F6EE9_G_2);
                        float3x3 tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_D163BAD_Out_1 = TransformWorldToTangent(_Vector3_CB17D4AB_Out_0.xyz, tangentTransform_World);
                        float3 _Normalize_49BB8375_Out_1;
                        Unity_Normalize_float3(_Transform_D163BAD_Out_1, _Normalize_49BB8375_Out_1);
                        float3 _Branch_CB8BD7A6_Out_3;
                        Unity_Branch_float3(_Property_EECC5191_Out_0, _Normalize_49BB8375_Out_1, (_SampleTexture2D_AF934D9A_RGBA_0.xyz), _Branch_CB8BD7A6_Out_3);
                        XZ = (float4(_Branch_CB8BD7A6_Out_3, 1.0));
                    }
                
                    void Unity_NormalStrength_float(float3 In, float Strength, out float3 Out)
                    {
                        Out = float3(In.rg * Strength, lerp(1, In.b, saturate(Strength)));
                    }
                
                    void Unity_NormalBlend_float(float3 A, float3 B, out float3 Out)
                    {
                        Out = normalize(float3(A.rg + B.rg, A.b * B.b));
                    }
                
                    void Unity_Add_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A + B;
                    }
                
                    void Unity_Divide_float3(float3 A, float3 B, out float3 Out)
                    {
                        Out = A / B;
                    }
                
                    struct Bindings_TriplanarNMn_059da9746584140498cd018db3c76047
                    {
                        float3 WorldSpaceNormal;
                        float3 WorldSpaceTangent;
                        float3 WorldSpaceBiTangent;
                        float3 WorldSpacePosition;
                    };
                
                    void SG_TriplanarNMn_059da9746584140498cd018db3c76047(TEXTURE2D_PARAM(Texture2D_80A3D28F, samplerTexture2D_80A3D28F), float Vector1_41461AC9, float Vector1_E4D1C13A, Bindings_TriplanarNMn_059da9746584140498cd018db3c76047 IN, out float4 XYZ, out float4 XZ, out float4 YZ, out float4 XY)
                    {
                        float _Split_34F118DC_R_1 = IN.WorldSpacePosition[0];
                        float _Split_34F118DC_G_2 = IN.WorldSpacePosition[1];
                        float _Split_34F118DC_B_3 = IN.WorldSpacePosition[2];
                        float _Split_34F118DC_A_4 = 0;
                        float4 _Combine_FDBD63CA_RGBA_4;
                        float3 _Combine_FDBD63CA_RGB_5;
                        float2 _Combine_FDBD63CA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_B_3, 0, 0, _Combine_FDBD63CA_RGBA_4, _Combine_FDBD63CA_RGB_5, _Combine_FDBD63CA_RG_6);
                        float _Property_7A4DC59B_Out_0 = Vector1_41461AC9;
                        float4 _Multiply_D99671F1_Out_2;
                        Unity_Multiply_float(_Combine_FDBD63CA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_D99671F1_Out_2);
                        float3 _Sign_937BD7C4_Out_1;
                        Unity_Sign_float3(IN.WorldSpaceNormal, _Sign_937BD7C4_Out_1);
                        float _Split_A88C5CBA_R_1 = _Sign_937BD7C4_Out_1[0];
                        float _Split_A88C5CBA_G_2 = _Sign_937BD7C4_Out_1[1];
                        float _Split_A88C5CBA_B_3 = _Sign_937BD7C4_Out_1[2];
                        float _Split_A88C5CBA_A_4 = 0;
                        float2 _Vector2_DC7A07A_Out_0 = float2(_Split_A88C5CBA_G_2, 1);
                        float2 _Multiply_6E58BF97_Out_2;
                        Unity_Multiply_float((_Multiply_D99671F1_Out_2.xy), _Vector2_DC7A07A_Out_0, _Multiply_6E58BF97_Out_2);
                        float4 _SampleTexture2D_AF934D9A_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_6E58BF97_Out_2);
                        _SampleTexture2D_AF934D9A_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_AF934D9A_RGBA_0);
                        float _SampleTexture2D_AF934D9A_R_4 = _SampleTexture2D_AF934D9A_RGBA_0.r;
                        float _SampleTexture2D_AF934D9A_G_5 = _SampleTexture2D_AF934D9A_RGBA_0.g;
                        float _SampleTexture2D_AF934D9A_B_6 = _SampleTexture2D_AF934D9A_RGBA_0.b;
                        float _SampleTexture2D_AF934D9A_A_7 = _SampleTexture2D_AF934D9A_RGBA_0.a;
                        float2 _Vector2_699A5DA1_Out_0 = float2(_SampleTexture2D_AF934D9A_R_4, _SampleTexture2D_AF934D9A_G_5);
                        float2 _Multiply_5A3A785C_Out_2;
                        Unity_Multiply_float(_Vector2_699A5DA1_Out_0, _Vector2_DC7A07A_Out_0, _Multiply_5A3A785C_Out_2);
                        float _Split_CE0AB7C6_R_1 = IN.WorldSpaceNormal[0];
                        float _Split_CE0AB7C6_G_2 = IN.WorldSpaceNormal[1];
                        float _Split_CE0AB7C6_B_3 = IN.WorldSpaceNormal[2];
                        float _Split_CE0AB7C6_A_4 = 0;
                        float2 _Vector2_D40FA1D3_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_B_3);
                        float2 _Add_E4BBD98D_Out_2;
                        Unity_Add_float2(_Multiply_5A3A785C_Out_2, _Vector2_D40FA1D3_Out_0, _Add_E4BBD98D_Out_2);
                        float _Split_1D7F6EE9_R_1 = _Add_E4BBD98D_Out_2[0];
                        float _Split_1D7F6EE9_G_2 = _Add_E4BBD98D_Out_2[1];
                        float _Split_1D7F6EE9_B_3 = 0;
                        float _Split_1D7F6EE9_A_4 = 0;
                        float _Multiply_97283B7E_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_AF934D9A_B_6, _Split_CE0AB7C6_G_2, _Multiply_97283B7E_Out_2);
                        float3 _Vector3_A5ECB01F_Out_0 = float3(_Split_1D7F6EE9_R_1, _Multiply_97283B7E_Out_2, _Split_1D7F6EE9_G_2);
                        float3 _Absolute_FF95EDEB_Out_1;
                        Unity_Absolute_float3(IN.WorldSpaceNormal, _Absolute_FF95EDEB_Out_1);
                        float _Property_F8688E0_Out_0 = Vector1_E4D1C13A;
                        float3 _Power_C741CD3A_Out_2;
                        Unity_Power_float3(_Absolute_FF95EDEB_Out_1, (_Property_F8688E0_Out_0.xxx), _Power_C741CD3A_Out_2);
                        float3 _Multiply_3FB4A346_Out_2;
                        Unity_Multiply_float(_Power_C741CD3A_Out_2, _Power_C741CD3A_Out_2, _Multiply_3FB4A346_Out_2);
                        float _Split_98088E33_R_1 = _Multiply_3FB4A346_Out_2[0];
                        float _Split_98088E33_G_2 = _Multiply_3FB4A346_Out_2[1];
                        float _Split_98088E33_B_3 = _Multiply_3FB4A346_Out_2[2];
                        float _Split_98088E33_A_4 = 0;
                        float3 _Multiply_B99FFB12_Out_2;
                        Unity_Multiply_float(_Vector3_A5ECB01F_Out_0, (_Split_98088E33_G_2.xxx), _Multiply_B99FFB12_Out_2);
                        float4 _Combine_EAF808EA_RGBA_4;
                        float3 _Combine_EAF808EA_RGB_5;
                        float2 _Combine_EAF808EA_RG_6;
                        Unity_Combine_float(_Split_34F118DC_R_1, _Split_34F118DC_G_2, 0, 0, _Combine_EAF808EA_RGBA_4, _Combine_EAF808EA_RGB_5, _Combine_EAF808EA_RG_6);
                        float4 _Multiply_9B855117_Out_2;
                        Unity_Multiply_float(_Combine_EAF808EA_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_9B855117_Out_2);
                        float _Multiply_9028821C_Out_2;
                        Unity_Multiply_float(_Split_A88C5CBA_B_3, -1, _Multiply_9028821C_Out_2);
                        float2 _Vector2_34183E31_Out_0 = float2(_Multiply_9028821C_Out_2, 1);
                        float2 _Multiply_25D3DEE7_Out_2;
                        Unity_Multiply_float((_Multiply_9B855117_Out_2.xy), _Vector2_34183E31_Out_0, _Multiply_25D3DEE7_Out_2);
                        float4 _SampleTexture2D_66E4959F_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_25D3DEE7_Out_2);
                        _SampleTexture2D_66E4959F_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_66E4959F_RGBA_0);
                        float _SampleTexture2D_66E4959F_R_4 = _SampleTexture2D_66E4959F_RGBA_0.r;
                        float _SampleTexture2D_66E4959F_G_5 = _SampleTexture2D_66E4959F_RGBA_0.g;
                        float _SampleTexture2D_66E4959F_B_6 = _SampleTexture2D_66E4959F_RGBA_0.b;
                        float _SampleTexture2D_66E4959F_A_7 = _SampleTexture2D_66E4959F_RGBA_0.a;
                        float2 _Vector2_6CC92971_Out_0 = float2(_SampleTexture2D_66E4959F_R_4, _SampleTexture2D_66E4959F_G_5);
                        float2 _Multiply_EDE2F02C_Out_2;
                        Unity_Multiply_float(_Vector2_6CC92971_Out_0, _Vector2_34183E31_Out_0, _Multiply_EDE2F02C_Out_2);
                        float2 _Vector2_6D428360_Out_0 = float2(_Split_CE0AB7C6_R_1, _Split_CE0AB7C6_G_2);
                        float2 _Add_6D3412BD_Out_2;
                        Unity_Add_float2(_Multiply_EDE2F02C_Out_2, _Vector2_6D428360_Out_0, _Add_6D3412BD_Out_2);
                        float _Split_79C8538A_R_1 = _Add_6D3412BD_Out_2[0];
                        float _Split_79C8538A_G_2 = _Add_6D3412BD_Out_2[1];
                        float _Split_79C8538A_B_3 = 0;
                        float _Split_79C8538A_A_4 = 0;
                        float _Multiply_576DD59F_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_66E4959F_B_6, _Split_CE0AB7C6_B_3, _Multiply_576DD59F_Out_2);
                        float3 _Vector3_77AAFCD8_Out_0 = float3(_Split_79C8538A_R_1, _Split_79C8538A_G_2, _Multiply_576DD59F_Out_2);
                        float3 _Multiply_9E620CB9_Out_2;
                        Unity_Multiply_float(_Vector3_77AAFCD8_Out_0, (_Split_98088E33_B_3.xxx), _Multiply_9E620CB9_Out_2);
                        float4 _Combine_D494A8E_RGBA_4;
                        float3 _Combine_D494A8E_RGB_5;
                        float2 _Combine_D494A8E_RG_6;
                        Unity_Combine_float(_Split_34F118DC_B_3, _Split_34F118DC_G_2, 0, 0, _Combine_D494A8E_RGBA_4, _Combine_D494A8E_RGB_5, _Combine_D494A8E_RG_6);
                        float4 _Multiply_1B29A9F1_Out_2;
                        Unity_Multiply_float(_Combine_D494A8E_RGBA_4, (_Property_7A4DC59B_Out_0.xxxx), _Multiply_1B29A9F1_Out_2);
                        float2 _Vector2_2EDA3EA2_Out_0 = float2(_Split_A88C5CBA_R_1, 1);
                        float2 _Multiply_4083C468_Out_2;
                        Unity_Multiply_float((_Multiply_1B29A9F1_Out_2.xy), _Vector2_2EDA3EA2_Out_0, _Multiply_4083C468_Out_2);
                        float4 _SampleTexture2D_96366F41_RGBA_0 = SAMPLE_TEXTURE2D(Texture2D_80A3D28F, samplerTexture2D_80A3D28F, _Multiply_4083C468_Out_2);
                        _SampleTexture2D_96366F41_RGBA_0.rgb = UnpackNormalmapRGorAG(_SampleTexture2D_96366F41_RGBA_0);
                        float _SampleTexture2D_96366F41_R_4 = _SampleTexture2D_96366F41_RGBA_0.r;
                        float _SampleTexture2D_96366F41_G_5 = _SampleTexture2D_96366F41_RGBA_0.g;
                        float _SampleTexture2D_96366F41_B_6 = _SampleTexture2D_96366F41_RGBA_0.b;
                        float _SampleTexture2D_96366F41_A_7 = _SampleTexture2D_96366F41_RGBA_0.a;
                        float _Multiply_D70B5F94_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_96366F41_B_6, _Split_CE0AB7C6_R_1, _Multiply_D70B5F94_Out_2);
                        float2 _Vector2_D6F48DBF_Out_0 = float2(_SampleTexture2D_96366F41_R_4, _SampleTexture2D_96366F41_G_5);
                        float2 _Multiply_32364D17_Out_2;
                        Unity_Multiply_float(_Vector2_D6F48DBF_Out_0, _Vector2_2EDA3EA2_Out_0, _Multiply_32364D17_Out_2);
                        float2 _Vector2_5861421E_Out_0 = float2(_Split_CE0AB7C6_B_3, _Split_CE0AB7C6_G_2);
                        float2 _Add_15B5B6DC_Out_2;
                        Unity_Add_float2(_Multiply_32364D17_Out_2, _Vector2_5861421E_Out_0, _Add_15B5B6DC_Out_2);
                        float _Split_68B7323B_R_1 = _Add_15B5B6DC_Out_2[0];
                        float _Split_68B7323B_G_2 = _Add_15B5B6DC_Out_2[1];
                        float _Split_68B7323B_B_3 = 0;
                        float _Split_68B7323B_A_4 = 0;
                        float3 _Vector3_1ACBBFC4_Out_0 = float3(_Multiply_D70B5F94_Out_2, _Split_68B7323B_G_2, _Split_68B7323B_R_1);
                        float3 _Multiply_1C5CFCC5_Out_2;
                        Unity_Multiply_float(_Vector3_1ACBBFC4_Out_0, (_Split_98088E33_R_1.xxx), _Multiply_1C5CFCC5_Out_2);
                        float3 _Add_D483B2FD_Out_2;
                        Unity_Add_float3(_Multiply_9E620CB9_Out_2, _Multiply_1C5CFCC5_Out_2, _Add_D483B2FD_Out_2);
                        float3 _Add_166B5BED_Out_2;
                        Unity_Add_float3(_Multiply_B99FFB12_Out_2, _Add_D483B2FD_Out_2, _Add_166B5BED_Out_2);
                        float _Add_B73B64F6_Out_2;
                        Unity_Add_float(_Split_98088E33_R_1, _Split_98088E33_G_2, _Add_B73B64F6_Out_2);
                        float _Add_523B36E8_Out_2;
                        Unity_Add_float(_Add_B73B64F6_Out_2, _Split_98088E33_B_3, _Add_523B36E8_Out_2);
                        float3 _Divide_86C67C72_Out_2;
                        Unity_Divide_float3(_Add_166B5BED_Out_2, (_Add_523B36E8_Out_2.xxx), _Divide_86C67C72_Out_2);
                        float3x3 tangentTransform_World = float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal);
                        float3 _Transform_F679F94B_Out_1 = TransformWorldToTangent(_Divide_86C67C72_Out_2.xyz, tangentTransform_World);
                        float3 _Normalize_E5F34A45_Out_1;
                        Unity_Normalize_float3(_Transform_F679F94B_Out_1, _Normalize_E5F34A45_Out_1);
                        XYZ = (float4(_Normalize_E5F34A45_Out_1, 1.0));
                        XZ = (float4(_Vector3_A5ECB01F_Out_0, 1.0));
                        YZ = (float4(_Vector3_77AAFCD8_Out_0, 1.0));
                        XY = (float4(_Vector3_1ACBBFC4_Out_0, 1.0));
                    }
                
                    void Unity_Subtract_float(float A, float B, out float Out)
                    {
                        Out = A - B;
                    }
                
                    void Unity_Power_float(float A, float B, out float Out)
                    {
                        Out = pow(A, B);
                    }
                
                    void Unity_Lerp_float3(float3 A, float3 B, float3 T, out float3 Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
                    {
                        Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
                    }
                
                    void Unity_Branch_float(float Predicate, float True, float False, out float Out)
                    {
                        Out = lerp(False, True, Predicate);
                    }
                
                    void Unity_Lerp_float(float A, float B, float T, out float Out)
                    {
                        Out = lerp(A, B, T);
                    }
                
                    struct Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a
                    {
                    };
                
                    void SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(float Vector1_32317166, float Vector1_FBE622A2, float Vector1_8C15C351, Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a IN, out float SmoothnessOverlay)
                    {
                        float _Property_B2B0AC51_Out_0 = Vector1_32317166;
                        float _Property_4C27E21E_Out_0 = Vector1_FBE622A2;
                        float _Sign_2EB7E10D_Out_1;
                        Unity_Sign_float(_Property_4C27E21E_Out_0, _Sign_2EB7E10D_Out_1);
                        float _Add_29F1B1C0_Out_2;
                        Unity_Add_float(_Sign_2EB7E10D_Out_1, 1, _Add_29F1B1C0_Out_2);
                        float _Multiply_E5F6C023_Out_2;
                        Unity_Multiply_float(_Add_29F1B1C0_Out_2, 0.5, _Multiply_E5F6C023_Out_2);
                        float _Ceiling_85D24F96_Out_1;
                        Unity_Ceiling_float(_Multiply_E5F6C023_Out_2, _Ceiling_85D24F96_Out_1);
                        float _Property_33C740F_Out_0 = Vector1_8C15C351;
                        float _Lerp_CA077B77_Out_3;
                        Unity_Lerp_float(_Property_B2B0AC51_Out_0, _Ceiling_85D24F96_Out_1, _Property_33C740F_Out_0, _Lerp_CA077B77_Out_3);
                        SmoothnessOverlay = _Lerp_CA077B77_Out_3;
                    }
                
                // Pixel Graph Evaluation
                    SurfaceDescription SurfaceDescriptionFunction(SurfaceDescriptionInputs IN)
                    {
                        SurfaceDescription surface = (SurfaceDescription)0;
                        float4 _Property_3E4B16C8_Out_0 = _BaseTilingOffset;
                        float _Property_50A244CF_Out_0 = _BaseUsePlanarUV;
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_8DBCF4B4;
                        _PlanarNM_8DBCF4B4.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNM_8DBCF4B4.uv0 = IN.uv0;
                        float4 _PlanarNM_8DBCF4B4_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseColorMap, sampler_BaseColorMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNM_8DBCF4B4, _PlanarNM_8DBCF4B4_XZ_2);
                        float4 _Property_3D23ECB5_Out_0 = _BaseColor;
                        float4 _Multiply_3B5A4F3A_Out_2;
                        Unity_Multiply_float(_PlanarNM_8DBCF4B4_XZ_2, _Property_3D23ECB5_Out_0, _Multiply_3B5A4F3A_Out_2);
                        float4 _Property_FC905A02_Out_0 = _DetailTilingOffset;
                        float _Split_66FEB2D6_R_1 = _Property_FC905A02_Out_0[0];
                        float _Split_66FEB2D6_G_2 = _Property_FC905A02_Out_0[1];
                        float _Split_66FEB2D6_B_3 = _Property_FC905A02_Out_0[2];
                        float _Split_66FEB2D6_A_4 = _Property_FC905A02_Out_0[3];
                        float2 _Vector2_2C65450F_Out_0 = float2(_Split_66FEB2D6_R_1, _Split_66FEB2D6_G_2);
                        float2 _Vector2_20821B1B_Out_0 = float2(_Split_66FEB2D6_B_3, _Split_66FEB2D6_A_4);
                        float2 _TilingAndOffset_AFDF49A5_Out_3;
                        Unity_TilingAndOffset_float(IN.uv0.xy, _Vector2_2C65450F_Out_0, _Vector2_20821B1B_Out_0, _TilingAndOffset_AFDF49A5_Out_3);
                        float4 _SampleTexture2D_CD9C50D2_RGBA_0 = SAMPLE_TEXTURE2D(_DetailMap, sampler_DetailMap, _TilingAndOffset_AFDF49A5_Out_3);
                        float _SampleTexture2D_CD9C50D2_R_4 = _SampleTexture2D_CD9C50D2_RGBA_0.r;
                        float _SampleTexture2D_CD9C50D2_G_5 = _SampleTexture2D_CD9C50D2_RGBA_0.g;
                        float _SampleTexture2D_CD9C50D2_B_6 = _SampleTexture2D_CD9C50D2_RGBA_0.b;
                        float _SampleTexture2D_CD9C50D2_A_7 = _SampleTexture2D_CD9C50D2_RGBA_0.a;
                        float _Multiply_6CEB2199_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CD9C50D2_R_4, 2, _Multiply_6CEB2199_Out_2);
                        float _Add_81546154_Out_2;
                        Unity_Add_float(_Multiply_6CEB2199_Out_2, -1, _Add_81546154_Out_2);
                        float _Property_2152BC92_Out_0 = _DetailAlbedoScale;
                        float _Multiply_4FF44BF6_Out_2;
                        Unity_Multiply_float(_Add_81546154_Out_2, _Property_2152BC92_Out_0, _Multiply_4FF44BF6_Out_2);
                        float _Saturate_44A6B3E6_Out_1;
                        Unity_Saturate_float(_Multiply_4FF44BF6_Out_2, _Saturate_44A6B3E6_Out_1);
                        float _Absolute_252B9168_Out_1;
                        Unity_Absolute_float(_Saturate_44A6B3E6_Out_1, _Absolute_252B9168_Out_1);
                        Bindings_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2 _BlendOverlayBaseColor_DC11EFE2;
                        float3 _BlendOverlayBaseColor_DC11EFE2_OutVector4_1;
                        SG_BlendOverlayBaseColor_acdb3dfca72bd6b42bbc35f4613331a2(_Multiply_3B5A4F3A_Out_2, _Add_81546154_Out_2, _Absolute_252B9168_Out_1, _BlendOverlayBaseColor_DC11EFE2, _BlendOverlayBaseColor_DC11EFE2_OutVector4_1);
                        float4 _Property_E0773BA3_Out_0 = _CoverTilingOffset;
                        float4 _Divide_49A78312_Out_2;
                        Unity_Divide_float4(float4(1, 1, 0, 0), _Property_E0773BA3_Out_0, _Divide_49A78312_Out_2);
                        float _Property_344EE56F_Out_0 = _CoverTriplanarThreshold;
                        Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea _TriplanarNM_3A98BEB6;
                        _TriplanarNM_3A98BEB6.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNM_3A98BEB6.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNM_3A98BEB6_XYZ_1;
                        float4 _TriplanarNM_3A98BEB6_XZ_2;
                        float4 _TriplanarNM_3A98BEB6_YZ_3;
                        float4 _TriplanarNM_3A98BEB6_XY_4;
                        SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_ARGS(_CoverBaseColorMap, sampler_CoverBaseColorMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNM_3A98BEB6, _TriplanarNM_3A98BEB6_XYZ_1, _TriplanarNM_3A98BEB6_XZ_2, _TriplanarNM_3A98BEB6_YZ_3, _TriplanarNM_3A98BEB6_XY_4);
                        float4 _Property_AF2EEB1D_Out_0 = _CoverBaseColor;
                        float4 _Multiply_64C7F396_Out_2;
                        Unity_Multiply_float(_TriplanarNM_3A98BEB6_XYZ_1, _Property_AF2EEB1D_Out_0, _Multiply_64C7F396_Out_2);
                        float _Property_4AB1A11C_Out_0 = _UseDynamicCoverTStaticMaskF;
                        float4 _UV_20D72EFB_Out_0 = IN.uv0;
                        float4 _SampleTexture2D_E213A685_RGBA_0 = SAMPLE_TEXTURE2D(_CoverMaskA, sampler_CoverMaskA, (_UV_20D72EFB_Out_0.xy));
                        float _SampleTexture2D_E213A685_R_4 = _SampleTexture2D_E213A685_RGBA_0.r;
                        float _SampleTexture2D_E213A685_G_5 = _SampleTexture2D_E213A685_RGBA_0.g;
                        float _SampleTexture2D_E213A685_B_6 = _SampleTexture2D_E213A685_RGBA_0.b;
                        float _SampleTexture2D_E213A685_A_7 = _SampleTexture2D_E213A685_RGBA_0.a;
                        float _Property_23BACCE9_Out_0 = _CoverMaskPower;
                        float _Multiply_CEE6BF7E_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_E213A685_A_7, _Property_23BACCE9_Out_0, _Multiply_CEE6BF7E_Out_2);
                        float _Clamp_8BDA8462_Out_3;
                        Unity_Clamp_float(_Multiply_CEE6BF7E_Out_2, 0, 1, _Clamp_8BDA8462_Out_3);
                        float _Split_7AD1E82F_R_1 = IN.VertexColor[0];
                        float _Split_7AD1E82F_G_2 = IN.VertexColor[1];
                        float _Split_7AD1E82F_B_3 = IN.VertexColor[2];
                        float _Split_7AD1E82F_A_4 = IN.VertexColor[3];
                        float3 _Property_B337987A_Out_0 = _CoverDirection;
                        float2 _Vector2_D25079B9_Out_0 = float2(_SampleTexture2D_CD9C50D2_A_7, _SampleTexture2D_CD9C50D2_G_5);
                        float2 _Multiply_A6D263CC_Out_2;
                        Unity_Multiply_float(_Vector2_D25079B9_Out_0, float2(2, 2), _Multiply_A6D263CC_Out_2);
                        float2 _Add_A94F92F2_Out_2;
                        Unity_Add_float2(_Multiply_A6D263CC_Out_2, float2(-1, -1), _Add_A94F92F2_Out_2);
                        float _Property_5A04D61A_Out_0 = _DetailNormalScale;
                        float2 _Multiply_E3BBD5A0_Out_2;
                        Unity_Multiply_float(_Add_A94F92F2_Out_2, (_Property_5A04D61A_Out_0.xx), _Multiply_E3BBD5A0_Out_2);
                        float _Split_3BC0AA96_R_1 = _Multiply_E3BBD5A0_Out_2[0];
                        float _Split_3BC0AA96_G_2 = _Multiply_E3BBD5A0_Out_2[1];
                        float _Split_3BC0AA96_B_3 = 0;
                        float _Split_3BC0AA96_A_4 = 0;
                        float _DotProduct_9FB0B73C_Out_2;
                        Unity_DotProduct_float2(_Multiply_E3BBD5A0_Out_2, _Multiply_E3BBD5A0_Out_2, _DotProduct_9FB0B73C_Out_2);
                        float _Saturate_3C8C4A9B_Out_1;
                        Unity_Saturate_float(_DotProduct_9FB0B73C_Out_2, _Saturate_3C8C4A9B_Out_1);
                        float _OneMinus_E0A2EC16_Out_1;
                        Unity_OneMinus_float(_Saturate_3C8C4A9B_Out_1, _OneMinus_E0A2EC16_Out_1);
                        float _SquareRoot_7D6FC55F_Out_1;
                        Unity_SquareRoot_float(_OneMinus_E0A2EC16_Out_1, _SquareRoot_7D6FC55F_Out_1);
                        float3 _Vector3_408E9F99_Out_0 = float3(_Split_3BC0AA96_R_1, _Split_3BC0AA96_G_2, _SquareRoot_7D6FC55F_Out_1);
                        Bindings_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8 _PlanarNMn_8FB4259D;
                        _PlanarNMn_8FB4259D.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _PlanarNMn_8FB4259D.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _PlanarNMn_8FB4259D.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _PlanarNMn_8FB4259D.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNMn_8FB4259D.uv0 = IN.uv0;
                        float4 _PlanarNMn_8FB4259D_XZ_2;
                        SG_PlanarNMn_1b93a87456f9d4c419321d0cd92bd6c8(TEXTURE2D_ARGS(_BaseNormalMap, sampler_BaseNormalMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNMn_8FB4259D, _PlanarNMn_8FB4259D_XZ_2);
                        float _Property_1CABD952_Out_0 = _BaseNormalScale;
                        float3 _NormalStrength_EDF1EB8B_Out_2;
                        Unity_NormalStrength_float((_PlanarNMn_8FB4259D_XZ_2.xyz), _Property_1CABD952_Out_0, _NormalStrength_EDF1EB8B_Out_2);
                        float3 _NormalBlend_B205DA66_Out_2;
                        Unity_NormalBlend_float(_Vector3_408E9F99_Out_0, _NormalStrength_EDF1EB8B_Out_2, _NormalBlend_B205DA66_Out_2);
                        Bindings_TriplanarNMn_059da9746584140498cd018db3c76047 _TriplanarNMn_98A5B80C;
                        _TriplanarNMn_98A5B80C.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNMn_98A5B80C.WorldSpaceTangent = IN.WorldSpaceTangent;
                        _TriplanarNMn_98A5B80C.WorldSpaceBiTangent = IN.WorldSpaceBiTangent;
                        _TriplanarNMn_98A5B80C.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNMn_98A5B80C_XYZ_1;
                        float4 _TriplanarNMn_98A5B80C_XZ_2;
                        float4 _TriplanarNMn_98A5B80C_YZ_3;
                        float4 _TriplanarNMn_98A5B80C_XY_4;
                        SG_TriplanarNMn_059da9746584140498cd018db3c76047(TEXTURE2D_ARGS(_CoverNormalMap, sampler_CoverNormalMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNMn_98A5B80C, _TriplanarNMn_98A5B80C_XYZ_1, _TriplanarNMn_98A5B80C_XZ_2, _TriplanarNMn_98A5B80C_YZ_3, _TriplanarNMn_98A5B80C_XY_4);
                        float _Property_1277E229_Out_0 = _CoverNormalBlendHardness;
                        float3 _NormalStrength_D8740A3D_Out_2;
                        Unity_NormalStrength_float((_TriplanarNMn_98A5B80C_XYZ_1.xyz), _Property_1277E229_Out_0, _NormalStrength_D8740A3D_Out_2);
                        float3 _Multiply_C10488EF_Out_2;
                        Unity_Multiply_float(_Property_B337987A_Out_0, IN.WorldSpaceNormal, _Multiply_C10488EF_Out_2);
                        float _Split_F588AD82_R_1 = _Multiply_C10488EF_Out_2[0];
                        float _Split_F588AD82_G_2 = _Multiply_C10488EF_Out_2[1];
                        float _Split_F588AD82_B_3 = _Multiply_C10488EF_Out_2[2];
                        float _Split_F588AD82_A_4 = 0;
                        float _Add_1BF84D66_Out_2;
                        Unity_Add_float(_Split_F588AD82_R_1, _Split_F588AD82_G_2, _Add_1BF84D66_Out_2);
                        float _Add_55FEEDC7_Out_2;
                        Unity_Add_float(_Add_1BF84D66_Out_2, _Split_F588AD82_B_3, _Add_55FEEDC7_Out_2);
                        float _Property_C3CE9B07_Out_0 = _Cover_Amount;
                        float _Property_7DFE3C77_Out_0 = _Cover_Amount_Grow_Speed;
                        float _Subtract_5C7F53DB_Out_2;
                        Unity_Subtract_float(4, _Property_7DFE3C77_Out_0, _Subtract_5C7F53DB_Out_2);
                        float _Divide_2E853816_Out_2;
                        Unity_Divide_float(_Property_C3CE9B07_Out_0, _Subtract_5C7F53DB_Out_2, _Divide_2E853816_Out_2);
                        float _Absolute_B440693F_Out_1;
                        Unity_Absolute_float(_Divide_2E853816_Out_2, _Absolute_B440693F_Out_1);
                        float _Power_F952C21D_Out_2;
                        Unity_Power_float(_Absolute_B440693F_Out_1, _Subtract_5C7F53DB_Out_2, _Power_F952C21D_Out_2);
                        float _Clamp_FC9AF565_Out_3;
                        Unity_Clamp_float(_Power_F952C21D_Out_2, 0, 2, _Clamp_FC9AF565_Out_3);
                        float _Multiply_2164B3E7_Out_2;
                        Unity_Multiply_float(_Add_55FEEDC7_Out_2, _Clamp_FC9AF565_Out_3, _Multiply_2164B3E7_Out_2);
                        float _Saturate_173154BF_Out_1;
                        Unity_Saturate_float(_Multiply_2164B3E7_Out_2, _Saturate_173154BF_Out_1);
                        float _Clamp_898505F7_Out_3;
                        Unity_Clamp_float(_Add_55FEEDC7_Out_2, 0, 0.9999, _Clamp_898505F7_Out_3);
                        float _Property_A5C9D674_Out_0 = _Cover_Max_Angle;
                        float _Divide_87E47C29_Out_2;
                        Unity_Divide_float(_Property_A5C9D674_Out_0, 45, _Divide_87E47C29_Out_2);
                        float _OneMinus_18BF8D3A_Out_1;
                        Unity_OneMinus_float(_Divide_87E47C29_Out_2, _OneMinus_18BF8D3A_Out_1);
                        float _Subtract_CACC9F64_Out_2;
                        Unity_Subtract_float(_Clamp_898505F7_Out_3, _OneMinus_18BF8D3A_Out_1, _Subtract_CACC9F64_Out_2);
                        float _Clamp_989AEDE1_Out_3;
                        Unity_Clamp_float(_Subtract_CACC9F64_Out_2, 0, 2, _Clamp_989AEDE1_Out_3);
                        float _Divide_FFC65CC2_Out_2;
                        Unity_Divide_float(1, _Divide_87E47C29_Out_2, _Divide_FFC65CC2_Out_2);
                        float _Multiply_F5867110_Out_2;
                        Unity_Multiply_float(_Clamp_989AEDE1_Out_3, _Divide_FFC65CC2_Out_2, _Multiply_F5867110_Out_2);
                        float _Absolute_D89283B3_Out_1;
                        Unity_Absolute_float(_Multiply_F5867110_Out_2, _Absolute_D89283B3_Out_1);
                        float _Property_9B9027DB_Out_0 = _CoverHardness;
                        float _Power_B072AE57_Out_2;
                        Unity_Power_float(_Absolute_D89283B3_Out_1, _Property_9B9027DB_Out_0, _Power_B072AE57_Out_2);
                        float _Property_388C9B8B_Out_0 = _Cover_Min_Height;
                        float _OneMinus_4583AA8B_Out_1;
                        Unity_OneMinus_float(_Property_388C9B8B_Out_0, _OneMinus_4583AA8B_Out_1);
                        float _Split_E686ABCF_R_1 = IN.WorldSpacePosition[0];
                        float _Split_E686ABCF_G_2 = IN.WorldSpacePosition[1];
                        float _Split_E686ABCF_B_3 = IN.WorldSpacePosition[2];
                        float _Split_E686ABCF_A_4 = 0;
                        float _Add_BF4A84A1_Out_2;
                        Unity_Add_float(_OneMinus_4583AA8B_Out_1, _Split_E686ABCF_G_2, _Add_BF4A84A1_Out_2);
                        float _Add_6E3AF2BE_Out_2;
                        Unity_Add_float(_Add_BF4A84A1_Out_2, 1, _Add_6E3AF2BE_Out_2);
                        float _Clamp_4453A0AC_Out_3;
                        Unity_Clamp_float(_Add_6E3AF2BE_Out_2, 0, 1, _Clamp_4453A0AC_Out_3);
                        float _Property_24108C8C_Out_0 = _Cover_Min_Height_Blending;
                        float _Add_1CB6388C_Out_2;
                        Unity_Add_float(_Add_BF4A84A1_Out_2, _Property_24108C8C_Out_0, _Add_1CB6388C_Out_2);
                        float _Divide_62D3B622_Out_2;
                        Unity_Divide_float(_Add_1CB6388C_Out_2, _Add_BF4A84A1_Out_2, _Divide_62D3B622_Out_2);
                        float _OneMinus_9A3B328E_Out_1;
                        Unity_OneMinus_float(_Divide_62D3B622_Out_2, _OneMinus_9A3B328E_Out_1);
                        float _Add_60A40097_Out_2;
                        Unity_Add_float(_OneMinus_9A3B328E_Out_1, -0.5, _Add_60A40097_Out_2);
                        float _Clamp_BF85F16F_Out_3;
                        Unity_Clamp_float(_Add_60A40097_Out_2, 0, 1, _Clamp_BF85F16F_Out_3);
                        float _Add_15252D0D_Out_2;
                        Unity_Add_float(_Clamp_4453A0AC_Out_3, _Clamp_BF85F16F_Out_3, _Add_15252D0D_Out_2);
                        float _Clamp_9B57A26B_Out_3;
                        Unity_Clamp_float(_Add_15252D0D_Out_2, 0, 1, _Clamp_9B57A26B_Out_3);
                        float _Multiply_C95AF257_Out_2;
                        Unity_Multiply_float(_Power_B072AE57_Out_2, _Clamp_9B57A26B_Out_3, _Multiply_C95AF257_Out_2);
                        float _Multiply_FF8131E5_Out_2;
                        Unity_Multiply_float(_Saturate_173154BF_Out_1, _Multiply_C95AF257_Out_2, _Multiply_FF8131E5_Out_2);
                        float3 _Lerp_A6AC44DC_Out_3;
                        Unity_Lerp_float3(_NormalBlend_B205DA66_Out_2, _NormalStrength_D8740A3D_Out_2, (_Multiply_FF8131E5_Out_2.xxx), _Lerp_A6AC44DC_Out_3);
                        float3x3 transposeTangent = transpose(float3x3(IN.WorldSpaceTangent, IN.WorldSpaceBiTangent, IN.WorldSpaceNormal));
                        float3 _Transform_8AB587B2_Out_1 = mul(transposeTangent, _Lerp_A6AC44DC_Out_3.xyz).xyz;
                        float3 _Multiply_40FEF87C_Out_2;
                        Unity_Multiply_float(_Property_B337987A_Out_0, _Transform_8AB587B2_Out_1, _Multiply_40FEF87C_Out_2);
                        float _Split_2E5CD9E3_R_1 = _Multiply_40FEF87C_Out_2[0];
                        float _Split_2E5CD9E3_G_2 = _Multiply_40FEF87C_Out_2[1];
                        float _Split_2E5CD9E3_B_3 = _Multiply_40FEF87C_Out_2[2];
                        float _Split_2E5CD9E3_A_4 = 0;
                        float _Add_931DAB0_Out_2;
                        Unity_Add_float(_Split_2E5CD9E3_R_1, _Split_2E5CD9E3_G_2, _Add_931DAB0_Out_2);
                        float _Add_896997D2_Out_2;
                        Unity_Add_float(_Add_931DAB0_Out_2, _Split_2E5CD9E3_B_3, _Add_896997D2_Out_2);
                        float _Multiply_E09536CA_Out_2;
                        Unity_Multiply_float(_Add_896997D2_Out_2, _Clamp_FC9AF565_Out_3, _Multiply_E09536CA_Out_2);
                        float _Multiply_4EFF53BC_Out_2;
                        Unity_Multiply_float(_Clamp_FC9AF565_Out_3, _Property_9B9027DB_Out_0, _Multiply_4EFF53BC_Out_2);
                        float _Multiply_EECDD75E_Out_2;
                        Unity_Multiply_float(_Multiply_4EFF53BC_Out_2, _Multiply_C95AF257_Out_2, _Multiply_EECDD75E_Out_2);
                        float _Multiply_D777B623_Out_2;
                        Unity_Multiply_float(_Multiply_E09536CA_Out_2, _Multiply_EECDD75E_Out_2, _Multiply_D777B623_Out_2);
                        Bindings_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea _TriplanarNM_38475939;
                        _TriplanarNM_38475939.WorldSpaceNormal = IN.WorldSpaceNormal;
                        _TriplanarNM_38475939.WorldSpacePosition = IN.WorldSpacePosition;
                        float4 _TriplanarNM_38475939_XYZ_1;
                        float4 _TriplanarNM_38475939_XZ_2;
                        float4 _TriplanarNM_38475939_YZ_3;
                        float4 _TriplanarNM_38475939_XY_4;
                        SG_TriplanarNM_bc609ed95f52591469ab35dbfe0efcea(TEXTURE2D_ARGS(_CoverMaskMap, sampler_CoverMaskMap), (_Divide_49A78312_Out_2).x, _Property_344EE56F_Out_0, _TriplanarNM_38475939, _TriplanarNM_38475939_XYZ_1, _TriplanarNM_38475939_XZ_2, _TriplanarNM_38475939_YZ_3, _TriplanarNM_38475939_XY_4);
                        float _Split_824C6099_R_1 = _TriplanarNM_38475939_XYZ_1[0];
                        float _Split_824C6099_G_2 = _TriplanarNM_38475939_XYZ_1[1];
                        float _Split_824C6099_B_3 = _TriplanarNM_38475939_XYZ_1[2];
                        float _Split_824C6099_A_4 = _TriplanarNM_38475939_XYZ_1[3];
                        float _Property_830946EB_Out_0 = _CoverHeightMapMin;
                        float _Property_A7E18B9F_Out_0 = _CoverHeightMapMax;
                        float2 _Vector2_4BC0C782_Out_0 = float2(_Property_830946EB_Out_0, _Property_A7E18B9F_Out_0);
                        float _Property_C3051ECE_Out_0 = _CoverHeightMapOffset;
                        float2 _Add_242BA7BA_Out_2;
                        Unity_Add_float2(_Vector2_4BC0C782_Out_0, (_Property_C3051ECE_Out_0.xx), _Add_242BA7BA_Out_2);
                        float _Remap_C868580B_Out_3;
                        Unity_Remap_float(_Split_824C6099_B_3, float2 (0, 1), _Add_242BA7BA_Out_2, _Remap_C868580B_Out_3);
                        float _Multiply_5610F739_Out_2;
                        Unity_Multiply_float(_Multiply_D777B623_Out_2, _Remap_C868580B_Out_3, _Multiply_5610F739_Out_2);
                        float _Multiply_EF26B04B_Out_2;
                        Unity_Multiply_float(_Split_7AD1E82F_G_2, _Multiply_5610F739_Out_2, _Multiply_EF26B04B_Out_2);
                        float _Saturate_456E02AA_Out_1;
                        Unity_Saturate_float(_Multiply_EF26B04B_Out_2, _Saturate_456E02AA_Out_1);
                        float _Multiply_17104BB2_Out_2;
                        Unity_Multiply_float(_Clamp_8BDA8462_Out_3, _Saturate_456E02AA_Out_1, _Multiply_17104BB2_Out_2);
                        float _Branch_D6B0024E_Out_3;
                        Unity_Branch_float(_Property_4AB1A11C_Out_0, _Multiply_17104BB2_Out_2, _Clamp_8BDA8462_Out_3, _Branch_D6B0024E_Out_3);
                        float3 _Lerp_75D9504F_Out_3;
                        Unity_Lerp_float3(_BlendOverlayBaseColor_DC11EFE2_OutVector4_1, (_Multiply_64C7F396_Out_2.xyz), (_Branch_D6B0024E_Out_3.xxx), _Lerp_75D9504F_Out_3);
                        float4 _Property_E4885F4_Out_0 = _WetColor;
                        float3 _Multiply_CAF8A50C_Out_2;
                        Unity_Multiply_float((_Property_E4885F4_Out_0.xyz), _Lerp_75D9504F_Out_3, _Multiply_CAF8A50C_Out_2);
                        float _OneMinus_69E30394_Out_1;
                        Unity_OneMinus_float(_Split_7AD1E82F_R_1, _OneMinus_69E30394_Out_1);
                        float3 _Lerp_1AB1B2C4_Out_3;
                        Unity_Lerp_float3(_Lerp_75D9504F_Out_3, _Multiply_CAF8A50C_Out_2, (_OneMinus_69E30394_Out_1.xxx), _Lerp_1AB1B2C4_Out_3);
                        float _Property_2BC6CE93_Out_0 = _CoverNormalScale;
                        float3 _NormalStrength_D9292962_Out_2;
                        Unity_NormalStrength_float((_TriplanarNMn_98A5B80C_XYZ_1.xyz), _Property_2BC6CE93_Out_0, _NormalStrength_D9292962_Out_2);
                        float3 _Lerp_CC69B645_Out_3;
                        Unity_Lerp_float3(_NormalBlend_B205DA66_Out_2, _NormalStrength_D9292962_Out_2, (_Branch_D6B0024E_Out_3.xxx), _Lerp_CC69B645_Out_3);
                        Bindings_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6 _PlanarNM_D55871DB;
                        _PlanarNM_D55871DB.WorldSpacePosition = IN.WorldSpacePosition;
                        _PlanarNM_D55871DB.uv0 = IN.uv0;
                        float4 _PlanarNM_D55871DB_XZ_2;
                        SG_PlanarNM_c0f081da9c567704ea36e7dd38cedcf6(TEXTURE2D_ARGS(_BaseMaskMap, sampler_BaseMaskMap), _Property_3E4B16C8_Out_0, _Property_50A244CF_Out_0, _PlanarNM_D55871DB, _PlanarNM_D55871DB_XZ_2);
                        float _Split_65F1C04F_R_1 = _PlanarNM_D55871DB_XZ_2[0];
                        float _Split_65F1C04F_G_2 = _PlanarNM_D55871DB_XZ_2[1];
                        float _Split_65F1C04F_B_3 = _PlanarNM_D55871DB_XZ_2[2];
                        float _Split_65F1C04F_A_4 = _PlanarNM_D55871DB_XZ_2[3];
                        float _Property_25A8FF3A_Out_0 = _BaseMetallic;
                        float _Multiply_4EC9E7C6_Out_2;
                        Unity_Multiply_float(_Split_65F1C04F_R_1, _Property_25A8FF3A_Out_0, _Multiply_4EC9E7C6_Out_2);
                        float _Property_14AEE676_Out_0 = _BaseAORemapMin;
                        float _Property_DF6FBA39_Out_0 = _BaseAORemapMax;
                        float2 _Vector2_6C607578_Out_0 = float2(_Property_14AEE676_Out_0, _Property_DF6FBA39_Out_0);
                        float _Remap_67DCA185_Out_3;
                        Unity_Remap_float(_Split_65F1C04F_G_2, float2 (0, 1), _Vector2_6C607578_Out_0, _Remap_67DCA185_Out_3);
                        float _Property_772D33E9_Out_0 = _BaseSmoothnessRemapMin;
                        float _Property_3A018C8A_Out_0 = _BaseSmoothnessRemapMax;
                        float2 _Vector2_CC4DC4DC_Out_0 = float2(_Property_772D33E9_Out_0, _Property_3A018C8A_Out_0);
                        float _Remap_4C121471_Out_3;
                        Unity_Remap_float(_Split_65F1C04F_A_4, float2 (0, 1), _Vector2_CC4DC4DC_Out_0, _Remap_4C121471_Out_3);
                        float _Multiply_55B1F0BE_Out_2;
                        Unity_Multiply_float(_SampleTexture2D_CD9C50D2_B_6, 2, _Multiply_55B1F0BE_Out_2);
                        float _Add_AE24F590_Out_2;
                        Unity_Add_float(_Multiply_55B1F0BE_Out_2, -1, _Add_AE24F590_Out_2);
                        float _Property_B5AB31DA_Out_0 = _DetailSmoothnessScale;
                        float _Multiply_C0EAB2EE_Out_2;
                        Unity_Multiply_float(_Add_AE24F590_Out_2, _Property_B5AB31DA_Out_0, _Multiply_C0EAB2EE_Out_2);
                        float _Saturate_1F246CE5_Out_1;
                        Unity_Saturate_float(_Multiply_C0EAB2EE_Out_2, _Saturate_1F246CE5_Out_1);
                        float _Absolute_95405FDB_Out_1;
                        Unity_Absolute_float(_Saturate_1F246CE5_Out_1, _Absolute_95405FDB_Out_1);
                        Bindings_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a _BlendOverlayDetailSmoothness_3B17247C;
                        float _BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1;
                        SG_BlendOverlayDetailSmoothness_06e12138dc89c0040b45a57abe520a1a(_Remap_4C121471_Out_3, _Add_AE24F590_Out_2, _Absolute_95405FDB_Out_1, _BlendOverlayDetailSmoothness_3B17247C, _BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1);
                        float _Saturate_F6661092_Out_1;
                        Unity_Saturate_float(_BlendOverlayDetailSmoothness_3B17247C_SmoothnessOverlay_1, _Saturate_F6661092_Out_1);
                        float3 _Vector3_FEF1FB88_Out_0 = float3(_Multiply_4EC9E7C6_Out_2, _Remap_67DCA185_Out_3, _Saturate_F6661092_Out_1);
                        float _Property_88D7F675_Out_0 = _CoverMetallic;
                        float _Multiply_ED7647AC_Out_2;
                        Unity_Multiply_float(_Split_824C6099_R_1, _Property_88D7F675_Out_0, _Multiply_ED7647AC_Out_2);
                        float _Property_559BF471_Out_0 = _CoverAORemapMin;
                        float _Property_C5C18557_Out_0 = _CoverAORemapMax;
                        float2 _Vector2_BB54B900_Out_0 = float2(_Property_559BF471_Out_0, _Property_C5C18557_Out_0);
                        float _Remap_91B89F26_Out_3;
                        Unity_Remap_float(_Split_824C6099_G_2, float2 (0, 1), _Vector2_BB54B900_Out_0, _Remap_91B89F26_Out_3);
                        float _Property_D4159FAC_Out_0 = _CoverSmoothnessRemapMin;
                        float _Property_60E25749_Out_0 = _CoverSmoothnessRemapMax;
                        float2 _Vector2_3EBCF04C_Out_0 = float2(_Property_D4159FAC_Out_0, _Property_60E25749_Out_0);
                        float _Remap_3544B0FC_Out_3;
                        Unity_Remap_float(_Split_824C6099_A_4, float2 (0, 1), _Vector2_3EBCF04C_Out_0, _Remap_3544B0FC_Out_3);
                        float3 _Vector3_4B858D29_Out_0 = float3(_Multiply_ED7647AC_Out_2, _Remap_91B89F26_Out_3, _Remap_3544B0FC_Out_3);
                        float3 _Lerp_6B5C6348_Out_3;
                        Unity_Lerp_float3(_Vector3_FEF1FB88_Out_0, _Vector3_4B858D29_Out_0, (_Branch_D6B0024E_Out_3.xxx), _Lerp_6B5C6348_Out_3);
                        float _Split_BF192904_R_1 = _Lerp_6B5C6348_Out_3[0];
                        float _Split_BF192904_G_2 = _Lerp_6B5C6348_Out_3[1];
                        float _Split_BF192904_B_3 = _Lerp_6B5C6348_Out_3[2];
                        float _Split_BF192904_A_4 = 0;
                        float _Property_328F033C_Out_0 = _WetSmoothness;
                        float _Lerp_1DEC7741_Out_3;
                        Unity_Lerp_float(_Split_BF192904_B_3, _Property_328F033C_Out_0, _OneMinus_69E30394_Out_1, _Lerp_1DEC7741_Out_3);
                        surface.Albedo = _Lerp_1AB1B2C4_Out_3;
                        surface.Normal = _Lerp_CC69B645_Out_3;
                        surface.BentNormal = IN.TangentSpaceNormal;
                        surface.CoatMask = 0;
                        surface.Metallic = _Split_BF192904_R_1;
                        surface.Emission = float3(0, 0, 0);
                        surface.Smoothness = _Lerp_1DEC7741_Out_3;
                        surface.Occlusion = _Split_BF192904_G_2;
                        surface.Alpha = 1;
                        return surface;
                    }
                    
            //-------------------------------------------------------------------------------------
            // End graph generated code
            //-------------------------------------------------------------------------------------
        
        // $include("VertexAnimation.template.hlsl")
        
        
        //-------------------------------------------------------------------------------------
        // TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
            FragInputs BuildFragInputs(VaryingsMeshToPS input)
            {
                FragInputs output;
                ZERO_INITIALIZE(FragInputs, output);
        
                // Init to some default value to make the computer quiet (else it output 'divide by zero' warning even if value is not used).
                // TODO: this is a really poor workaround, but the variable is used in a bunch of places
                // to compute normals which are then passed on elsewhere to compute other values...
                output.tangentToWorld = k_identity3x3;
                output.positionSS = input.positionCS;       // input.positionCS is SV_Position
        
                output.positionRWS = input.positionRWS;
                output.tangentToWorld = BuildTangentToWorld(input.tangentWS, input.normalWS);
                output.texCoord0 = input.texCoord0;
                output.texCoord1 = input.texCoord1;
                output.texCoord2 = input.texCoord2;
                // output.texCoord3 = input.texCoord3;
                output.color = input.color;
                #if _DOUBLESIDED_ON && SHADER_STAGE_FRAGMENT
                output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #elif SHADER_STAGE_FRAGMENT
                // output.isFrontFace = IS_FRONT_VFACE(input.cullFace, true, false);
                #endif // SHADER_STAGE_FRAGMENT
        
                return output;
            }
        
            SurfaceDescriptionInputs FragInputsToSurfaceDescriptionInputs(FragInputs input, float3 viewWS)
            {
                SurfaceDescriptionInputs output;
                ZERO_INITIALIZE(SurfaceDescriptionInputs, output);
        
                output.WorldSpaceNormal =            normalize(input.tangentToWorld[2].xyz);
                // output.ObjectSpaceNormal =           mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_M);           // transposed multiplication by inverse matrix to handle normal scale
                // output.ViewSpaceNormal =             mul(output.WorldSpaceNormal, (float3x3) UNITY_MATRIX_I_V);         // transposed multiplication by inverse matrix to handle normal scale
                output.TangentSpaceNormal =          float3(0.0f, 0.0f, 1.0f);
                output.WorldSpaceTangent =           input.tangentToWorld[0].xyz;
                // output.ObjectSpaceTangent =          TransformWorldToObjectDir(output.WorldSpaceTangent);
                // output.ViewSpaceTangent =            TransformWorldToViewDir(output.WorldSpaceTangent);
                // output.TangentSpaceTangent =         float3(1.0f, 0.0f, 0.0f);
                output.WorldSpaceBiTangent =         input.tangentToWorld[1].xyz;
                // output.ObjectSpaceBiTangent =        TransformWorldToObjectDir(output.WorldSpaceBiTangent);
                // output.ViewSpaceBiTangent =          TransformWorldToViewDir(output.WorldSpaceBiTangent);
                // output.TangentSpaceBiTangent =       float3(0.0f, 1.0f, 0.0f);
                // output.WorldSpaceViewDirection =     normalize(viewWS);
                // output.ObjectSpaceViewDirection =    TransformWorldToObjectDir(output.WorldSpaceViewDirection);
                // output.ViewSpaceViewDirection =      TransformWorldToViewDir(output.WorldSpaceViewDirection);
                // float3x3 tangentSpaceTransform =     float3x3(output.WorldSpaceTangent,output.WorldSpaceBiTangent,output.WorldSpaceNormal);
                // output.TangentSpaceViewDirection =   mul(tangentSpaceTransform, output.WorldSpaceViewDirection);
                output.WorldSpacePosition =          GetAbsolutePositionWS(input.positionRWS);
                // output.ObjectSpacePosition =         TransformWorldToObject(input.positionRWS);
                // output.ViewSpacePosition =           TransformWorldToView(input.positionRWS);
                // output.TangentSpacePosition =        float3(0.0f, 0.0f, 0.0f);
                // output.ScreenPosition =              ComputeScreenPos(TransformWorldToHClip(input.positionRWS), _ProjectionParams.x);
                output.uv0 =                         input.texCoord0;
                // output.uv1 =                         input.texCoord1;
                // output.uv2 =                         input.texCoord2;
                // output.uv3 =                         input.texCoord3;
                output.VertexColor =                 input.color;
                // output.FaceSign =                    input.isFrontFace;
                // output.TimeParameters =              _TimeParameters.xyz; // This is mainly for LW as HD overwrite this value
        
                return output;
            }
        
            // existing HDRP code uses the combined function to go directly from packed to frag inputs
            FragInputs UnpackVaryingsMeshToFragInputs(PackedVaryingsMeshToPS input)
            {
                UNITY_SETUP_INSTANCE_ID(input);
                VaryingsMeshToPS unpacked= UnpackVaryingsMeshToPS(input);
                return BuildFragInputs(unpacked);
            }
        
        //-------------------------------------------------------------------------------------
        // END TEMPLATE INCLUDE : SharedCode.template.hlsl
        //-------------------------------------------------------------------------------------
        
        
            void BuildSurfaceData(FragInputs fragInputs, inout SurfaceDescription surfaceDescription, float3 V, PositionInputs posInput, out SurfaceData surfaceData, out float3 bentNormalWS)
            {
                // setup defaults -- these are used if the graph doesn't output a value
                ZERO_INITIALIZE(SurfaceData, surfaceData);
        
                // copy across graph values, if defined
                surfaceData.baseColor =                 surfaceDescription.Albedo;
                surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
                surfaceData.ambientOcclusion =          surfaceDescription.Occlusion;
                // surfaceData.specularOcclusion =         surfaceDescription.SpecularOcclusion;
                surfaceData.metallic =                  surfaceDescription.Metallic;
                // surfaceData.subsurfaceMask =            surfaceDescription.SubsurfaceMask;
                // surfaceData.thickness =                 surfaceDescription.Thickness;
                // surfaceData.diffusionProfileHash =      asuint(surfaceDescription.DiffusionProfileHash);
                // surfaceData.specularColor =             surfaceDescription.Specular;
                surfaceData.coatMask =                  surfaceDescription.CoatMask;
                // surfaceData.anisotropy =                surfaceDescription.Anisotropy;
                // surfaceData.iridescenceMask =           surfaceDescription.IridescenceMask;
                // surfaceData.iridescenceThickness =      surfaceDescription.IridescenceThickness;
        
        #ifdef _HAS_REFRACTION
                if (_EnableSSRefraction)
                {
                    // surfaceData.ior =                       surfaceDescription.RefractionIndex;
                    // surfaceData.transmittanceColor =        surfaceDescription.RefractionColor;
                    // surfaceData.atDistance =                surfaceDescription.RefractionDistance;
        
                    surfaceData.transmittanceMask = (1.0 - surfaceDescription.Alpha);
                    surfaceDescription.Alpha = 1.0;
                }
                else
                {
                    surfaceData.ior = 1.0;
                    surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                    surfaceData.atDistance = 1.0;
                    surfaceData.transmittanceMask = 0.0;
                    surfaceDescription.Alpha = 1.0;
                }
        #else
                surfaceData.ior = 1.0;
                surfaceData.transmittanceColor = float3(1.0, 1.0, 1.0);
                surfaceData.atDistance = 1.0;
                surfaceData.transmittanceMask = 0.0;
        #endif
                
                // These static material feature allow compile time optimization
                surfaceData.materialFeatures = MATERIALFEATUREFLAGS_LIT_STANDARD;
        #ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SUBSURFACE_SCATTERING;
        #endif
        #ifdef _MATERIAL_FEATURE_TRANSMISSION
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_TRANSMISSION;
        #endif
        #ifdef _MATERIAL_FEATURE_ANISOTROPY
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_ANISOTROPY;
        #endif
                // surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
        
        #ifdef _MATERIAL_FEATURE_IRIDESCENCE
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
        #endif
        #ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
                surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
        #endif
        
        #if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
                // Require to have setup baseColor
                // Reproduce the energy conservation done in legacy Unity. Not ideal but better for compatibility and users can unchek it
                surfaceData.baseColor *= (1.0 - Max3(surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b));
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                // tangent-space normal
                float3 normalTS = float3(0.0f, 0.0f, 1.0f);
                normalTS = surfaceDescription.Normal;
        
                // compute world space normal
                GetNormalWS(fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants);
        
                bentNormalWS = surfaceData.normalWS;
                // GetNormalWS(fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants);
        
                surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];
        
                surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
                // surfaceData.tangentWS = TransformTangentToWorld(surfaceDescription.Tangent, fragInputs.tangentToWorld);
                surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);
        
                // By default we use the ambient occlusion with Tri-ace trick (apply outside) for specular occlusion.
                // If user provide bent normal then we process a better term
        #if defined(_SPECULAR_OCCLUSION_CUSTOM)
                // Just use the value passed through via the slot (not active otherwise)
        #elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
                // If we have bent normal and ambient occlusion, process a specular occlusion
                surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO(V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness(surfaceData.perceptualSmoothness));
        #elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
                surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion(ClampNdotV(dot(surfaceData.normalWS, V)), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness(surfaceData.perceptualSmoothness));
        #else
                surfaceData.specularOcclusion = 1.0;
        #endif
        
        #if HAVE_DECALS
                if (_EnableDecals)
                {
                    DecalSurfaceData decalSurfaceData = GetDecalSurfaceData(posInput, surfaceDescription.Alpha);
                    ApplyDecalToSurfaceData(decalSurfaceData, surfaceData);
                }
        #endif
        
        #ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
                surfaceData.perceptualSmoothness = GeometricNormalFiltering(surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[2], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold);
        #endif
        
        #ifdef DEBUG_DISPLAY
                if (_DebugMipMapMode != DEBUGMIPMAPMODE_NONE)
                {
                    // TODO: need to update mip info
                    surfaceData.metallic = 0;
                }
        
                // We need to call ApplyDebugToSurfaceData after filling the surfarcedata and before filling builtinData
                // as it can modify attribute use for static lighting
                ApplyDebugToSurfaceData(fragInputs.tangentToWorld, surfaceData);
        #endif
            }
        
            void GetSurfaceAndBuiltinData(FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
        #ifdef LOD_FADE_CROSSFADE // enable dithering LOD transition if user select CrossFade transition in LOD group
                uint3 fadeMaskSeed = asuint((int3)(V * _ScreenSize.xyx)); // Quantize V to _ScreenSize values
                LODDitheringTransition(fadeMaskSeed, unity_LODFade.x);
        #endif
        
        #ifdef _DOUBLESIDED_ON
            float3 doubleSidedConstants = _DoubleSidedConstants.xyz;
        #else
            float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
        #endif
        
                ApplyDoubleSidedFlipOrMirror(fragInputs, doubleSidedConstants);
        
                SurfaceDescriptionInputs surfaceDescriptionInputs = FragInputsToSurfaceDescriptionInputs(fragInputs, V);
                SurfaceDescription surfaceDescription = SurfaceDescriptionFunction(surfaceDescriptionInputs);
        
                // Perform alpha test very early to save performance (a killed pixel will not sample textures)
                // TODO: split graph evaluation to grab just alpha dependencies first? tricky..
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPrepass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdDepthPostpass);
                // DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThresholdShadow);
                
                // ApplyDepthOffsetPositionInput(V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput);
        
                float3 bentNormalWS;
                BuildSurfaceData(fragInputs, surfaceDescription, V, posInput, surfaceData, bentNormalWS);
        
                // Builtin Data
                // For back lighting we use the oposite vertex normal 
                InitBuiltinData(posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);
        
                // override sampleBakedGI:
                // builtinData.bakeDiffuseLighting = surfaceDescription.BakedGI;
                // builtinData.backBakeDiffuseLighting = surfaceDescription.BakedBackGI;
        
                builtinData.emissiveColor = surfaceDescription.Emission;
        
                // builtinData.depthOffset = surfaceDescription.DepthOffset;
        
        #if (SHADERPASS == SHADERPASS_DISTORTION)
                builtinData.distortion = surfaceDescription.Distortion;
                builtinData.distortionBlur = surfaceDescription.DistortionBlur;
        #else
                builtinData.distortion = float2(0.0, 0.0);
                builtinData.distortionBlur = 0.0;
        #endif
        
                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }
        
            //-------------------------------------------------------------------------------------
            // Pass Includes
            //-------------------------------------------------------------------------------------
                #include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPassForward.hlsl"
            //-------------------------------------------------------------------------------------
            // End Pass Includes
            //-------------------------------------------------------------------------------------
        
            ENDHLSL
        }
        
    }
    CustomEditor "UnityEditor.Experimental.Rendering.HDPipeline.HDLitGUI"
    FallBack "Hidden/InternalErrorShader"
}
