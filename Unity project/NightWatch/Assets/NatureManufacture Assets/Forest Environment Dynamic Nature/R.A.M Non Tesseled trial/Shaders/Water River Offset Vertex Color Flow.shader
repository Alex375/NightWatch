Shader "NatureManufacture Shaders/Water/Water River Offset Vertex Color Flow"
{
    Properties
    {
		_GlobalTiling("Global Tiling", Range( 0.001 , 100)) = 1
		_UVVDirection1UDirection0("UV - V Direction (1) U Direction (0)", Int) = 0
		_BackfaceAlpha("Backface Alpha", Range( 0 , 1)) = 0.85
		_SlowWaterSpeed("Slow Water Speed", Vector) = (0.3,0.3,0,0)
		_SlowWaterMixSpeed("Slow Water Mix Speed", Vector) = (0.002,0.002,0,0)
		_SmallCascadeMainSpeed("Small Cascade Main Speed", Vector) = (0.6,0.6,0,0)
		_SmallCascadeMixSpeed("Small Cascade Mix Speed", Vector) = (0.04,0.08,0,0)
		_BigCascadeMainSpeed("Big Cascade Main Speed", Vector) = (1.4,1.4,0,0)
		_BigCascadeMixSpeed("Big Cascade Mix Speed", Vector) = (0.02,0.28,0,0)
		_CleanFalloffMultiply("Clean Falloff Multiply", Range( 0.1 , 4)) = 0.64
		_CleanFalloffPower("Clean Falloff Power", Range( 0.4 , 10)) = 1.68
		_ShalowColor("Shalow Color", Color) = (1,1,1,0)
		_ShalowFalloffMultiply("Shalow Falloff Multiply", Range( 0.1 , 4)) = 0.47
		_ShalowFalloffPower("Shalow Falloff Power", Range( 0 , 10)) = 3.49
		_DeepColor("Deep Color", Color) = (0,0,0,0)
		_WaveTranslucencyPower("Wave Translucency Power", Range( 0 , 10)) = 3.44
		_WaveTranslucencyHardness("Wave Translucency Hardness", Range( 0 , 10)) = 7.78
		_WaveTranslucencyMultiply("Wave Translucency Multiply", Range( 0 , 10)) = 1
		_WaveTranslucencyFallOffDistance("Wave Translucency FallOff Distance", Range( 0 , 100)) = 30
		_WaterSpecularClose("Water Specular Close", Range( 0 , 1)) = 0
		_WaterSpecularFar("Water Specular Far", Range( 0 , 1)) = 0
		_WaterSpecularThreshold("Water Specular Threshold", Range( 0 , 10)) = 1
		_WaterSmoothness("Water Smoothness", Float) = 0
		_Distortion("Distortion", Float) = 0.5
		_FarNormalPower("Far Normal Power", Range( 0 , 1)) = 0.5
		_FarNormalBlendStartDistance("Far Normal Blend Start Distance", Float) = 200
		_FarNormalBlendThreshold("Far Normal Blend Threshold", Range( 0 , 10)) = 10
		_MicroWaveTiling("Micro Wave Tiling", Vector) = (20,20,0,0)
		_MicroWaveNormalScale("Micro Wave Normal Scale", Range( 0 , 2)) = 0.25
		_MacroWaveNormalScale("Macro Wave Normal Scale", Range( 0 , 2)) = 0.33
		_SlowWaterTiling("Slow Water Tiling", Vector) = (3,3,0,0)
		[NoScaleOffset]_SlowWaterNormal("Slow Water Normal", 2D) = "bump" {}
		_SlowNormalScale("Slow Normal Scale", Float) = 0.3
		[NoScaleOffset]_SlowWaterTesselation("Slow Water Tesselation", 2D) = "black" {}
		_SlowWaterTessScale("Slow Water Tess Scale", Float) = 0.1
		_SmallCascadeTiling("Small Cascade Tiling", Vector) = (1,1,0,0)
		[NoScaleOffset]_SmallCascadeNormal("Small Cascade Normal", 2D) = "bump" {}
		_SmallCascadeNormalScale("Small Cascade Normal Scale", Float) = 0.3
		_SmallCascadeAngle("Small Cascade Angle", Range( 0.001 , 90)) = 90
		_SmallCascadeAngleFalloff("Small Cascade Angle Falloff", Range( 0 , 80)) = 5
		[NoScaleOffset]_SmallCascadeWaterTess("Small Cascade Water Tess", 2D) = "white" {}
		_SmallCascadeWaterTessScale("Small Cascade Water Tess Scale", Float) = 0.8
		[NoScaleOffset]_SmallCascade("Small Cascade", 2D) = "white" {}
		_SmallCascadeColor("Small Cascade Color", Vector) = (1,1,1,0)
		_SmallCascadeFoamFalloff("Small Cascade Foam Falloff", Range( 0 , 10)) = 0
		_SmallCascadeSmoothness("Small Cascade Smoothness", Float) = 0
		_SmallCascadeSpecular("Small Cascade Specular", Range( 0 , 1)) = 0
		_BigCascadeTiling("Big Cascade Tiling", Vector) = (1,1,0,0)
		[NoScaleOffset]_BigCascadeNormal("Big Cascade Normal", 2D) = "bump" {}
		_BigCascadeNormalScale("Big Cascade Normal Scale", Float) = 0.3
		_BigCascadeAngle("Big Cascade Angle", Range( 0.001 , 90)) = 90
		_BigCascadeAngleFalloff("Big Cascade Angle Falloff", Range( 0 , 80)) = 15
		[NoScaleOffset]_BigCascadeWaterTess("Big Cascade Water Tess", 2D) = "black" {}
		_BigCascadeWaterTessScale("Big Cascade Water Tess Scale", Float) = 0.5
		[NoScaleOffset]_BigCascade("Big Cascade", 2D) = "white" {}
		_BigCascadeColor("Big Cascade Color", Vector) = (1,1,1,0)
		_BigCascadeFoamFalloff("Big Cascade Foam Falloff", Range( 0 , 10)) = 0
		_BigCascadeTransparency("Big Cascade Transparency", Range( 0 , 1)) = 0
		_BigCascadeSmoothness("Big Cascade Smoothness", Float) = 0
		_BigCascadeSpecular("Big Cascade Specular", Range( 0 , 1)) = 0
		[NoScaleOffset]_Noise("Noise", 2D) = "white" {}
		_NoiseTiling("Noise Tiling", Vector) = (4,4,0,0)
		_NoiseSpeed("Noise Speed", Vector) = (1,1,0,0)
		_SmallCascadeNoisePower("Small Cascade Noise Power", Range( 0 , 10)) = 2.71
		_SmallCascadeNoiseMultiply("Small Cascade Noise Multiply", Range( 0 , 40)) = 20
		_BigCascadeNoisePower("Big Cascade Noise Power", Range( 0 , 10)) = 2.71
		_BigCascadeNoiseMultiply("Big Cascade Noise Multiply", Range( 0 , 40)) = 20
		[NoScaleOffset]_Foam("Foam", 2D) = "white" {}
		_FoamSpeed("Foam Speed", Vector) = (0.3,0.3,0,0)
		_FoamTiling("Foam Tiling", Vector) = (1,1,0,0)
		_FoamColor("Foam Color", Vector) = (1,1,1,0)
		_FoamDepth("Foam Depth", Range( 0 , 10)) = 0
		_FoamFalloff("Foam Falloff", Range( -100 , 0)) = -100
		_FoamWaveHardness("Foam Wave Hardness", Range( 0 , 10)) = 0.9
		_FoamWavePower("Foam Wave Power", Range( 0 , 10)) = 2
		_FoamWaveMultiply("Foam Wave Multiply", Range( 0 , 10)) = 7
		_FoamSpecular("Foam Specular", Range( 0 , 1)) = 0
		_FoamSmoothness("Foam Smoothness", Float) = 0
		_AOPower("AO Power", Range( 0 , 1)) = 1
    }

    SubShader
    {
		

		Tags { "RenderPipeline"="HDRenderPipeline" "RenderType"="Transparent" "Queue"="Transparent" }

		Blend SrcAlpha OneMinusSrcAlpha , SrcAlpha OneMinusSrcAlpha
		Cull Off
		ZTest LEqual
		ZWrite On
		ZClip [_ZClip]

		HLSLINCLUDE
		#pragma target 4.5
        #pragma only_renderers d3d11 ps4 xboxone vulkan metal switch
        #pragma multi_compile_instancing
		#pragma instancing_options renderinglayer
        #pragma multi_compile _ LOD_FADE_CROSSFADE

		struct GlobalSurfaceDescription
        {
            float3 Albedo;
            float3 Normal;
            float3 BentNormal;
			float3 Specular;
            float CoatMask;
            float Metallic;
            float3 Emission;
            float Smoothness;
            float Occlusion;
            float Alpha;
			float AlphaClipThreshold;
			float SpecularAAScreenSpaceVariance;
			float SpecularAAThreshold;
			float SpecularOcclusion;
			float DepthOffset;
			//Refraction
			float RefractionIndex;
            float3 RefractionColor;
            float RefractionDistance;
			//SSS/Translucent
			float Thickness;
			float SubsurfaceMask;
            float DiffusionProfile;
			//Anisotropy
			float Anisotropy;
			float3 Tangent;
			//Iridescent
			float IridescenceMask;
			float IridescenceThickness;
        };

		struct AlphaSurfaceDescription
        {
            float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
        };

		struct SmoothSurfaceDescription
        {
            float Smoothness;
            float Alpha;
			float AlphaClipThreshold;
			float DepthOffset;
        };

		struct DistortionSurfaceDescription
        {
            float Alpha;
            float2 Distortion;
            float DistortionBlur;
			float AlphaClipThreshold;
        };

		ENDHLSL
		
        Pass
        {
			
            Name "GBuffer"
            Tags { "LightMode"="GBuffer" }

			Stencil
			{
				Ref 2
				WriteMask 7
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			ZTest LEqual

            HLSLPROGRAM

			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _DECALS 1
			#define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
			#define _ENABLE_FOG_ON_TRANSPARENT 1
			#define _AMBIENT_OCCLUSION 1
			#define _SURFACE_TYPE_TRANSPARENT 1
			#define _BLENDMODE_ALPHA 1


			#pragma vertex Vert
			#pragma fragment Frag
        
			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

            #define SHADERPASS SHADERPASS_GBUFFER
            #pragma multi_compile _ LIGHTMAP_ON
            #pragma multi_compile _ DIRLIGHTMAP_COMBINED
            #pragma multi_compile _ DYNAMICLIGHTMAP_ON
            #pragma multi_compile _ SHADOWS_SHADOWMASK
            #pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
            #pragma multi_compile _ LIGHT_LAYERS

            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
				
			#define ASE_SRP_VERSION 60900
			#define REQUIRE_OPAQUE_TEXTURE 1

				
			struct AttributesMesh 
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			sampler2D _SlowWaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _SlowWaterNormal;
			sampler2D _SmallCascadeWaterTess;
			sampler2D _SmallCascadeNormal;
			sampler2D _BigCascadeWaterTess;
			sampler2D _BigCascadeNormal;
			sampler2D _Foam;
			sampler2D _SmallCascade;
			sampler2D _Noise;
			sampler2D _BigCascade;
			CBUFFER_START( UnityPerMaterial )
			float _SlowWaterTessScale;
			float2 _SlowWaterMixSpeed;
			float2 _SlowWaterTiling;
			float _GlobalTiling;
			float _SlowNormalScale;
			float2 _SlowWaterSpeed;
			float2 _SmallCascadeMixSpeed;
			float2 _SmallCascadeTiling;
			float _SmallCascadeNormalScale;
			float2 _SmallCascadeMainSpeed;
			float _SmallCascadeWaterTessScale;
			half _SmallCascadeAngle;
			float _SmallCascadeAngleFalloff;
			half _BigCascadeAngle;
			float _BigCascadeAngleFalloff;
			float _BigCascadeWaterTessScale;
			float2 _BigCascadeMixSpeed;
			float2 _BigCascadeTiling;
			float _BigCascadeNormalScale;
			float2 _BigCascadeMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _Distortion;
			float3 _FoamColor;
			float _FoamDepth;
			float _FoamFalloff;
			float2 _FoamSpeed;
			float2 _FoamTiling;
			float _FoamWaveHardness;
			float _FoamWavePower;
			float _FoamWaveMultiply;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _BigCascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float2 _NoiseSpeed;
			float2 _NoiseTiling;
			float _SmallCascadeNoisePower;
			float _SmallCascadeNoiseMultiply;
			float3 _SmallCascadeColor;
			float _SmallCascadeFoamFalloff;
			float _BigCascadeNoisePower;
			float _BigCascadeNoiseMultiply;
			float3 _BigCascadeColor;
			float _BigCascadeFoamFalloff;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _FoamSpecular;
			float _SmallCascadeSpecular;
			float _BigCascadeSpecular;
			float _WaterSmoothness;
			float _FoamSmoothness;
			float _SmallCascadeSmoothness;
			float _BigCascadeSmoothness;
			half _AOPower;
			float _CleanFalloffMultiply;
			float _CleanFalloffPower;
			float _BackfaceAlpha;
			CBUFFER_END

			inline float4 ASE_ComputeGrabScreenPos( float4 pos )
			{
				#if UNITY_UV_STARTS_AT_TOP
				float scale = -1.0;
				#else
				float scale = 1.0;
				#endif
				float4 o = pos;
				o.y = pos.w * 0.5f;
				o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
				return o;
			}
			
			float4 ASEHDSampleSceneColor(float2 uv, float lod, float exposureMultiplier)
			{
				#if defined(REQUIRE_OPAQUE_TEXTURE) && defined(_SURFACE_TYPE_TRANSPARENT) && defined(SHADERPASS) && (SHADERPASS != SHADERPASS_LIGHT_TRANSPORT)
				return float4( SampleCameraColor(uv, lod) * exposureMultiplier, 1.0 );
				#endif
				return float4(0.0, 0.0, 0.0, 1.0);
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.baseColor =                 surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion = surfaceDescription.SpecularOcclusion;
				#endif
				surfaceData.ambientOcclusion = surfaceDescription.Occlusion;
				surfaceData.metallic = surfaceDescription.Metallic;
				surfaceData.coatMask = surfaceDescription.CoatMask;

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask = surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness = surfaceDescription.IridescenceThickness;
				#endif
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

				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor = surfaceDescription.Specular;
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);
				GetNormalWS(fragInputs, normalTS, surfaceData.normalWS,doubleSidedConstants);

				bentNormalWS = surfaceData.normalWS;
				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness = surfaceDescription.Thickness;
				#endif

				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness = surfaceDescription.Thickness;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask = surfaceDescription.SubsurfaceMask;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash = surfaceDescription.DiffusionProfile;
				#endif
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy = surfaceDescription.Anisotropy;
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#else
				surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif
			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				uint3 fadeMaskSeed = asuint( (int3)( V * _ScreenSize.xyx ) );
				LODDitheringTransition( fadeMaskSeed, unity_LODFade.x );
				#endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, surfaceData, bentNormalWS );

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				builtinData.emissiveColor = surfaceDescription.Emission;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2( 0.0, 0.0 );
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS Vert(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				int Direction723 = _UVVDirection1UDirection0;
				float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
				float2 uv0613 = inputMesh.ase_texcoord * _SlowWaterTiling + float2( 0,0 );
				float Globaltiling1010 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1308 = uv3829.x;
				float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
				float temp_output_1277_0 = ( U1308 * break1276.x );
				float V1309 = uv3829.y;
				float temp_output_1278_0 = ( break1276.y * V1309 );
				float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
				float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
				float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
				float temp_output_816_0 = ( _Time.y * 0.15 );
				float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
				float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
				float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float SlowFlowHeightBase835 = temp_output_834_0;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _SlowNormalScale ) , SlowFlowHeightBase835);
				float temp_output_398_0 = ( ( _SlowWaterTessScale * 0.3 ) * tex2Dlod( _SlowWaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , SlowFlowHeightBase835);
				float temp_output_415_0 = ( temp_output_398_0 + ( _SlowWaterTessScale * lerpResult840 ) );
				float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
				float2 uv0599 = inputMesh.ase_texcoord.xy * _SmallCascadeTiling + float2( 0,0 );
				float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
				float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
				float2 SmallCascadeSpeedValueMix433 = panner597;
				float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
				float2 break1270 = temp_output_1220_0;
				float temp_output_1271_0 = ( U1308 * break1270.x );
				float temp_output_1272_0 = ( break1270.y * V1309 );
				float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
				float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
				float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
				float temp_output_990_0 = ( _Time.y * 0.2 );
				float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
				float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
				float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 1.0) ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
				float temp_output_410_0 = ( tex2Dlod( _SmallCascadeWaterTess, float4( ( SmallCascadeSpeedValueMix433 + ( (lerpResult864).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a * ( _SmallCascadeWaterTessScale * 0.4 ) );
				float lerpResult869 = lerp( tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ).a , tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 0.0) ).a , SmallCascadeSlowFlowHeightBase859);
				float temp_output_414_0 = ( temp_output_410_0 + ( lerpResult869 * _SmallCascadeWaterTessScale ) );
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float clampResult259 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
				float clampResult507 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
				float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
				float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
				float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
				float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
				float lerpResult407 = lerp( temp_output_415_0 , ( temp_output_414_0 * clampResult285 ) , clampResult285);
				float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
				float2 uv0605 = inputMesh.ase_texcoord.xy * _BigCascadeTiling + float2( 0,0 );
				float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
				float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
				float2 BigCascadeSpeedValueMix608 = panner606;
				float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
				float temp_output_1284_0 = ( U1308 * break1283.x );
				float temp_output_1285_0 = ( break1283.y * V1309 );
				float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
				float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
				float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
				float temp_output_980_0 = ( _Time.y * 0.6 );
				float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
				float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
				float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
				float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
				float temp_output_564_0 = ( ( _BigCascadeWaterTessScale * 0.5 ) * tex2Dlod( _BigCascadeWaterTess, float4( ( BigCascadeSpeedValueMix608 + ( (lerpResult899).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult874 = lerp( tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ).a , tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ).a , BigCascadeSlowFlowHeightBase895);
				float temp_output_565_0 = ( temp_output_564_0 + ( _BigCascadeWaterTessScale * lerpResult874 ) );
				float temp_output_566_0 = ( temp_output_565_0 * clampResult514 );
				float4 break770 = ( inputMesh.ase_color / float4( 1,1,1,1 ) );
				float lerpResult754 = lerp( max( lerpResult407 , temp_output_566_0 ) , temp_output_415_0 , break770.r);
				float lerpResult755 = lerp( lerpResult754 , temp_output_414_0 , break770.g);
				float lerpResult752 = lerp( lerpResult755 , temp_output_565_0 , break770.b);
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsMeshToPS.ase_texcoord5 = screenPos;
				
				outputPackedVaryingsMeshToPS.ase_texcoord6.xy = inputMesh.ase_texcoord.xy;
				outputPackedVaryingsMeshToPS.ase_texcoord6.zw = inputMesh.ase_texcoord3.xy;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( (lerpResult752*1.0 + ( lerpResult752 * -0.5 )) * inputMesh.normalOS );

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz =	positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz =	normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv2;
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );
				return outputPackedVaryingsMeshToPS;
			}

			void Frag(  PackedVaryingsMeshToPS packedInput,
						OUTPUT_GBUFFER(outGBuffer)
						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						, half ase_vface : VFACE
						)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.interp03.xyzw;
				input.texCoord2 = packedInput.interp04.xyzw;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 normalizedWorldViewDir = GetWorldSpaceNormalizeViewDir(input.positionRWS);
				SurfaceData surfaceData;
				BuiltinData builtinData;

				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float4 screenPos = packedInput.ase_texcoord5;
				float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( screenPos );
				float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
				float2 appendResult163 = (float2(ase_grabScreenPosNorm.r , ase_grabScreenPosNorm.g));
				int Direction723 = _UVVDirection1UDirection0;
				float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
				float2 uv0613 = packedInput.ase_texcoord6.xy * _SlowWaterTiling + float2( 0,0 );
				float Globaltiling1010 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = packedInput.ase_texcoord6.zw * float2( 1,1 ) + float2( 0,0 );
				float U1308 = uv3829.x;
				float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
				float temp_output_1277_0 = ( U1308 * break1276.x );
				float V1309 = uv3829.y;
				float temp_output_1278_0 = ( break1276.y * V1309 );
				float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
				float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
				float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
				float temp_output_816_0 = ( _Time.y * 0.15 );
				float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
				float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
				float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float SlowFlowHeightBase835 = temp_output_834_0;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, WaterSpeedValueMainFlowUV1830 ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, WaterSpeedValueMainFlowUV2831 ), _SlowNormalScale ) , SlowFlowHeightBase835);
				float2 temp_output_1085_0 = ( (lerpResult838).xy * float2( 0.05,0.05 ) );
				float3 temp_output_24_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( WaterSpeedValueMix516 * _MicroWaveTiling ) + temp_output_1085_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( WaterSpeedValueMix516 + temp_output_1085_0 ) ), _MacroWaveNormalScale ) ) , lerpResult838 );
				float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
				float2 uv0599 = packedInput.ase_texcoord6.xy * _SmallCascadeTiling + float2( 0,0 );
				float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
				float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
				float2 SmallCascadeSpeedValueMix433 = panner597;
				float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
				float2 break1270 = temp_output_1220_0;
				float temp_output_1271_0 = ( U1308 * break1270.x );
				float temp_output_1272_0 = ( break1270.y * V1309 );
				float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
				float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
				float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
				float temp_output_990_0 = ( _Time.y * 0.2 );
				float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
				float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
				float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, SmallCascadeWaterSpeedValueMainFlowUV1860 ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, SmallCascadeWaterSpeedValueMainFlowUV2854 ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
				float2 temp_output_1098_0 = ( (lerpResult864).xy * float2( 0.1,0.1 ) );
				float3 temp_output_526_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( SmallCascadeSpeedValueMix433 * _MicroWaveTiling ) + temp_output_1098_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, ( SmallCascadeSpeedValueMix433 + temp_output_1098_0 ) ), _MacroWaveNormalScale ) ) , lerpResult864 );
				float clampResult259 = clamp( normalWS.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
				float clampResult507 = clamp( normalWS.y , 0.0 , 1.0 );
				float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
				float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
				float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
				float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
				float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
				float3 lerpResult330 = lerp( temp_output_24_0 , temp_output_526_0 , clampResult285);
				float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
				float2 uv0605 = packedInput.ase_texcoord6.xy * _BigCascadeTiling + float2( 0,0 );
				float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
				float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
				float2 BigCascadeSpeedValueMix608 = panner606;
				float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
				float temp_output_1284_0 = ( U1308 * break1283.x );
				float temp_output_1285_0 = ( break1283.y * V1309 );
				float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
				float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
				float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
				float temp_output_980_0 = ( _Time.y * 0.6 );
				float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
				float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
				float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
				float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, BigCascadeWaterSpeedValueMainFlowUV1893 ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, BigCascadeWaterSpeedValueMainFlowUV2894 ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
				float2 temp_output_1130_0 = ( (lerpResult899).xy * float2( 0.15,0.15 ) );
				float3 temp_output_333_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( BigCascadeSpeedValueMix608 * _MicroWaveTiling ) + temp_output_1130_0 ) ), _MacroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, ( BigCascadeSpeedValueMix608 + temp_output_1130_0 ) ), _MicroWaveNormalScale ) ) , lerpResult899 );
				float3 lerpResult529 = lerp( lerpResult330 , temp_output_333_0 , clampResult514);
				float4 fetchOpaqueVal65 = ASEHDSampleSceneColor(( float3( ( appendResult163 / ase_grabScreenPosNorm.a ) ,  0.0 ) + ( lerpResult529 * _Distortion ) ).xy, 0, GetInverseCurrentExposureMultiplier()*0.001);
				float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
				float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
				float temp_output_113_0 = saturate( pow( abs( ( temp_output_89_0 + _FoamDepth ) ) , _FoamFalloff ) );
				float2 temp_output_1292_0 = ( _FoamSpeed * _FoamTiling );
				float2 break1293 = temp_output_1292_0;
				float temp_output_1295_0 = ( U1308 * break1293.x );
				float temp_output_1294_0 = ( break1293.y * V1309 );
				float2 appendResult1298 = (float2(temp_output_1295_0 , temp_output_1294_0));
				float2 appendResult1296 = (float2(temp_output_1294_0 , temp_output_1295_0));
				float2 temp_output_1302_0 = (( (float)Direction723 == 1.0 ) ? appendResult1298 :  appendResult1296 );
				float2 uv0918 = packedInput.ase_texcoord6.xy * _FoamTiling + float2( 0,0 );
				float2 temp_output_1305_0 = ( uv0918 * Globaltiling1010 );
				float2 FoamCascadeWaterSpeedValueMainFlowUV1932 = ( ( temp_output_1302_0 * Refresh11198 ) + temp_output_1305_0 );
				float2 temp_output_1120_0 = ( (lerpResult529).xy * float2( 0.03,0.03 ) );
				float2 FoamCascadeWaterSpeedValueMainFlowUV2933 = ( ( temp_output_1302_0 * Refresh21199 ) + temp_output_1305_0 );
				float temp_output_930_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float FoamCascadeSlowFlowHeightBase935 = temp_output_930_0;
				float lerpResult937 = lerp( tex2D( _Foam, ( FoamCascadeWaterSpeedValueMainFlowUV1932 + temp_output_1120_0 ) ).a , tex2D( _Foam, ( FoamCascadeWaterSpeedValueMainFlowUV2933 + temp_output_1120_0 ) ).a , FoamCascadeSlowFlowHeightBase935);
				float temp_output_114_0 = ( temp_output_113_0 * lerpResult937 );
				float lerpResult1378 = lerp( temp_output_114_0 , 0.0 , clampResult514);
				float clampResult1185 = clamp( lerpResult1378 , 0.0 , 1.0 );
				float temp_output_398_0 = ( ( _SlowWaterTessScale * 0.3 ) * tex2D( _SlowWaterTesselation, ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ) ).a );
				float lerpResult840 = lerp( tex2D( _SlowWaterTesselation, WaterSpeedValueMainFlowUV1830 ).a , tex2D( _SlowWaterTesselation, WaterSpeedValueMainFlowUV2831 ).a , SlowFlowHeightBase835);
				float temp_output_410_0 = ( tex2D( _SmallCascadeWaterTess, ( SmallCascadeSpeedValueMix433 + ( (lerpResult864).xy * float2( 0.05,0.05 ) ) ) ).a * ( _SmallCascadeWaterTessScale * 0.4 ) );
				float lerpResult869 = lerp( tex2D( _SmallCascadeWaterTess, SmallCascadeWaterSpeedValueMainFlowUV1860 ).a , tex2D( _SmallCascadeWaterTess, SmallCascadeWaterSpeedValueMainFlowUV2854 ).a , SmallCascadeSlowFlowHeightBase859);
				float lerpResult1065 = lerp( ( temp_output_398_0 + lerpResult840 ) , ( ( temp_output_410_0 + lerpResult869 ) * clampResult285 ) , clampResult285);
				float temp_output_564_0 = ( ( _BigCascadeWaterTessScale * 0.5 ) * tex2D( _BigCascadeWaterTess, ( BigCascadeSpeedValueMix608 + ( (lerpResult899).xy * float2( 0.05,0.05 ) ) ) ).a );
				float lerpResult874 = lerp( tex2D( _BigCascadeWaterTess, BigCascadeWaterSpeedValueMainFlowUV1893 ).a , tex2D( _BigCascadeWaterTess, BigCascadeWaterSpeedValueMainFlowUV2894 ).a , BigCascadeSlowFlowHeightBase895);
				float lerpResult1066 = lerp( lerpResult1065 , ( ( temp_output_564_0 + lerpResult874 ) * clampResult514 ) , clampResult514);
				float HeightMapMix1367 = lerpResult1066;
				float clampResult1355 = clamp( ( pow( abs( ( HeightMapMix1367 * _FoamWaveHardness ) ) , _FoamWavePower ) * _FoamWaveMultiply ) , 0.0 , 1.0 );
				float4 lerpResult117 = lerp( fetchOpaqueVal65 , float4( _FoamColor , 0.0 ) , ( clampResult1185 * clampResult1355 ));
				float4 lerpResult390 = lerp( fetchOpaqueVal65 , lerpResult117 , temp_output_113_0);
				float lerpResult810 = lerp( pow( abs( ( temp_output_89_0 * _ShalowFalloffMultiply ) ) , ( _ShalowFalloffPower * -1.0 ) ) , 100.0 , ( _BigCascadeTransparency * clampResult514 ));
				float clampResult1186 = clamp( saturate( lerpResult810 ) , 0.0 , 1.0 );
				float4 lerpResult13 = lerp( _DeepColor , _ShalowColor , clampResult1186);
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				float Distance1027 = distance( ase_worldPos , _WorldSpaceCameraPos );
				float clampResult1049 = clamp( ( Distance1027 / _WaveTranslucencyFallOffDistance ) , 0.0 , 1.0 );
				float lerpResult1050 = lerp( ( pow( abs( ( HeightMapMix1367 * _WaveTranslucencyHardness ) ) , _WaveTranslucencyPower ) * _WaveTranslucencyMultiply ) , 0.0 , clampResult1049);
				float clampResult1051 = clamp( lerpResult1050 , 0.0 , 1.0 );
				float Microwaves1052 = clampResult1051;
				float4 lerpResult1069 = lerp( lerpResult13 , _ShalowColor , Microwaves1052);
				float temp_output_458_0 = ( 1.0 - clampResult1186 );
				float4 lerpResult1007 = lerp( lerpResult390 , lerpResult1069 , temp_output_458_0);
				float lerpResult879 = lerp( tex2D( _SmallCascade, SmallCascadeWaterSpeedValueMainFlowUV1860 ).a , tex2D( _SmallCascade, SmallCascadeWaterSpeedValueMainFlowUV2854 ).a , SmallCascadeSlowFlowHeightBase859);
				float2 break1327 = ( _NoiseSpeed * _NoiseTiling );
				float temp_output_1329_0 = ( U1308 * break1327.x );
				float temp_output_1328_0 = ( break1327.y * V1309 );
				float2 appendResult1332 = (float2(temp_output_1329_0 , temp_output_1328_0));
				float2 appendResult1330 = (float2(temp_output_1328_0 , temp_output_1329_0));
				float2 temp_output_1333_0 = (( (float)Direction723 == 1.0 ) ? appendResult1332 :  appendResult1330 );
				float2 uv01337 = packedInput.ase_texcoord6.xy * _NoiseTiling + float2( 0,0 );
				float2 temp_output_1338_0 = ( uv01337 * Globaltiling1010 );
				float lerpResult1346 = lerp( tex2D( _Noise, ( ( temp_output_1333_0 * Refresh11198 ) + temp_output_1338_0 ) ).a , tex2D( _Noise, ( ( temp_output_1333_0 * Refresh21199 ) + temp_output_1338_0 ) ).a , SlowFlowHeightBase835);
				float temp_output_1392_0 = abs( lerpResult1346 );
				float clampResult488 = clamp( ( pow( temp_output_1392_0 , _SmallCascadeNoisePower ) * _SmallCascadeNoiseMultiply ) , 0.0 , 1.0 );
				float lerpResult480 = lerp( 0.0 , lerpResult879 , clampResult488);
				float3 temp_output_320_0 = ( lerpResult480 * _SmallCascadeColor );
				float clampResult322 = clamp( pow( abs( lerpResult879 ) , _SmallCascadeFoamFalloff ) , 0.0 , 1.0 );
				float lerpResult580 = lerp( 0.0 , clampResult322 , clampResult285);
				float4 lerpResult324 = lerp( lerpResult1007 , float4( temp_output_320_0 , 0.0 ) , lerpResult580);
				float lerpResult902 = lerp( tex2D( _BigCascade, BigCascadeWaterSpeedValueMainFlowUV1893 ).a , tex2D( _BigCascade, BigCascadeWaterSpeedValueMainFlowUV2894 ).a , BigCascadeSlowFlowHeightBase895);
				float clampResult807 = clamp( ( pow( temp_output_1392_0 , _BigCascadeNoisePower ) * _BigCascadeNoiseMultiply ) , 0.0 , 1.0 );
				float lerpResult626 = lerp( ( lerpResult902 * 0.5 ) , lerpResult902 , clampResult807);
				float3 temp_output_241_0 = ( lerpResult626 * _BigCascadeColor );
				float clampResult299 = clamp( pow( abs( lerpResult902 ) , _BigCascadeFoamFalloff ) , 0.0 , 1.0 );
				float lerpResult579 = lerp( 0.0 , clampResult299 , clampResult514);
				float4 lerpResult239 = lerp( lerpResult324 , float4( temp_output_241_0 , 0.0 ) , lerpResult579);
				float4 lerpResult773 = lerp( fetchOpaqueVal65 , lerpResult1069 , temp_output_458_0);
				float4 break770 = ( packedInput.ase_color / float4( 1,1,1,1 ) );
				float4 lerpResult757 = lerp( lerpResult239 , lerpResult773 , break770.r);
				float4 lerpResult762 = lerp( lerpResult773 , float4( temp_output_320_0 , 0.0 ) , clampResult322);
				float4 lerpResult758 = lerp( lerpResult757 , lerpResult762 , break770.g);
				float4 lerpResult763 = lerp( lerpResult773 , float4( temp_output_241_0 , 0.0 ) , clampResult299);
				float4 lerpResult756 = lerp( lerpResult758 , lerpResult763 , break770.b);
				
				float3 lerpResult748 = lerp( lerpResult529 , temp_output_24_0 , break770.r);
				float3 lerpResult749 = lerp( lerpResult748 , temp_output_526_0 , break770.g);
				float3 lerpResult750 = lerp( lerpResult749 , temp_output_333_0 , break770.b);
				float3 appendResult1036 = (float3(_FarNormalPower , _FarNormalPower , 1.0));
				float clampResult1033 = clamp( pow( abs( ( Distance1027 / _FarNormalBlendStartDistance ) ) , _FarNormalBlendThreshold ) , 0.0 , 1.0 );
				float3 lerpResult1034 = lerp( lerpResult750 , ( lerpResult750 * appendResult1036 ) , clampResult1033);
				
				float lerpResult994 = lerp( _WaterSpecularFar , _WaterSpecularClose , pow( abs( clampResult1186 ) , _WaterSpecularThreshold ));
				float lerpResult130 = lerp( lerpResult994 , _FoamSpecular , temp_output_114_0);
				float lerpResult585 = lerp( lerpResult130 , _SmallCascadeSpecular , ( lerpResult580 * clampResult285 ));
				float lerpResult587 = lerp( lerpResult585 , _BigCascadeSpecular , ( lerpResult579 * clampResult514 ));
				float lerpResult785 = lerp( lerpResult587 , lerpResult130 , break770.r);
				float lerpResult796 = lerp( lerpResult130 , _SmallCascadeSpecular , lerpResult580);
				float lerpResult786 = lerp( lerpResult785 , lerpResult796 , break770.g);
				float lerpResult797 = lerp( lerpResult130 , _BigCascadeSpecular , lerpResult579);
				float lerpResult787 = lerp( lerpResult786 , lerpResult797 , break770.b);
				float3 temp_cast_21 = (lerpResult787).xxx;
				
				float lerpResult591 = lerp( _WaterSmoothness , _FoamSmoothness , temp_output_114_0);
				float lerpResult593 = lerp( lerpResult591 , _SmallCascadeSmoothness , ( lerpResult580 * clampResult285 ));
				float lerpResult592 = lerp( lerpResult593 , _BigCascadeSmoothness , ( lerpResult579 * clampResult514 ));
				float lerpResult788 = lerp( lerpResult592 , lerpResult591 , break770.r);
				float lerpResult798 = lerp( lerpResult591 , _SmallCascadeSmoothness , lerpResult580);
				float lerpResult789 = lerp( lerpResult788 , lerpResult798 , break770.g);
				float lerpResult799 = lerp( lerpResult591 , _BigCascadeSmoothness , lerpResult579);
				float lerpResult790 = lerp( lerpResult789 , lerpResult799 , break770.b);
				
				float clampResult1171 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1174 = clamp( pow( abs( clampResult1171 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1174 * packedInput.ase_color.a );
				float switchResult1056 = (((ase_vface>0)?(temp_output_779_0):(( _BackfaceAlpha * temp_output_779_0 ))));
				
                surfaceDescription.Albedo = lerpResult756.rgb;
                surfaceDescription.Normal = lerpResult1034;
                surfaceDescription.BentNormal = float3( 0, 0, 1 );
                surfaceDescription.CoatMask = 0;
                surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = temp_cast_21;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult790;
				surfaceDescription.Occlusion = _AOPower;
				surfaceDescription.Alpha = switchResult1056;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = asfloat( uint( 1074012128 ) );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, normalizedWorldViewDir, posInput, surfaceData, builtinData );
				ENCODE_INTO_GBUFFER( surfaceData, builtinData, posInput.positionSS, outGBuffer );
				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

            ENDHLSL
        }

		
        Pass
        {
			
            Name "META"
            Tags { "LightMode"="Meta" }
            Cull Off

            HLSLPROGRAM

			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _DECALS 1
			#define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
			#define _ENABLE_FOG_ON_TRANSPARENT 1
			#define _AMBIENT_OCCLUSION 1
			#define _SURFACE_TYPE_TRANSPARENT 1
			#define _BLENDMODE_ALPHA 1


			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#define SHADERPASS SHADERPASS_LIGHT_TRANSPORT

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define ATTRIBUTES_NEED_TEXCOORD0
			#define ATTRIBUTES_NEED_TEXCOORD1
			#define ATTRIBUTES_NEED_TEXCOORD2
			#define ATTRIBUTES_NEED_COLOR

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
			#define ASE_SRP_VERSION 60900
			#define REQUIRE_OPAQUE_TEXTURE 1


			struct AttributesMesh 
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			sampler2D _SlowWaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _SlowWaterNormal;
			sampler2D _SmallCascadeWaterTess;
			sampler2D _SmallCascadeNormal;
			sampler2D _BigCascadeWaterTess;
			sampler2D _BigCascadeNormal;
			sampler2D _Foam;
			sampler2D _SmallCascade;
			sampler2D _Noise;
			sampler2D _BigCascade;
			CBUFFER_START( UnityPerMaterial )
			float _SlowWaterTessScale;
			float2 _SlowWaterMixSpeed;
			float2 _SlowWaterTiling;
			float _GlobalTiling;
			float _SlowNormalScale;
			float2 _SlowWaterSpeed;
			float2 _SmallCascadeMixSpeed;
			float2 _SmallCascadeTiling;
			float _SmallCascadeNormalScale;
			float2 _SmallCascadeMainSpeed;
			float _SmallCascadeWaterTessScale;
			half _SmallCascadeAngle;
			float _SmallCascadeAngleFalloff;
			half _BigCascadeAngle;
			float _BigCascadeAngleFalloff;
			float _BigCascadeWaterTessScale;
			float2 _BigCascadeMixSpeed;
			float2 _BigCascadeTiling;
			float _BigCascadeNormalScale;
			float2 _BigCascadeMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _Distortion;
			float3 _FoamColor;
			float _FoamDepth;
			float _FoamFalloff;
			float2 _FoamSpeed;
			float2 _FoamTiling;
			float _FoamWaveHardness;
			float _FoamWavePower;
			float _FoamWaveMultiply;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _BigCascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float2 _NoiseSpeed;
			float2 _NoiseTiling;
			float _SmallCascadeNoisePower;
			float _SmallCascadeNoiseMultiply;
			float3 _SmallCascadeColor;
			float _SmallCascadeFoamFalloff;
			float _BigCascadeNoisePower;
			float _BigCascadeNoiseMultiply;
			float3 _BigCascadeColor;
			float _BigCascadeFoamFalloff;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _FoamSpecular;
			float _SmallCascadeSpecular;
			float _BigCascadeSpecular;
			float _WaterSmoothness;
			float _FoamSmoothness;
			float _SmallCascadeSmoothness;
			float _BigCascadeSmoothness;
			half _AOPower;
			float _CleanFalloffMultiply;
			float _CleanFalloffPower;
			float _BackfaceAlpha;
			CBUFFER_END

			inline float4 ASE_ComputeGrabScreenPos( float4 pos )
			{
				#if UNITY_UV_STARTS_AT_TOP
				float scale = -1.0;
				#else
				float scale = 1.0;
				#endif
				float4 o = pos;
				o.y = pos.w * 0.5f;
				o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
				return o;
			}
			
			float4 ASEHDSampleSceneColor(float2 uv, float lod, float exposureMultiplier)
			{
				#if defined(REQUIRE_OPAQUE_TEXTURE) && defined(_SURFACE_TYPE_TRANSPARENT) && defined(SHADERPASS) && (SHADERPASS != SHADERPASS_LIGHT_TRANSPORT)
				return float4( SampleCameraColor(uv, lod) * exposureMultiplier, 1.0 );
				#endif
				return float4(0.0, 0.0, 0.0, 1.0);
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
				surfaceData.baseColor =                 surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion = surfaceDescription.SpecularOcclusion;
				#endif
				surfaceData.ambientOcclusion = surfaceDescription.Occlusion;
				surfaceData.metallic = surfaceDescription.Metallic;
				surfaceData.coatMask = surfaceDescription.CoatMask;

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask = surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness = surfaceDescription.IridescenceThickness;
				#endif
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

				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor = surfaceDescription.Specular;
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif
				float3 normalTS = float3(0.0f, 0.0f, 1.0f);
				normalTS = surfaceDescription.Normal;
				float3 doubleSidedConstants = float3(1.0, 1.0, 1.0);

				GetNormalWS(fragInputs, normalTS, surfaceData.normalWS,doubleSidedConstants);
				bentNormalWS = surfaceData.normalWS;
				surfaceData.geomNormalWS = fragInputs.tangentToWorld[2];

				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness = surfaceDescription.Thickness;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask = surfaceDescription.SubsurfaceMask;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash = surfaceDescription.DiffusionProfile;
				#endif
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy = surfaceDescription.Anisotropy;
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );
				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#else
				surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription,FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				uint3 fadeMaskSeed = asuint( (int3)( V * _ScreenSize.xyx ) ); // Quantize V to _ScreenSize values
				LODDitheringTransition( fadeMaskSeed, unity_LODFade.x );
				#endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, surfaceData, bentNormalWS );

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				InitBuiltinData (posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

				builtinData.emissiveColor = surfaceDescription.Emission;

				builtinData.depthOffset = 0.0;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2( 0.0, 0.0 );
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			CBUFFER_START(UnityMetaPass)
			bool4 unity_MetaVertexControl;
			bool4 unity_MetaFragmentControl;
			CBUFFER_END

			float unity_OneOverOutputBoost;
			float unity_MaxOutputValue;

			PackedVaryingsMeshToPS Vert(AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				int Direction723 = _UVVDirection1UDirection0;
				float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
				float2 uv0613 = inputMesh.uv0.xy * _SlowWaterTiling + float2( 0,0 );
				float Globaltiling1010 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1308 = uv3829.x;
				float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
				float temp_output_1277_0 = ( U1308 * break1276.x );
				float V1309 = uv3829.y;
				float temp_output_1278_0 = ( break1276.y * V1309 );
				float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
				float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
				float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
				float temp_output_816_0 = ( _Time.y * 0.15 );
				float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
				float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
				float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float SlowFlowHeightBase835 = temp_output_834_0;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _SlowNormalScale ) , SlowFlowHeightBase835);
				float temp_output_398_0 = ( ( _SlowWaterTessScale * 0.3 ) * tex2Dlod( _SlowWaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , SlowFlowHeightBase835);
				float temp_output_415_0 = ( temp_output_398_0 + ( _SlowWaterTessScale * lerpResult840 ) );
				float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
				float2 uv0599 = inputMesh.uv0.xy * _SmallCascadeTiling + float2( 0,0 );
				float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
				float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
				float2 SmallCascadeSpeedValueMix433 = panner597;
				float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
				float2 break1270 = temp_output_1220_0;
				float temp_output_1271_0 = ( U1308 * break1270.x );
				float temp_output_1272_0 = ( break1270.y * V1309 );
				float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
				float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
				float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
				float temp_output_990_0 = ( _Time.y * 0.2 );
				float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
				float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
				float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 1.0) ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
				float temp_output_410_0 = ( tex2Dlod( _SmallCascadeWaterTess, float4( ( SmallCascadeSpeedValueMix433 + ( (lerpResult864).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a * ( _SmallCascadeWaterTessScale * 0.4 ) );
				float lerpResult869 = lerp( tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ).a , tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 0.0) ).a , SmallCascadeSlowFlowHeightBase859);
				float temp_output_414_0 = ( temp_output_410_0 + ( lerpResult869 * _SmallCascadeWaterTessScale ) );
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float clampResult259 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
				float clampResult507 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
				float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
				float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
				float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
				float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
				float lerpResult407 = lerp( temp_output_415_0 , ( temp_output_414_0 * clampResult285 ) , clampResult285);
				float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
				float2 uv0605 = inputMesh.uv0.xy * _BigCascadeTiling + float2( 0,0 );
				float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
				float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
				float2 BigCascadeSpeedValueMix608 = panner606;
				float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
				float temp_output_1284_0 = ( U1308 * break1283.x );
				float temp_output_1285_0 = ( break1283.y * V1309 );
				float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
				float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
				float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
				float temp_output_980_0 = ( _Time.y * 0.6 );
				float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
				float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
				float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
				float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
				float temp_output_564_0 = ( ( _BigCascadeWaterTessScale * 0.5 ) * tex2Dlod( _BigCascadeWaterTess, float4( ( BigCascadeSpeedValueMix608 + ( (lerpResult899).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult874 = lerp( tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ).a , tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ).a , BigCascadeSlowFlowHeightBase895);
				float temp_output_565_0 = ( temp_output_564_0 + ( _BigCascadeWaterTessScale * lerpResult874 ) );
				float temp_output_566_0 = ( temp_output_565_0 * clampResult514 );
				float4 break770 = ( inputMesh.color / float4( 1,1,1,1 ) );
				float lerpResult754 = lerp( max( lerpResult407 , temp_output_566_0 ) , temp_output_415_0 , break770.r);
				float lerpResult755 = lerp( lerpResult754 , temp_output_414_0 , break770.g);
				float lerpResult752 = lerp( lerpResult755 , temp_output_565_0 , break770.b);
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsMeshToPS.ase_texcoord = screenPos;
				outputPackedVaryingsMeshToPS.ase_texcoord2.xyz = ase_worldNormal;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				outputPackedVaryingsMeshToPS.ase_texcoord3.xyz = ase_worldPos;
				
				outputPackedVaryingsMeshToPS.ase_texcoord1.xy = inputMesh.uv0.xy;
				outputPackedVaryingsMeshToPS.ase_texcoord1.zw = inputMesh.ase_texcoord3.xy;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsMeshToPS.ase_texcoord2.w = 0;
				outputPackedVaryingsMeshToPS.ase_texcoord3.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( (lerpResult752*1.0 + ( lerpResult752 * -0.5 )) * inputMesh.normalOS );

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float2 uv;

				if (unity_MetaVertexControl.x)
				{
					uv = inputMesh.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				}
				else if (unity_MetaVertexControl.y)
				{
					uv = inputMesh.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				}

				outputPackedVaryingsMeshToPS.positionCS = float4(uv * 2.0 - 1.0, inputMesh.positionOS.z > 0 ? 1.0e-4 : 0.0, 1.0);
				return outputPackedVaryingsMeshToPS;
			}

			float4 Frag(PackedVaryingsMeshToPS packedInput , half ase_vface : VFACE ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = float3(1.0, 1.0, 1.0);

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float4 screenPos = packedInput.ase_texcoord;
				float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( screenPos );
				float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
				float2 appendResult163 = (float2(ase_grabScreenPosNorm.r , ase_grabScreenPosNorm.g));
				int Direction723 = _UVVDirection1UDirection0;
				float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
				float2 uv0613 = packedInput.ase_texcoord1.xy * _SlowWaterTiling + float2( 0,0 );
				float Globaltiling1010 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = packedInput.ase_texcoord1.zw * float2( 1,1 ) + float2( 0,0 );
				float U1308 = uv3829.x;
				float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
				float temp_output_1277_0 = ( U1308 * break1276.x );
				float V1309 = uv3829.y;
				float temp_output_1278_0 = ( break1276.y * V1309 );
				float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
				float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
				float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
				float temp_output_816_0 = ( _Time.y * 0.15 );
				float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
				float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
				float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float SlowFlowHeightBase835 = temp_output_834_0;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, WaterSpeedValueMainFlowUV1830 ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, WaterSpeedValueMainFlowUV2831 ), _SlowNormalScale ) , SlowFlowHeightBase835);
				float2 temp_output_1085_0 = ( (lerpResult838).xy * float2( 0.05,0.05 ) );
				float3 temp_output_24_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( WaterSpeedValueMix516 * _MicroWaveTiling ) + temp_output_1085_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( WaterSpeedValueMix516 + temp_output_1085_0 ) ), _MacroWaveNormalScale ) ) , lerpResult838 );
				float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
				float2 uv0599 = packedInput.ase_texcoord1.xy * _SmallCascadeTiling + float2( 0,0 );
				float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
				float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
				float2 SmallCascadeSpeedValueMix433 = panner597;
				float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
				float2 break1270 = temp_output_1220_0;
				float temp_output_1271_0 = ( U1308 * break1270.x );
				float temp_output_1272_0 = ( break1270.y * V1309 );
				float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
				float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
				float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
				float temp_output_990_0 = ( _Time.y * 0.2 );
				float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
				float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
				float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, SmallCascadeWaterSpeedValueMainFlowUV1860 ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, SmallCascadeWaterSpeedValueMainFlowUV2854 ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
				float2 temp_output_1098_0 = ( (lerpResult864).xy * float2( 0.1,0.1 ) );
				float3 temp_output_526_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( SmallCascadeSpeedValueMix433 * _MicroWaveTiling ) + temp_output_1098_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, ( SmallCascadeSpeedValueMix433 + temp_output_1098_0 ) ), _MacroWaveNormalScale ) ) , lerpResult864 );
				float3 ase_worldNormal = packedInput.ase_texcoord2.xyz;
				float clampResult259 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
				float clampResult507 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
				float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
				float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
				float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
				float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
				float3 lerpResult330 = lerp( temp_output_24_0 , temp_output_526_0 , clampResult285);
				float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
				float2 uv0605 = packedInput.ase_texcoord1.xy * _BigCascadeTiling + float2( 0,0 );
				float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
				float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
				float2 BigCascadeSpeedValueMix608 = panner606;
				float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
				float temp_output_1284_0 = ( U1308 * break1283.x );
				float temp_output_1285_0 = ( break1283.y * V1309 );
				float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
				float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
				float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
				float temp_output_980_0 = ( _Time.y * 0.6 );
				float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
				float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
				float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
				float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, BigCascadeWaterSpeedValueMainFlowUV1893 ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, BigCascadeWaterSpeedValueMainFlowUV2894 ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
				float2 temp_output_1130_0 = ( (lerpResult899).xy * float2( 0.15,0.15 ) );
				float3 temp_output_333_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( BigCascadeSpeedValueMix608 * _MicroWaveTiling ) + temp_output_1130_0 ) ), _MacroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, ( BigCascadeSpeedValueMix608 + temp_output_1130_0 ) ), _MicroWaveNormalScale ) ) , lerpResult899 );
				float3 lerpResult529 = lerp( lerpResult330 , temp_output_333_0 , clampResult514);
				float4 fetchOpaqueVal65 = ASEHDSampleSceneColor(( float3( ( appendResult163 / ase_grabScreenPosNorm.a ) ,  0.0 ) + ( lerpResult529 * _Distortion ) ).xy, 0, GetInverseCurrentExposureMultiplier()*0.001);
				float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
				float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
				float temp_output_113_0 = saturate( pow( abs( ( temp_output_89_0 + _FoamDepth ) ) , _FoamFalloff ) );
				float2 temp_output_1292_0 = ( _FoamSpeed * _FoamTiling );
				float2 break1293 = temp_output_1292_0;
				float temp_output_1295_0 = ( U1308 * break1293.x );
				float temp_output_1294_0 = ( break1293.y * V1309 );
				float2 appendResult1298 = (float2(temp_output_1295_0 , temp_output_1294_0));
				float2 appendResult1296 = (float2(temp_output_1294_0 , temp_output_1295_0));
				float2 temp_output_1302_0 = (( (float)Direction723 == 1.0 ) ? appendResult1298 :  appendResult1296 );
				float2 uv0918 = packedInput.ase_texcoord1.xy * _FoamTiling + float2( 0,0 );
				float2 temp_output_1305_0 = ( uv0918 * Globaltiling1010 );
				float2 FoamCascadeWaterSpeedValueMainFlowUV1932 = ( ( temp_output_1302_0 * Refresh11198 ) + temp_output_1305_0 );
				float2 temp_output_1120_0 = ( (lerpResult529).xy * float2( 0.03,0.03 ) );
				float2 FoamCascadeWaterSpeedValueMainFlowUV2933 = ( ( temp_output_1302_0 * Refresh21199 ) + temp_output_1305_0 );
				float temp_output_930_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float FoamCascadeSlowFlowHeightBase935 = temp_output_930_0;
				float lerpResult937 = lerp( tex2D( _Foam, ( FoamCascadeWaterSpeedValueMainFlowUV1932 + temp_output_1120_0 ) ).a , tex2D( _Foam, ( FoamCascadeWaterSpeedValueMainFlowUV2933 + temp_output_1120_0 ) ).a , FoamCascadeSlowFlowHeightBase935);
				float temp_output_114_0 = ( temp_output_113_0 * lerpResult937 );
				float lerpResult1378 = lerp( temp_output_114_0 , 0.0 , clampResult514);
				float clampResult1185 = clamp( lerpResult1378 , 0.0 , 1.0 );
				float temp_output_398_0 = ( ( _SlowWaterTessScale * 0.3 ) * tex2D( _SlowWaterTesselation, ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ) ).a );
				float lerpResult840 = lerp( tex2D( _SlowWaterTesselation, WaterSpeedValueMainFlowUV1830 ).a , tex2D( _SlowWaterTesselation, WaterSpeedValueMainFlowUV2831 ).a , SlowFlowHeightBase835);
				float temp_output_410_0 = ( tex2D( _SmallCascadeWaterTess, ( SmallCascadeSpeedValueMix433 + ( (lerpResult864).xy * float2( 0.05,0.05 ) ) ) ).a * ( _SmallCascadeWaterTessScale * 0.4 ) );
				float lerpResult869 = lerp( tex2D( _SmallCascadeWaterTess, SmallCascadeWaterSpeedValueMainFlowUV1860 ).a , tex2D( _SmallCascadeWaterTess, SmallCascadeWaterSpeedValueMainFlowUV2854 ).a , SmallCascadeSlowFlowHeightBase859);
				float lerpResult1065 = lerp( ( temp_output_398_0 + lerpResult840 ) , ( ( temp_output_410_0 + lerpResult869 ) * clampResult285 ) , clampResult285);
				float temp_output_564_0 = ( ( _BigCascadeWaterTessScale * 0.5 ) * tex2D( _BigCascadeWaterTess, ( BigCascadeSpeedValueMix608 + ( (lerpResult899).xy * float2( 0.05,0.05 ) ) ) ).a );
				float lerpResult874 = lerp( tex2D( _BigCascadeWaterTess, BigCascadeWaterSpeedValueMainFlowUV1893 ).a , tex2D( _BigCascadeWaterTess, BigCascadeWaterSpeedValueMainFlowUV2894 ).a , BigCascadeSlowFlowHeightBase895);
				float lerpResult1066 = lerp( lerpResult1065 , ( ( temp_output_564_0 + lerpResult874 ) * clampResult514 ) , clampResult514);
				float HeightMapMix1367 = lerpResult1066;
				float clampResult1355 = clamp( ( pow( abs( ( HeightMapMix1367 * _FoamWaveHardness ) ) , _FoamWavePower ) * _FoamWaveMultiply ) , 0.0 , 1.0 );
				float4 lerpResult117 = lerp( fetchOpaqueVal65 , float4( _FoamColor , 0.0 ) , ( clampResult1185 * clampResult1355 ));
				float4 lerpResult390 = lerp( fetchOpaqueVal65 , lerpResult117 , temp_output_113_0);
				float lerpResult810 = lerp( pow( abs( ( temp_output_89_0 * _ShalowFalloffMultiply ) ) , ( _ShalowFalloffPower * -1.0 ) ) , 100.0 , ( _BigCascadeTransparency * clampResult514 ));
				float clampResult1186 = clamp( saturate( lerpResult810 ) , 0.0 , 1.0 );
				float4 lerpResult13 = lerp( _DeepColor , _ShalowColor , clampResult1186);
				float3 ase_worldPos = packedInput.ase_texcoord3.xyz;
				float Distance1027 = distance( ase_worldPos , _WorldSpaceCameraPos );
				float clampResult1049 = clamp( ( Distance1027 / _WaveTranslucencyFallOffDistance ) , 0.0 , 1.0 );
				float lerpResult1050 = lerp( ( pow( abs( ( HeightMapMix1367 * _WaveTranslucencyHardness ) ) , _WaveTranslucencyPower ) * _WaveTranslucencyMultiply ) , 0.0 , clampResult1049);
				float clampResult1051 = clamp( lerpResult1050 , 0.0 , 1.0 );
				float Microwaves1052 = clampResult1051;
				float4 lerpResult1069 = lerp( lerpResult13 , _ShalowColor , Microwaves1052);
				float temp_output_458_0 = ( 1.0 - clampResult1186 );
				float4 lerpResult1007 = lerp( lerpResult390 , lerpResult1069 , temp_output_458_0);
				float lerpResult879 = lerp( tex2D( _SmallCascade, SmallCascadeWaterSpeedValueMainFlowUV1860 ).a , tex2D( _SmallCascade, SmallCascadeWaterSpeedValueMainFlowUV2854 ).a , SmallCascadeSlowFlowHeightBase859);
				float2 break1327 = ( _NoiseSpeed * _NoiseTiling );
				float temp_output_1329_0 = ( U1308 * break1327.x );
				float temp_output_1328_0 = ( break1327.y * V1309 );
				float2 appendResult1332 = (float2(temp_output_1329_0 , temp_output_1328_0));
				float2 appendResult1330 = (float2(temp_output_1328_0 , temp_output_1329_0));
				float2 temp_output_1333_0 = (( (float)Direction723 == 1.0 ) ? appendResult1332 :  appendResult1330 );
				float2 uv01337 = packedInput.ase_texcoord1.xy * _NoiseTiling + float2( 0,0 );
				float2 temp_output_1338_0 = ( uv01337 * Globaltiling1010 );
				float lerpResult1346 = lerp( tex2D( _Noise, ( ( temp_output_1333_0 * Refresh11198 ) + temp_output_1338_0 ) ).a , tex2D( _Noise, ( ( temp_output_1333_0 * Refresh21199 ) + temp_output_1338_0 ) ).a , SlowFlowHeightBase835);
				float temp_output_1392_0 = abs( lerpResult1346 );
				float clampResult488 = clamp( ( pow( temp_output_1392_0 , _SmallCascadeNoisePower ) * _SmallCascadeNoiseMultiply ) , 0.0 , 1.0 );
				float lerpResult480 = lerp( 0.0 , lerpResult879 , clampResult488);
				float3 temp_output_320_0 = ( lerpResult480 * _SmallCascadeColor );
				float clampResult322 = clamp( pow( abs( lerpResult879 ) , _SmallCascadeFoamFalloff ) , 0.0 , 1.0 );
				float lerpResult580 = lerp( 0.0 , clampResult322 , clampResult285);
				float4 lerpResult324 = lerp( lerpResult1007 , float4( temp_output_320_0 , 0.0 ) , lerpResult580);
				float lerpResult902 = lerp( tex2D( _BigCascade, BigCascadeWaterSpeedValueMainFlowUV1893 ).a , tex2D( _BigCascade, BigCascadeWaterSpeedValueMainFlowUV2894 ).a , BigCascadeSlowFlowHeightBase895);
				float clampResult807 = clamp( ( pow( temp_output_1392_0 , _BigCascadeNoisePower ) * _BigCascadeNoiseMultiply ) , 0.0 , 1.0 );
				float lerpResult626 = lerp( ( lerpResult902 * 0.5 ) , lerpResult902 , clampResult807);
				float3 temp_output_241_0 = ( lerpResult626 * _BigCascadeColor );
				float clampResult299 = clamp( pow( abs( lerpResult902 ) , _BigCascadeFoamFalloff ) , 0.0 , 1.0 );
				float lerpResult579 = lerp( 0.0 , clampResult299 , clampResult514);
				float4 lerpResult239 = lerp( lerpResult324 , float4( temp_output_241_0 , 0.0 ) , lerpResult579);
				float4 lerpResult773 = lerp( fetchOpaqueVal65 , lerpResult1069 , temp_output_458_0);
				float4 break770 = ( packedInput.ase_color / float4( 1,1,1,1 ) );
				float4 lerpResult757 = lerp( lerpResult239 , lerpResult773 , break770.r);
				float4 lerpResult762 = lerp( lerpResult773 , float4( temp_output_320_0 , 0.0 ) , clampResult322);
				float4 lerpResult758 = lerp( lerpResult757 , lerpResult762 , break770.g);
				float4 lerpResult763 = lerp( lerpResult773 , float4( temp_output_241_0 , 0.0 ) , clampResult299);
				float4 lerpResult756 = lerp( lerpResult758 , lerpResult763 , break770.b);
				
				float3 lerpResult748 = lerp( lerpResult529 , temp_output_24_0 , break770.r);
				float3 lerpResult749 = lerp( lerpResult748 , temp_output_526_0 , break770.g);
				float3 lerpResult750 = lerp( lerpResult749 , temp_output_333_0 , break770.b);
				float3 appendResult1036 = (float3(_FarNormalPower , _FarNormalPower , 1.0));
				float clampResult1033 = clamp( pow( abs( ( Distance1027 / _FarNormalBlendStartDistance ) ) , _FarNormalBlendThreshold ) , 0.0 , 1.0 );
				float3 lerpResult1034 = lerp( lerpResult750 , ( lerpResult750 * appendResult1036 ) , clampResult1033);
				
				float lerpResult994 = lerp( _WaterSpecularFar , _WaterSpecularClose , pow( abs( clampResult1186 ) , _WaterSpecularThreshold ));
				float lerpResult130 = lerp( lerpResult994 , _FoamSpecular , temp_output_114_0);
				float lerpResult585 = lerp( lerpResult130 , _SmallCascadeSpecular , ( lerpResult580 * clampResult285 ));
				float lerpResult587 = lerp( lerpResult585 , _BigCascadeSpecular , ( lerpResult579 * clampResult514 ));
				float lerpResult785 = lerp( lerpResult587 , lerpResult130 , break770.r);
				float lerpResult796 = lerp( lerpResult130 , _SmallCascadeSpecular , lerpResult580);
				float lerpResult786 = lerp( lerpResult785 , lerpResult796 , break770.g);
				float lerpResult797 = lerp( lerpResult130 , _BigCascadeSpecular , lerpResult579);
				float lerpResult787 = lerp( lerpResult786 , lerpResult797 , break770.b);
				float3 temp_cast_21 = (lerpResult787).xxx;
				
				float lerpResult591 = lerp( _WaterSmoothness , _FoamSmoothness , temp_output_114_0);
				float lerpResult593 = lerp( lerpResult591 , _SmallCascadeSmoothness , ( lerpResult580 * clampResult285 ));
				float lerpResult592 = lerp( lerpResult593 , _BigCascadeSmoothness , ( lerpResult579 * clampResult514 ));
				float lerpResult788 = lerp( lerpResult592 , lerpResult591 , break770.r);
				float lerpResult798 = lerp( lerpResult591 , _SmallCascadeSmoothness , lerpResult580);
				float lerpResult789 = lerp( lerpResult788 , lerpResult798 , break770.g);
				float lerpResult799 = lerp( lerpResult591 , _BigCascadeSmoothness , lerpResult579);
				float lerpResult790 = lerp( lerpResult789 , lerpResult799 , break770.b);
				
				float clampResult1171 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1174 = clamp( pow( abs( clampResult1171 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1174 * packedInput.ase_color.a );
				float switchResult1056 = (((ase_vface>0)?(temp_output_779_0):(( _BackfaceAlpha * temp_output_779_0 ))));
				
				surfaceDescription.Albedo = lerpResult756.rgb;
				surfaceDescription.Normal = lerpResult1034;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = temp_cast_21;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult790;
				surfaceDescription.Occlusion = _AOPower;
				surfaceDescription.Alpha = switchResult1056;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = asfloat( uint( 1074012128 ) );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);
				LightTransportData lightTransportData = GetLightTransportData(surfaceData, builtinData, bsdfData);

				float4 res = float4(0.0, 0.0, 0.0, 1.0);
				if (unity_MetaFragmentControl.x)
				{
					res.rgb = clamp(pow(abs(lightTransportData.diffuseColor), saturate(unity_OneOverOutputBoost)), 0, unity_MaxOutputValue);
				}

				if (unity_MetaFragmentControl.y)
				{
					res.rgb = lightTransportData.emissiveColor;
				}

				return res;
			}

            ENDHLSL
        }

		
		Pass
        {
			
            Name "ShadowCaster"
            Tags { "LightMode"="ShadowCaster" }
			ColorMask 0

            HLSLPROGRAM

			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _DECALS 1
			#define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
			#define _ENABLE_FOG_ON_TRANSPARENT 1
			#define _AMBIENT_OCCLUSION 1
			#define _SURFACE_TYPE_TRANSPARENT 1
			#define _BLENDMODE_ALPHA 1


			#pragma vertex Vert
			#pragma fragment Frag
        
			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

            #define SHADERPASS SHADERPASS_SHADOWS
            #define USE_LEGACY_UNITY_MATRIX_VARIABLES

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"

            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_SRP_VERSION 60900


			struct AttributesMesh 
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			sampler2D _SlowWaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _SlowWaterNormal;
			sampler2D _SmallCascadeWaterTess;
			sampler2D _SmallCascadeNormal;
			sampler2D _BigCascadeWaterTess;
			sampler2D _BigCascadeNormal;
			CBUFFER_START( UnityPerMaterial )
			float _SlowWaterTessScale;
			float2 _SlowWaterMixSpeed;
			float2 _SlowWaterTiling;
			float _GlobalTiling;
			float _SlowNormalScale;
			float2 _SlowWaterSpeed;
			float2 _SmallCascadeMixSpeed;
			float2 _SmallCascadeTiling;
			float _SmallCascadeNormalScale;
			float2 _SmallCascadeMainSpeed;
			float _SmallCascadeWaterTessScale;
			half _SmallCascadeAngle;
			float _SmallCascadeAngleFalloff;
			half _BigCascadeAngle;
			float _BigCascadeAngleFalloff;
			float _BigCascadeWaterTessScale;
			float2 _BigCascadeMixSpeed;
			float2 _BigCascadeTiling;
			float _BigCascadeNormalScale;
			float2 _BigCascadeMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _Distortion;
			float3 _FoamColor;
			float _FoamDepth;
			float _FoamFalloff;
			float2 _FoamSpeed;
			float2 _FoamTiling;
			float _FoamWaveHardness;
			float _FoamWavePower;
			float _FoamWaveMultiply;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _BigCascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float2 _NoiseSpeed;
			float2 _NoiseTiling;
			float _SmallCascadeNoisePower;
			float _SmallCascadeNoiseMultiply;
			float3 _SmallCascadeColor;
			float _SmallCascadeFoamFalloff;
			float _BigCascadeNoisePower;
			float _BigCascadeNoiseMultiply;
			float3 _BigCascadeColor;
			float _BigCascadeFoamFalloff;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _FoamSpecular;
			float _SmallCascadeSpecular;
			float _BigCascadeSpecular;
			float _WaterSmoothness;
			float _FoamSmoothness;
			float _SmallCascadeSmoothness;
			float _BigCascadeSmoothness;
			half _AOPower;
			float _CleanFalloffMultiply;
			float _CleanFalloffPower;
			float _BackfaceAlpha;
			CBUFFER_END

			
			void BuildSurfaceData(FragInputs fragInputs, inout AlphaSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

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

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				float3 normalTS = float3( 0.0f, 0.0f, 1.0f );
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );
				bentNormalWS = surfaceData.normalWS;
				surfaceData.geomNormalWS = fragInputs.tangentToWorld[ 2 ];

				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif

				surfaceData.tangentWS = normalize(fragInputs.tangentToWorld[0].xyz);    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
				surfaceData.tangentWS = Orthonormalize(surfaceData.tangentWS, surfaceData.normalWS);

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#else
				surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

			}

            void GetSurfaceAndBuiltinData(AlphaSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
				#ifdef LOD_FADE_CROSSFADE
				uint3 fadeMaskSeed = asuint( (int3)( V * _ScreenSize.xyx ) );
				LODDitheringTransition( fadeMaskSeed, unity_LODFade.x );
				#endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, surfaceData, bentNormalWS );

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				InitBuiltinData (posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[2], fragInputs.texCoord1, fragInputs.texCoord2, builtinData);

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2( 0.0, 0.0 );
				builtinData.distortionBlur = 0.0;
				#endif

                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }

			PackedVaryingsMeshToPS Vert(AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				int Direction723 = _UVVDirection1UDirection0;
				float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
				float2 uv0613 = inputMesh.ase_texcoord * _SlowWaterTiling + float2( 0,0 );
				float Globaltiling1010 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1308 = uv3829.x;
				float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
				float temp_output_1277_0 = ( U1308 * break1276.x );
				float V1309 = uv3829.y;
				float temp_output_1278_0 = ( break1276.y * V1309 );
				float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
				float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
				float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
				float temp_output_816_0 = ( _Time.y * 0.15 );
				float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
				float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
				float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float SlowFlowHeightBase835 = temp_output_834_0;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _SlowNormalScale ) , SlowFlowHeightBase835);
				float temp_output_398_0 = ( ( _SlowWaterTessScale * 0.3 ) * tex2Dlod( _SlowWaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , SlowFlowHeightBase835);
				float temp_output_415_0 = ( temp_output_398_0 + ( _SlowWaterTessScale * lerpResult840 ) );
				float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
				float2 uv0599 = inputMesh.ase_texcoord.xy * _SmallCascadeTiling + float2( 0,0 );
				float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
				float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
				float2 SmallCascadeSpeedValueMix433 = panner597;
				float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
				float2 break1270 = temp_output_1220_0;
				float temp_output_1271_0 = ( U1308 * break1270.x );
				float temp_output_1272_0 = ( break1270.y * V1309 );
				float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
				float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
				float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
				float temp_output_990_0 = ( _Time.y * 0.2 );
				float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
				float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
				float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 1.0) ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
				float temp_output_410_0 = ( tex2Dlod( _SmallCascadeWaterTess, float4( ( SmallCascadeSpeedValueMix433 + ( (lerpResult864).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a * ( _SmallCascadeWaterTessScale * 0.4 ) );
				float lerpResult869 = lerp( tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ).a , tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 0.0) ).a , SmallCascadeSlowFlowHeightBase859);
				float temp_output_414_0 = ( temp_output_410_0 + ( lerpResult869 * _SmallCascadeWaterTessScale ) );
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float clampResult259 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
				float clampResult507 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
				float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
				float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
				float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
				float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
				float lerpResult407 = lerp( temp_output_415_0 , ( temp_output_414_0 * clampResult285 ) , clampResult285);
				float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
				float2 uv0605 = inputMesh.ase_texcoord.xy * _BigCascadeTiling + float2( 0,0 );
				float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
				float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
				float2 BigCascadeSpeedValueMix608 = panner606;
				float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
				float temp_output_1284_0 = ( U1308 * break1283.x );
				float temp_output_1285_0 = ( break1283.y * V1309 );
				float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
				float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
				float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
				float temp_output_980_0 = ( _Time.y * 0.6 );
				float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
				float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
				float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
				float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
				float temp_output_564_0 = ( ( _BigCascadeWaterTessScale * 0.5 ) * tex2Dlod( _BigCascadeWaterTess, float4( ( BigCascadeSpeedValueMix608 + ( (lerpResult899).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult874 = lerp( tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ).a , tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ).a , BigCascadeSlowFlowHeightBase895);
				float temp_output_565_0 = ( temp_output_564_0 + ( _BigCascadeWaterTessScale * lerpResult874 ) );
				float temp_output_566_0 = ( temp_output_565_0 * clampResult514 );
				float4 break770 = ( inputMesh.ase_color / float4( 1,1,1,1 ) );
				float lerpResult754 = lerp( max( lerpResult407 , temp_output_566_0 ) , temp_output_415_0 , break770.r);
				float lerpResult755 = lerp( lerpResult754 , temp_output_414_0 , break770.g);
				float lerpResult752 = lerp( lerpResult755 , temp_output_565_0 , break770.b);
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsMeshToPS.ase_texcoord1 = screenPos;
				
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( (lerpResult752*1.0 + ( lerpResult752 * -0.5 )) * inputMesh.normalOS );

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS.xyz);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );
				return outputPackedVaryingsMeshToPS;
			}

			void Frag(  PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH) // When only WRITE_MSAA_DEPTH is define and not WRITE_NORMAL_BUFFER it mean we are Unlit and only need depth, but we still have normal buffer binded
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif

						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						, half ase_vface : VFACE
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS  = packedInput.interp00.xyz;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);
				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SurfaceData surfaceData;
				BuiltinData builtinData;
				AlphaSurfaceDescription surfaceDescription = (AlphaSurfaceDescription)0;
				float4 screenPos = packedInput.ase_texcoord1;
				float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
				float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
				float clampResult1171 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1174 = clamp( pow( abs( clampResult1171 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1174 * packedInput.ase_color.a );
				float switchResult1056 = (((ase_vface>0)?(temp_output_779_0):(( _BackfaceAlpha * temp_output_779_0 ))));
				
				surfaceDescription.Alpha = switchResult1056;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.vmesh.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}

            ENDHLSL
        }

			
		Pass
        {
			
            Name "SceneSelectionPass"
            Tags { "LightMode"="SceneSelectionPass" }
            ColorMask 0

            HLSLPROGRAM

			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _DECALS 1
			#define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
			#define _ENABLE_FOG_ON_TRANSPARENT 1
			#define _AMBIENT_OCCLUSION 1
			#define _SURFACE_TYPE_TRANSPARENT 1
			#define _BLENDMODE_ALPHA 1


			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#define SCENESELECTIONPASS

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
			#define ASE_SRP_VERSION 60900


			int _ObjectId;
			int _PassValue;

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			sampler2D _SlowWaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _SlowWaterNormal;
			sampler2D _SmallCascadeWaterTess;
			sampler2D _SmallCascadeNormal;
			sampler2D _BigCascadeWaterTess;
			sampler2D _BigCascadeNormal;
			CBUFFER_START( UnityPerMaterial )
			float _SlowWaterTessScale;
			float2 _SlowWaterMixSpeed;
			float2 _SlowWaterTiling;
			float _GlobalTiling;
			float _SlowNormalScale;
			float2 _SlowWaterSpeed;
			float2 _SmallCascadeMixSpeed;
			float2 _SmallCascadeTiling;
			float _SmallCascadeNormalScale;
			float2 _SmallCascadeMainSpeed;
			float _SmallCascadeWaterTessScale;
			half _SmallCascadeAngle;
			float _SmallCascadeAngleFalloff;
			half _BigCascadeAngle;
			float _BigCascadeAngleFalloff;
			float _BigCascadeWaterTessScale;
			float2 _BigCascadeMixSpeed;
			float2 _BigCascadeTiling;
			float _BigCascadeNormalScale;
			float2 _BigCascadeMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _Distortion;
			float3 _FoamColor;
			float _FoamDepth;
			float _FoamFalloff;
			float2 _FoamSpeed;
			float2 _FoamTiling;
			float _FoamWaveHardness;
			float _FoamWavePower;
			float _FoamWaveMultiply;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _BigCascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float2 _NoiseSpeed;
			float2 _NoiseTiling;
			float _SmallCascadeNoisePower;
			float _SmallCascadeNoiseMultiply;
			float3 _SmallCascadeColor;
			float _SmallCascadeFoamFalloff;
			float _BigCascadeNoisePower;
			float _BigCascadeNoiseMultiply;
			float3 _BigCascadeColor;
			float _BigCascadeFoamFalloff;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _FoamSpecular;
			float _SmallCascadeSpecular;
			float _BigCascadeSpecular;
			float _WaterSmoothness;
			float _FoamSmoothness;
			float _SmallCascadeSmoothness;
			float _BigCascadeSmoothness;
			half _AOPower;
			float _CleanFalloffMultiply;
			float _CleanFalloffPower;
			float _BackfaceAlpha;
			CBUFFER_END

			
			void BuildSurfaceData(FragInputs fragInputs, inout AlphaSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

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

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				float3 normalTS = float3( 0.0f, 0.0f, 1.0f );
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				bentNormalWS = surfaceData.normalWS;
				surfaceData.geomNormalWS = fragInputs.tangentToWorld[ 2 ];

				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#else
				surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif
			}

			void GetSurfaceAndBuiltinData(AlphaSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				uint3 fadeMaskSeed = asuint( (int3)( V * _ScreenSize.xyx ) );
				LODDitheringTransition( fadeMaskSeed, unity_LODFade.x );
				#endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, surfaceData, bentNormalWS );

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2( 0.0, 0.0 );
				builtinData.distortionBlur = 0.0;
				#endif

                PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }

			PackedVaryingsMeshToPS Vert(AttributesMesh inputMesh  )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				int Direction723 = _UVVDirection1UDirection0;
				float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
				float2 uv0613 = inputMesh.ase_texcoord * _SlowWaterTiling + float2( 0,0 );
				float Globaltiling1010 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1308 = uv3829.x;
				float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
				float temp_output_1277_0 = ( U1308 * break1276.x );
				float V1309 = uv3829.y;
				float temp_output_1278_0 = ( break1276.y * V1309 );
				float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
				float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
				float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
				float temp_output_816_0 = ( _Time.y * 0.15 );
				float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
				float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
				float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float SlowFlowHeightBase835 = temp_output_834_0;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _SlowNormalScale ) , SlowFlowHeightBase835);
				float temp_output_398_0 = ( ( _SlowWaterTessScale * 0.3 ) * tex2Dlod( _SlowWaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , SlowFlowHeightBase835);
				float temp_output_415_0 = ( temp_output_398_0 + ( _SlowWaterTessScale * lerpResult840 ) );
				float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
				float2 uv0599 = inputMesh.ase_texcoord.xy * _SmallCascadeTiling + float2( 0,0 );
				float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
				float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
				float2 SmallCascadeSpeedValueMix433 = panner597;
				float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
				float2 break1270 = temp_output_1220_0;
				float temp_output_1271_0 = ( U1308 * break1270.x );
				float temp_output_1272_0 = ( break1270.y * V1309 );
				float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
				float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
				float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
				float temp_output_990_0 = ( _Time.y * 0.2 );
				float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
				float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
				float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 1.0) ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
				float temp_output_410_0 = ( tex2Dlod( _SmallCascadeWaterTess, float4( ( SmallCascadeSpeedValueMix433 + ( (lerpResult864).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a * ( _SmallCascadeWaterTessScale * 0.4 ) );
				float lerpResult869 = lerp( tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ).a , tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 0.0) ).a , SmallCascadeSlowFlowHeightBase859);
				float temp_output_414_0 = ( temp_output_410_0 + ( lerpResult869 * _SmallCascadeWaterTessScale ) );
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float clampResult259 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
				float clampResult507 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
				float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
				float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
				float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
				float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
				float lerpResult407 = lerp( temp_output_415_0 , ( temp_output_414_0 * clampResult285 ) , clampResult285);
				float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
				float2 uv0605 = inputMesh.ase_texcoord.xy * _BigCascadeTiling + float2( 0,0 );
				float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
				float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
				float2 BigCascadeSpeedValueMix608 = panner606;
				float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
				float temp_output_1284_0 = ( U1308 * break1283.x );
				float temp_output_1285_0 = ( break1283.y * V1309 );
				float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
				float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
				float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
				float temp_output_980_0 = ( _Time.y * 0.6 );
				float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
				float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
				float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
				float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
				float temp_output_564_0 = ( ( _BigCascadeWaterTessScale * 0.5 ) * tex2Dlod( _BigCascadeWaterTess, float4( ( BigCascadeSpeedValueMix608 + ( (lerpResult899).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult874 = lerp( tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ).a , tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ).a , BigCascadeSlowFlowHeightBase895);
				float temp_output_565_0 = ( temp_output_564_0 + ( _BigCascadeWaterTessScale * lerpResult874 ) );
				float temp_output_566_0 = ( temp_output_565_0 * clampResult514 );
				float4 break770 = ( inputMesh.ase_color / float4( 1,1,1,1 ) );
				float lerpResult754 = lerp( max( lerpResult407 , temp_output_566_0 ) , temp_output_415_0 , break770.r);
				float lerpResult755 = lerp( lerpResult754 , temp_output_414_0 , break770.g);
				float lerpResult752 = lerp( lerpResult755 , temp_output_565_0 , break770.b);
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsMeshToPS.ase_texcoord = screenPos;
				
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( (lerpResult752*1.0 + ( lerpResult752 * -0.5 )) * inputMesh.normalOS );

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				return outputPackedVaryingsMeshToPS;
			}

			void Frag(  PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif

						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						, half ase_vface : VFACE
					)
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = float3(1.0, 1.0, 1.0); // Avoid the division by 0

				SurfaceData surfaceData;
				BuiltinData builtinData;
				AlphaSurfaceDescription surfaceDescription = (AlphaSurfaceDescription)0;
				float4 screenPos = packedInput.ase_texcoord;
				float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
				float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
				float clampResult1171 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1174 = clamp( pow( abs( clampResult1171 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1174 * packedInput.ase_color.a );
				float switchResult1056 = (((ase_vface>0)?(temp_output_779_0):(( _BackfaceAlpha * temp_output_779_0 ))));
				
				surfaceDescription.Alpha = switchResult1056;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.vmesh.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}

            ENDHLSL
        }

		
        Pass
        {
			
            Name "DepthOnly"
            Tags { "LightMode"="DepthOnly" }

			Stencil
			{
				Ref 0
				WriteMask 48
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


            HLSLPROGRAM

			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _DECALS 1
			#define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
			#define _ENABLE_FOG_ON_TRANSPARENT 1
			#define _AMBIENT_OCCLUSION 1
			#define _SURFACE_TYPE_TRANSPARENT 1
			#define _BLENDMODE_ALPHA 1


			#pragma vertex Vert
			#pragma fragment Frag

			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

            #define SHADERPASS SHADERPASS_DEPTH_ONLY
            #pragma multi_compile _ WRITE_NORMAL_BUFFER
            #pragma multi_compile _ WRITE_MSAA_DEPTH

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

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
        
			#define ASE_SRP_VERSION 60900


			struct AttributesMesh 
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv0 : TEXCOORD0;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 uv3 : TEXCOORD3;
				float4 color : COLOR;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				float4 interp05 : TEXCOORD5;
				float4 interp06 : TEXCOORD6;
				float4 interp07 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			sampler2D _SlowWaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _SlowWaterNormal;
			sampler2D _SmallCascadeWaterTess;
			sampler2D _SmallCascadeNormal;
			sampler2D _BigCascadeWaterTess;
			sampler2D _BigCascadeNormal;
			sampler2D _Foam;
			sampler2D _SmallCascade;
			sampler2D _BigCascade;
			CBUFFER_START( UnityPerMaterial )
			float _SlowWaterTessScale;
			float2 _SlowWaterMixSpeed;
			float2 _SlowWaterTiling;
			float _GlobalTiling;
			float _SlowNormalScale;
			float2 _SlowWaterSpeed;
			float2 _SmallCascadeMixSpeed;
			float2 _SmallCascadeTiling;
			float _SmallCascadeNormalScale;
			float2 _SmallCascadeMainSpeed;
			float _SmallCascadeWaterTessScale;
			half _SmallCascadeAngle;
			float _SmallCascadeAngleFalloff;
			half _BigCascadeAngle;
			float _BigCascadeAngleFalloff;
			float _BigCascadeWaterTessScale;
			float2 _BigCascadeMixSpeed;
			float2 _BigCascadeTiling;
			float _BigCascadeNormalScale;
			float2 _BigCascadeMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _Distortion;
			float3 _FoamColor;
			float _FoamDepth;
			float _FoamFalloff;
			float2 _FoamSpeed;
			float2 _FoamTiling;
			float _FoamWaveHardness;
			float _FoamWavePower;
			float _FoamWaveMultiply;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _BigCascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float2 _NoiseSpeed;
			float2 _NoiseTiling;
			float _SmallCascadeNoisePower;
			float _SmallCascadeNoiseMultiply;
			float3 _SmallCascadeColor;
			float _SmallCascadeFoamFalloff;
			float _BigCascadeNoisePower;
			float _BigCascadeNoiseMultiply;
			float3 _BigCascadeColor;
			float _BigCascadeFoamFalloff;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _FoamSpecular;
			float _SmallCascadeSpecular;
			float _BigCascadeSpecular;
			float _WaterSmoothness;
			float _FoamSmoothness;
			float _SmallCascadeSmoothness;
			float _BigCascadeSmoothness;
			half _AOPower;
			float _CleanFalloffMultiply;
			float _CleanFalloffPower;
			float _BackfaceAlpha;
			CBUFFER_END

			
			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
				surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;

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

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				float3 normalTS = float3( 0.0f, 0.0f, 1.0f );
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );
				bentNormalWS = surfaceData.normalWS;
				surfaceData.geomNormalWS = fragInputs.tangentToWorld[ 2 ];

				#ifdef _HAS_REFRACTION
				surfaceData.transmittanceMask = 1.0 - surfaceDescription.Alpha;
				surfaceDescription.Alpha = 1.0;
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#else
				surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

			}

            void GetSurfaceAndBuiltinData(SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
            {
				#ifdef LOD_FADE_CROSSFADE
				uint3 fadeMaskSeed = asuint( (int3)( V * _ScreenSize.xyx ) );
				LODDitheringTransition( fadeMaskSeed, unity_LODFade.x );
				#endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, surfaceData, bentNormalWS );

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2( 0.0, 0.0 );
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
            }

			PackedVaryingsMeshToPS Vert(AttributesMesh inputMesh )
			{
				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				int Direction723 = _UVVDirection1UDirection0;
				float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
				float2 uv0613 = inputMesh.uv0.xy * _SlowWaterTiling + float2( 0,0 );
				float Globaltiling1010 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.uv3.xy * float2( 1,1 ) + float2( 0,0 );
				float U1308 = uv3829.x;
				float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
				float temp_output_1277_0 = ( U1308 * break1276.x );
				float V1309 = uv3829.y;
				float temp_output_1278_0 = ( break1276.y * V1309 );
				float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
				float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
				float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
				float temp_output_816_0 = ( _Time.y * 0.15 );
				float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
				float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
				float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float SlowFlowHeightBase835 = temp_output_834_0;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _SlowNormalScale ) , SlowFlowHeightBase835);
				float temp_output_398_0 = ( ( _SlowWaterTessScale * 0.3 ) * tex2Dlod( _SlowWaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , SlowFlowHeightBase835);
				float temp_output_415_0 = ( temp_output_398_0 + ( _SlowWaterTessScale * lerpResult840 ) );
				float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
				float2 uv0599 = inputMesh.uv0.xy * _SmallCascadeTiling + float2( 0,0 );
				float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
				float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
				float2 SmallCascadeSpeedValueMix433 = panner597;
				float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
				float2 break1270 = temp_output_1220_0;
				float temp_output_1271_0 = ( U1308 * break1270.x );
				float temp_output_1272_0 = ( break1270.y * V1309 );
				float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
				float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
				float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
				float temp_output_990_0 = ( _Time.y * 0.2 );
				float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
				float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
				float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 1.0) ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
				float temp_output_410_0 = ( tex2Dlod( _SmallCascadeWaterTess, float4( ( SmallCascadeSpeedValueMix433 + ( (lerpResult864).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a * ( _SmallCascadeWaterTessScale * 0.4 ) );
				float lerpResult869 = lerp( tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ).a , tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 0.0) ).a , SmallCascadeSlowFlowHeightBase859);
				float temp_output_414_0 = ( temp_output_410_0 + ( lerpResult869 * _SmallCascadeWaterTessScale ) );
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float clampResult259 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
				float clampResult507 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
				float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
				float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
				float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
				float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
				float lerpResult407 = lerp( temp_output_415_0 , ( temp_output_414_0 * clampResult285 ) , clampResult285);
				float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
				float2 uv0605 = inputMesh.uv0.xy * _BigCascadeTiling + float2( 0,0 );
				float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
				float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
				float2 BigCascadeSpeedValueMix608 = panner606;
				float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
				float temp_output_1284_0 = ( U1308 * break1283.x );
				float temp_output_1285_0 = ( break1283.y * V1309 );
				float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
				float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
				float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
				float temp_output_980_0 = ( _Time.y * 0.6 );
				float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
				float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
				float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
				float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
				float temp_output_564_0 = ( ( _BigCascadeWaterTessScale * 0.5 ) * tex2Dlod( _BigCascadeWaterTess, float4( ( BigCascadeSpeedValueMix608 + ( (lerpResult899).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult874 = lerp( tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ).a , tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ).a , BigCascadeSlowFlowHeightBase895);
				float temp_output_565_0 = ( temp_output_564_0 + ( _BigCascadeWaterTessScale * lerpResult874 ) );
				float temp_output_566_0 = ( temp_output_565_0 * clampResult514 );
				float4 break770 = ( inputMesh.color / float4( 1,1,1,1 ) );
				float lerpResult754 = lerp( max( lerpResult407 , temp_output_566_0 ) , temp_output_415_0 , break770.r);
				float lerpResult755 = lerp( lerpResult754 , temp_output_414_0 , break770.g);
				float lerpResult752 = lerp( lerpResult755 , temp_output_565_0 , break770.b);
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsMeshToPS.ase_texcoord8 = screenPos;
				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( (lerpResult752*1.0 + ( lerpResult752 * -0.5 )) * inputMesh.normalOS );

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv0;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp05.xyzw = inputMesh.uv2;
				outputPackedVaryingsMeshToPS.interp06.xyzw = inputMesh.uv3;
				outputPackedVaryingsMeshToPS.interp07.xyzw = inputMesh.color;
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );
				return outputPackedVaryingsMeshToPS;
			}

			void Frag(  PackedVaryingsMeshToPS packedInput
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target0
							#ifdef WRITE_MSAA_DEPTH
							, out float1 depthColor : SV_Target1
							#endif
						#elif defined(WRITE_MSAA_DEPTH) // When only WRITE_MSAA_DEPTH is define and not WRITE_NORMAL_BUFFER it mean we are Unlit and only need depth, but we still have normal buffer binded
						, out float4 outNormalBuffer : SV_Target0
						, out float1 depthColor : SV_Target1
						#elif defined(SCENESELECTIONPASS)
						, out float4 outColor : SV_Target0
						#endif

						#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
						#endif
						, half ase_vface : VFACE
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );

				float3 positionRWS  = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;
				float4 texCoord0 = packedInput.interp03.xyzw;
				float4 texCoord1 = packedInput.interp04.xyzw;
				float4 texCoord2 = packedInput.interp05.xyzw;
				float4 texCoord3 = packedInput.interp06.xyzw;
				float4 vertexColor = packedInput.interp07.xyzw;


				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord0 = texCoord0;
				input.texCoord1 = texCoord1;
				input.texCoord2 = texCoord2;
				input.texCoord3 = texCoord3;
				input.color = vertexColor;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SurfaceData surfaceData;
				BuiltinData builtinData;
				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
				float4 screenPos = packedInput.ase_texcoord8;
				float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
				float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
				float temp_output_113_0 = saturate( pow( abs( ( temp_output_89_0 + _FoamDepth ) ) , _FoamFalloff ) );
				int Direction723 = _UVVDirection1UDirection0;
				float2 uv3829 = packedInput.interp06.xy * float2( 1,1 ) + float2( 0,0 );
				float U1308 = uv3829.x;
				float2 temp_output_1292_0 = ( _FoamSpeed * _FoamTiling );
				float2 break1293 = temp_output_1292_0;
				float temp_output_1295_0 = ( U1308 * break1293.x );
				float V1309 = uv3829.y;
				float temp_output_1294_0 = ( break1293.y * V1309 );
				float2 appendResult1298 = (float2(temp_output_1295_0 , temp_output_1294_0));
				float2 appendResult1296 = (float2(temp_output_1294_0 , temp_output_1295_0));
				float2 temp_output_1302_0 = (( (float)Direction723 == 1.0 ) ? appendResult1298 :  appendResult1296 );
				float temp_output_816_0 = ( _Time.y * 0.15 );
				float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 uv0918 = packedInput.interp03.xy * _FoamTiling + float2( 0,0 );
				float Globaltiling1010 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1305_0 = ( uv0918 * Globaltiling1010 );
				float2 FoamCascadeWaterSpeedValueMainFlowUV1932 = ( ( temp_output_1302_0 * Refresh11198 ) + temp_output_1305_0 );
				float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
				float2 uv0613 = packedInput.interp03.xy * _SlowWaterTiling + float2( 0,0 );
				float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
				float temp_output_1277_0 = ( U1308 * break1276.x );
				float temp_output_1278_0 = ( break1276.y * V1309 );
				float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
				float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
				float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
				float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
				float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float SlowFlowHeightBase835 = temp_output_834_0;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, WaterSpeedValueMainFlowUV1830 ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, WaterSpeedValueMainFlowUV2831 ), _SlowNormalScale ) , SlowFlowHeightBase835);
				float2 temp_output_1085_0 = ( (lerpResult838).xy * float2( 0.05,0.05 ) );
				float3 temp_output_24_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( WaterSpeedValueMix516 * _MicroWaveTiling ) + temp_output_1085_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( WaterSpeedValueMix516 + temp_output_1085_0 ) ), _MacroWaveNormalScale ) ) , lerpResult838 );
				float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
				float2 uv0599 = packedInput.interp03.xy * _SmallCascadeTiling + float2( 0,0 );
				float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
				float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
				float2 SmallCascadeSpeedValueMix433 = panner597;
				float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
				float2 break1270 = temp_output_1220_0;
				float temp_output_1271_0 = ( U1308 * break1270.x );
				float temp_output_1272_0 = ( break1270.y * V1309 );
				float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
				float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
				float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
				float temp_output_990_0 = ( _Time.y * 0.2 );
				float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
				float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
				float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, SmallCascadeWaterSpeedValueMainFlowUV1860 ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, SmallCascadeWaterSpeedValueMainFlowUV2854 ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
				float2 temp_output_1098_0 = ( (lerpResult864).xy * float2( 0.1,0.1 ) );
				float3 temp_output_526_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( SmallCascadeSpeedValueMix433 * _MicroWaveTiling ) + temp_output_1098_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, ( SmallCascadeSpeedValueMix433 + temp_output_1098_0 ) ), _MacroWaveNormalScale ) ) , lerpResult864 );
				float clampResult259 = clamp( normalWS.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
				float clampResult507 = clamp( normalWS.y , 0.0 , 1.0 );
				float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
				float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
				float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
				float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
				float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
				float3 lerpResult330 = lerp( temp_output_24_0 , temp_output_526_0 , clampResult285);
				float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
				float2 uv0605 = packedInput.interp03.xy * _BigCascadeTiling + float2( 0,0 );
				float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
				float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
				float2 BigCascadeSpeedValueMix608 = panner606;
				float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
				float temp_output_1284_0 = ( U1308 * break1283.x );
				float temp_output_1285_0 = ( break1283.y * V1309 );
				float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
				float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
				float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
				float temp_output_980_0 = ( _Time.y * 0.6 );
				float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
				float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
				float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
				float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, BigCascadeWaterSpeedValueMainFlowUV1893 ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, BigCascadeWaterSpeedValueMainFlowUV2894 ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
				float2 temp_output_1130_0 = ( (lerpResult899).xy * float2( 0.15,0.15 ) );
				float3 temp_output_333_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( BigCascadeSpeedValueMix608 * _MicroWaveTiling ) + temp_output_1130_0 ) ), _MacroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, ( BigCascadeSpeedValueMix608 + temp_output_1130_0 ) ), _MicroWaveNormalScale ) ) , lerpResult899 );
				float3 lerpResult529 = lerp( lerpResult330 , temp_output_333_0 , clampResult514);
				float2 temp_output_1120_0 = ( (lerpResult529).xy * float2( 0.03,0.03 ) );
				float2 FoamCascadeWaterSpeedValueMainFlowUV2933 = ( ( temp_output_1302_0 * Refresh21199 ) + temp_output_1305_0 );
				float temp_output_930_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float FoamCascadeSlowFlowHeightBase935 = temp_output_930_0;
				float lerpResult937 = lerp( tex2D( _Foam, ( FoamCascadeWaterSpeedValueMainFlowUV1932 + temp_output_1120_0 ) ).a , tex2D( _Foam, ( FoamCascadeWaterSpeedValueMainFlowUV2933 + temp_output_1120_0 ) ).a , FoamCascadeSlowFlowHeightBase935);
				float temp_output_114_0 = ( temp_output_113_0 * lerpResult937 );
				float lerpResult591 = lerp( _WaterSmoothness , _FoamSmoothness , temp_output_114_0);
				float lerpResult879 = lerp( tex2D( _SmallCascade, SmallCascadeWaterSpeedValueMainFlowUV1860 ).a , tex2D( _SmallCascade, SmallCascadeWaterSpeedValueMainFlowUV2854 ).a , SmallCascadeSlowFlowHeightBase859);
				float clampResult322 = clamp( pow( abs( lerpResult879 ) , _SmallCascadeFoamFalloff ) , 0.0 , 1.0 );
				float lerpResult580 = lerp( 0.0 , clampResult322 , clampResult285);
				float lerpResult593 = lerp( lerpResult591 , _SmallCascadeSmoothness , ( lerpResult580 * clampResult285 ));
				float lerpResult902 = lerp( tex2D( _BigCascade, BigCascadeWaterSpeedValueMainFlowUV1893 ).a , tex2D( _BigCascade, BigCascadeWaterSpeedValueMainFlowUV2894 ).a , BigCascadeSlowFlowHeightBase895);
				float clampResult299 = clamp( pow( abs( lerpResult902 ) , _BigCascadeFoamFalloff ) , 0.0 , 1.0 );
				float lerpResult579 = lerp( 0.0 , clampResult299 , clampResult514);
				float lerpResult592 = lerp( lerpResult593 , _BigCascadeSmoothness , ( lerpResult579 * clampResult514 ));
				float4 break770 = ( packedInput.interp07 / float4( 1,1,1,1 ) );
				float lerpResult788 = lerp( lerpResult592 , lerpResult591 , break770.r);
				float lerpResult798 = lerp( lerpResult591 , _SmallCascadeSmoothness , lerpResult580);
				float lerpResult789 = lerp( lerpResult788 , lerpResult798 , break770.g);
				float lerpResult799 = lerp( lerpResult591 , _BigCascadeSmoothness , lerpResult579);
				float lerpResult790 = lerp( lerpResult789 , lerpResult799 , break770.b);
				
				float clampResult1171 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1174 = clamp( pow( abs( clampResult1171 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1174 * packedInput.interp07.a );
				float switchResult1056 = (((ase_vface>0)?(temp_output_779_0):(( _BackfaceAlpha * temp_output_779_0 ))));
				
				surfaceDescription.Smoothness = lerpResult790;
				surfaceDescription.Alpha = switchResult1056;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}

            ENDHLSL
        }

		
		Pass
        {
			
            Name "Motion Vectors"
            Tags { "LightMode"="MotionVectors" }
			Stencil
			{
				Ref 128
				WriteMask 128
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


            HLSLPROGRAM

			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _DECALS 1
			#define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
			#define _ENABLE_FOG_ON_TRANSPARENT 1
			#define _AMBIENT_OCCLUSION 1
			#define _SURFACE_TYPE_TRANSPARENT 1
			#define _BLENDMODE_ALPHA 1


			#pragma vertex Vert
			#pragma fragment Frag
        
			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

            #define SHADERPASS SHADERPASS_VELOCITY
            #pragma multi_compile _ WRITE_NORMAL_BUFFER
            #pragma multi_compile _ WRITE_MSAA_DEPTH

            #define VARYINGS_NEED_POSITION_WS

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_SRP_VERSION 60900

        		
			struct AttributesMesh 
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 positionRWS;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct AttributesPass
			{
				float3 previousPositionOS : TEXCOORD4;
			};

			struct VaryingsPassToPS
			{
				float4 positionCS;
				float4 previousPositionCS;
			};

			#define VARYINGS_NEED_PASS
			struct VaryingsToPS
			{
				VaryingsMeshToPS vmesh;
				VaryingsPassToPS vpass;
			};

			struct PackedVaryingsToPS
			{
				float4 vmeshPositionCS : SV_Position;
				float3 vmeshInterp00 : TEXCOORD0;
				float3 vpassInterpolators0 : TEXCOORD1;
				float3 vpassInterpolators1 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			sampler2D _SlowWaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _SlowWaterNormal;
			sampler2D _SmallCascadeWaterTess;
			sampler2D _SmallCascadeNormal;
			sampler2D _BigCascadeWaterTess;
			sampler2D _BigCascadeNormal;
			sampler2D _Foam;
			sampler2D _SmallCascade;
			sampler2D _BigCascade;
			CBUFFER_START( UnityPerMaterial )
			float _SlowWaterTessScale;
			float2 _SlowWaterMixSpeed;
			float2 _SlowWaterTiling;
			float _GlobalTiling;
			float _SlowNormalScale;
			float2 _SlowWaterSpeed;
			float2 _SmallCascadeMixSpeed;
			float2 _SmallCascadeTiling;
			float _SmallCascadeNormalScale;
			float2 _SmallCascadeMainSpeed;
			float _SmallCascadeWaterTessScale;
			half _SmallCascadeAngle;
			float _SmallCascadeAngleFalloff;
			half _BigCascadeAngle;
			float _BigCascadeAngleFalloff;
			float _BigCascadeWaterTessScale;
			float2 _BigCascadeMixSpeed;
			float2 _BigCascadeTiling;
			float _BigCascadeNormalScale;
			float2 _BigCascadeMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _Distortion;
			float3 _FoamColor;
			float _FoamDepth;
			float _FoamFalloff;
			float2 _FoamSpeed;
			float2 _FoamTiling;
			float _FoamWaveHardness;
			float _FoamWavePower;
			float _FoamWaveMultiply;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _BigCascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float2 _NoiseSpeed;
			float2 _NoiseTiling;
			float _SmallCascadeNoisePower;
			float _SmallCascadeNoiseMultiply;
			float3 _SmallCascadeColor;
			float _SmallCascadeFoamFalloff;
			float _BigCascadeNoisePower;
			float _BigCascadeNoiseMultiply;
			float3 _BigCascadeColor;
			float _BigCascadeFoamFalloff;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _FoamSpecular;
			float _SmallCascadeSpecular;
			float _BigCascadeSpecular;
			float _WaterSmoothness;
			float _FoamSmoothness;
			float _SmallCascadeSmoothness;
			float _BigCascadeSmoothness;
			half _AOPower;
			float _CleanFalloffMultiply;
			float _CleanFalloffPower;
			float _BackfaceAlpha;
			CBUFFER_END

			
			void BuildSurfaceData(FragInputs fragInputs, inout SmoothSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;

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

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				float3 normalTS = float3( 0.0f, 0.0f, 1.0f );
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );
				bentNormalWS = surfaceData.normalWS;
				surfaceData.geomNormalWS = fragInputs.tangentToWorld[ 2 ];

				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif

				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#else
				surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

			}

			void GetSurfaceAndBuiltinData( SmoothSurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				uint3 fadeMaskSeed = asuint( (int3)( V * _ScreenSize.xyx ) );
				LODDitheringTransition( fadeMaskSeed, unity_LODFade.x );
				#endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif
				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, surfaceData, bentNormalWS );

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2( 0.0, 0.0 );
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			VaryingsPassToPS UnpackVaryingsPassToPS(PackedVaryingsToPS input)
			{
				VaryingsPassToPS output;
				output.positionCS = float4(input.vpassInterpolators0.xy, 0.0, input.vpassInterpolators0.z);
				output.previousPositionCS = float4(input.vpassInterpolators1.xy, 0.0, input.vpassInterpolators1.z);

				return output;
			}

			float3 TransformPreviousObjectToWorldNormal(float3 normalOS)
			{
				#ifdef UNITY_ASSUME_UNIFORM_SCALING
				return normalize( mul( (float3x3)unity_MatrixPreviousM, normalOS ) );
				#else
				return normalize( mul( normalOS, (float3x3)unity_MatrixPreviousMI ) );
				#endif
			}

			float3 TransformPreviousObjectToWorld(float3 positionOS)
			{
				float4x4 previousModelMatrix = ApplyCameraTranslationToMatrix(unity_MatrixPreviousM);
				return mul(previousModelMatrix, float4(positionOS, 1.0)).xyz;
			}

			void VelocityPositionZBias(VaryingsToPS input)
			{
				#if defined(UNITY_REVERSED_Z)
				input.vmesh.positionCS.z -= unity_MotionVectorsParams.z * input.vmesh.positionCS.w;
				#else
				input.vmesh.positionCS.z += unity_MotionVectorsParams.z * input.vmesh.positionCS.w;
				#endif
			}

			PackedVaryingsToPS Vert(AttributesMesh inputMesh,
									AttributesPass inputPass
									 )
			{
				PackedVaryingsToPS outputPackedVaryingsToPS;
				VaryingsToPS varyingsType;
				VaryingsMeshToPS outputVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsToPS);

				int Direction723 = _UVVDirection1UDirection0;
				float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
				float2 uv0613 = inputMesh.ase_texcoord * _SlowWaterTiling + float2( 0,0 );
				float Globaltiling1010 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1308 = uv3829.x;
				float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
				float temp_output_1277_0 = ( U1308 * break1276.x );
				float V1309 = uv3829.y;
				float temp_output_1278_0 = ( break1276.y * V1309 );
				float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
				float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
				float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
				float temp_output_816_0 = ( _Time.y * 0.15 );
				float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
				float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
				float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float SlowFlowHeightBase835 = temp_output_834_0;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _SlowNormalScale ) , SlowFlowHeightBase835);
				float temp_output_398_0 = ( ( _SlowWaterTessScale * 0.3 ) * tex2Dlod( _SlowWaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , SlowFlowHeightBase835);
				float temp_output_415_0 = ( temp_output_398_0 + ( _SlowWaterTessScale * lerpResult840 ) );
				float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
				float2 uv0599 = inputMesh.ase_texcoord.xy * _SmallCascadeTiling + float2( 0,0 );
				float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
				float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
				float2 SmallCascadeSpeedValueMix433 = panner597;
				float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
				float2 break1270 = temp_output_1220_0;
				float temp_output_1271_0 = ( U1308 * break1270.x );
				float temp_output_1272_0 = ( break1270.y * V1309 );
				float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
				float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
				float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
				float temp_output_990_0 = ( _Time.y * 0.2 );
				float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
				float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
				float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 1.0) ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
				float temp_output_410_0 = ( tex2Dlod( _SmallCascadeWaterTess, float4( ( SmallCascadeSpeedValueMix433 + ( (lerpResult864).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a * ( _SmallCascadeWaterTessScale * 0.4 ) );
				float lerpResult869 = lerp( tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ).a , tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 0.0) ).a , SmallCascadeSlowFlowHeightBase859);
				float temp_output_414_0 = ( temp_output_410_0 + ( lerpResult869 * _SmallCascadeWaterTessScale ) );
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float clampResult259 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
				float clampResult507 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
				float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
				float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
				float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
				float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
				float lerpResult407 = lerp( temp_output_415_0 , ( temp_output_414_0 * clampResult285 ) , clampResult285);
				float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
				float2 uv0605 = inputMesh.ase_texcoord.xy * _BigCascadeTiling + float2( 0,0 );
				float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
				float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
				float2 BigCascadeSpeedValueMix608 = panner606;
				float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
				float temp_output_1284_0 = ( U1308 * break1283.x );
				float temp_output_1285_0 = ( break1283.y * V1309 );
				float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
				float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
				float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
				float temp_output_980_0 = ( _Time.y * 0.6 );
				float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
				float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
				float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
				float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
				float temp_output_564_0 = ( ( _BigCascadeWaterTessScale * 0.5 ) * tex2Dlod( _BigCascadeWaterTess, float4( ( BigCascadeSpeedValueMix608 + ( (lerpResult899).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult874 = lerp( tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ).a , tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ).a , BigCascadeSlowFlowHeightBase895);
				float temp_output_565_0 = ( temp_output_564_0 + ( _BigCascadeWaterTessScale * lerpResult874 ) );
				float temp_output_566_0 = ( temp_output_565_0 * clampResult514 );
				float4 break770 = ( inputMesh.ase_color / float4( 1,1,1,1 ) );
				float lerpResult754 = lerp( max( lerpResult407 , temp_output_566_0 ) , temp_output_415_0 , break770.r);
				float lerpResult755 = lerp( lerpResult754 , temp_output_414_0 , break770.g);
				float lerpResult752 = lerp( lerpResult755 , temp_output_565_0 , break770.b);
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsToPS.ase_texcoord3 = screenPos;
				outputPackedVaryingsToPS.ase_texcoord5.xyz = ase_worldNormal;
				
				outputPackedVaryingsToPS.ase_texcoord4.xy = inputMesh.ase_texcoord3.xy;
				outputPackedVaryingsToPS.ase_texcoord4.zw = inputMesh.ase_texcoord.xy;
				outputPackedVaryingsToPS.ase_color = inputMesh.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsToPS.ase_texcoord5.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( (lerpResult752*1.0 + ( lerpResult752 * -0.5 )) * inputMesh.normalOS );

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);

				outputVaryingsMeshToPS.positionRWS = positionRWS;
				outputVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);

				varyingsType.vmesh = outputVaryingsMeshToPS;

				VelocityPositionZBias(varyingsType);
				varyingsType.vpass.positionCS = mul(_NonJitteredViewProjMatrix, float4(varyingsType.vmesh.positionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					varyingsType.vpass.previousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0; // Skin or morph target
					float3 previousPositionRWS = TransformPreviousObjectToWorld(hasDeformation ? inputPass.previousPositionOS : inputMesh.positionOS);
					varyingsType.vpass.previousPositionCS = mul(_PrevViewProjMatrix, float4(previousPositionRWS, 1.0));
				}

				outputPackedVaryingsToPS.vmeshPositionCS = varyingsType.vmesh.positionCS;
				outputPackedVaryingsToPS.vmeshInterp00.xyz = varyingsType.vmesh.positionRWS;

				outputPackedVaryingsToPS.vpassInterpolators0 = float3(varyingsType.vpass.positionCS.xyw);
				outputPackedVaryingsToPS.vpassInterpolators1 = float3(varyingsType.vpass.previousPositionCS.xyw);
				return outputPackedVaryingsToPS;
			}

			void Frag(  PackedVaryingsToPS packedInput
						, out float4 outMotionVector : SV_Target0
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target1
							#ifdef WRITE_MSAA_DEPTH
								, out float1 depthColor : SV_Target2
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target1
						, out float1 depthColor : SV_Target2
						#endif

						#ifdef _DEPTHOFFSET_ON
							, out float outputDepth : SV_Depth
						#endif
						, half ase_vface : VFACE
					)
			{

				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.vmeshPositionCS;
				input.positionRWS = packedInput.vmeshInterp00.xyz;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SurfaceData surfaceData;
				BuiltinData builtinData;

				SmoothSurfaceDescription surfaceDescription = (SmoothSurfaceDescription)0;
                float4 screenPos = packedInput.ase_texcoord3;
                float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
                float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
                float temp_output_113_0 = saturate( pow( abs( ( temp_output_89_0 + _FoamDepth ) ) , _FoamFalloff ) );
                int Direction723 = _UVVDirection1UDirection0;
                float2 uv3829 = packedInput.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
                float U1308 = uv3829.x;
                float2 temp_output_1292_0 = ( _FoamSpeed * _FoamTiling );
                float2 break1293 = temp_output_1292_0;
                float temp_output_1295_0 = ( U1308 * break1293.x );
                float V1309 = uv3829.y;
                float temp_output_1294_0 = ( break1293.y * V1309 );
                float2 appendResult1298 = (float2(temp_output_1295_0 , temp_output_1294_0));
                float2 appendResult1296 = (float2(temp_output_1294_0 , temp_output_1295_0));
                float2 temp_output_1302_0 = (( (float)Direction723 == 1.0 ) ? appendResult1298 :  appendResult1296 );
                float temp_output_816_0 = ( _Time.y * 0.15 );
                float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
                float2 uv0918 = packedInput.ase_texcoord4.zw * _FoamTiling + float2( 0,0 );
                float Globaltiling1010 = ( 1.0 / _GlobalTiling );
                float2 temp_output_1305_0 = ( uv0918 * Globaltiling1010 );
                float2 FoamCascadeWaterSpeedValueMainFlowUV1932 = ( ( temp_output_1302_0 * Refresh11198 ) + temp_output_1305_0 );
                float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
                float2 uv0613 = packedInput.ase_texcoord4.zw * _SlowWaterTiling + float2( 0,0 );
                float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
                float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
                float2 WaterSpeedValueMix516 = panner612;
                float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
                float temp_output_1277_0 = ( U1308 * break1276.x );
                float temp_output_1278_0 = ( break1276.y * V1309 );
                float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
                float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
                float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
                float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
                float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
                float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
                float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
                float SlowFlowHeightBase835 = temp_output_834_0;
                float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, WaterSpeedValueMainFlowUV1830 ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, WaterSpeedValueMainFlowUV2831 ), _SlowNormalScale ) , SlowFlowHeightBase835);
                float2 temp_output_1085_0 = ( (lerpResult838).xy * float2( 0.05,0.05 ) );
                float3 temp_output_24_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( WaterSpeedValueMix516 * _MicroWaveTiling ) + temp_output_1085_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( WaterSpeedValueMix516 + temp_output_1085_0 ) ), _MacroWaveNormalScale ) ) , lerpResult838 );
                float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
                float2 uv0599 = packedInput.ase_texcoord4.zw * _SmallCascadeTiling + float2( 0,0 );
                float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
                float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
                float2 SmallCascadeSpeedValueMix433 = panner597;
                float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
                float2 break1270 = temp_output_1220_0;
                float temp_output_1271_0 = ( U1308 * break1270.x );
                float temp_output_1272_0 = ( break1270.y * V1309 );
                float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
                float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
                float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
                float temp_output_990_0 = ( _Time.y * 0.2 );
                float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
                float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
                float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
                float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
                float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
                float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, SmallCascadeWaterSpeedValueMainFlowUV1860 ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, SmallCascadeWaterSpeedValueMainFlowUV2854 ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
                float2 temp_output_1098_0 = ( (lerpResult864).xy * float2( 0.1,0.1 ) );
                float3 temp_output_526_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( SmallCascadeSpeedValueMix433 * _MicroWaveTiling ) + temp_output_1098_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, ( SmallCascadeSpeedValueMix433 + temp_output_1098_0 ) ), _MacroWaveNormalScale ) ) , lerpResult864 );
                float3 ase_worldNormal = packedInput.ase_texcoord5.xyz;
                float clampResult259 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
                float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
                float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
                float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
                float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
                float clampResult507 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
                float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
                float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
                float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
                float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
                float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
                float3 lerpResult330 = lerp( temp_output_24_0 , temp_output_526_0 , clampResult285);
                float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
                float2 uv0605 = packedInput.ase_texcoord4.zw * _BigCascadeTiling + float2( 0,0 );
                float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
                float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
                float2 BigCascadeSpeedValueMix608 = panner606;
                float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
                float temp_output_1284_0 = ( U1308 * break1283.x );
                float temp_output_1285_0 = ( break1283.y * V1309 );
                float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
                float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
                float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
                float temp_output_980_0 = ( _Time.y * 0.6 );
                float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
                float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
                float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
                float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
                float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
                float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, BigCascadeWaterSpeedValueMainFlowUV1893 ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, BigCascadeWaterSpeedValueMainFlowUV2894 ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
                float2 temp_output_1130_0 = ( (lerpResult899).xy * float2( 0.15,0.15 ) );
                float3 temp_output_333_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( BigCascadeSpeedValueMix608 * _MicroWaveTiling ) + temp_output_1130_0 ) ), _MacroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, ( BigCascadeSpeedValueMix608 + temp_output_1130_0 ) ), _MicroWaveNormalScale ) ) , lerpResult899 );
                float3 lerpResult529 = lerp( lerpResult330 , temp_output_333_0 , clampResult514);
                float2 temp_output_1120_0 = ( (lerpResult529).xy * float2( 0.03,0.03 ) );
                float2 FoamCascadeWaterSpeedValueMainFlowUV2933 = ( ( temp_output_1302_0 * Refresh21199 ) + temp_output_1305_0 );
                float temp_output_930_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
                float FoamCascadeSlowFlowHeightBase935 = temp_output_930_0;
                float lerpResult937 = lerp( tex2D( _Foam, ( FoamCascadeWaterSpeedValueMainFlowUV1932 + temp_output_1120_0 ) ).a , tex2D( _Foam, ( FoamCascadeWaterSpeedValueMainFlowUV2933 + temp_output_1120_0 ) ).a , FoamCascadeSlowFlowHeightBase935);
                float temp_output_114_0 = ( temp_output_113_0 * lerpResult937 );
                float lerpResult591 = lerp( _WaterSmoothness , _FoamSmoothness , temp_output_114_0);
                float lerpResult879 = lerp( tex2D( _SmallCascade, SmallCascadeWaterSpeedValueMainFlowUV1860 ).a , tex2D( _SmallCascade, SmallCascadeWaterSpeedValueMainFlowUV2854 ).a , SmallCascadeSlowFlowHeightBase859);
                float clampResult322 = clamp( pow( abs( lerpResult879 ) , _SmallCascadeFoamFalloff ) , 0.0 , 1.0 );
                float lerpResult580 = lerp( 0.0 , clampResult322 , clampResult285);
                float lerpResult593 = lerp( lerpResult591 , _SmallCascadeSmoothness , ( lerpResult580 * clampResult285 ));
                float lerpResult902 = lerp( tex2D( _BigCascade, BigCascadeWaterSpeedValueMainFlowUV1893 ).a , tex2D( _BigCascade, BigCascadeWaterSpeedValueMainFlowUV2894 ).a , BigCascadeSlowFlowHeightBase895);
                float clampResult299 = clamp( pow( abs( lerpResult902 ) , _BigCascadeFoamFalloff ) , 0.0 , 1.0 );
                float lerpResult579 = lerp( 0.0 , clampResult299 , clampResult514);
                float lerpResult592 = lerp( lerpResult593 , _BigCascadeSmoothness , ( lerpResult579 * clampResult514 ));
                float4 break770 = ( packedInput.ase_color / float4( 1,1,1,1 ) );
                float lerpResult788 = lerp( lerpResult592 , lerpResult591 , break770.r);
                float lerpResult798 = lerp( lerpResult591 , _SmallCascadeSmoothness , lerpResult580);
                float lerpResult789 = lerp( lerpResult788 , lerpResult798 , break770.g);
                float lerpResult799 = lerp( lerpResult591 , _BigCascadeSmoothness , lerpResult579);
                float lerpResult790 = lerp( lerpResult789 , lerpResult799 , break770.b);
                
                float clampResult1171 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
                float clampResult1174 = clamp( pow( abs( clampResult1171 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
                float temp_output_779_0 = ( clampResult1174 * packedInput.ase_color.a );
                float switchResult1056 = (((ase_vface>0)?(temp_output_779_0):(( _BackfaceAlpha * temp_output_779_0 ))));
                
				surfaceDescription.Smoothness = lerpResult790;
				surfaceDescription.Alpha = switchResult1056;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData( surfaceDescription, input, V, posInput, surfaceData, builtinData );

				VaryingsPassToPS inputPass = UnpackVaryingsPassToPS( packedInput );
				#ifdef _DEPTHOFFSET_ON
				inputPass.positionCS.w += builtinData.depthOffset;
				inputPass.previousPositionCS.w += builtinData.depthOffset;
				#endif

				float2 motionVector = CalculateMotionVector( inputPass.positionCS, inputPass.previousPositionCS );
				EncodeMotionVector( motionVector * 0.5, outMotionVector );

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if( forceNoMotion )
					outMotionVector = float4( 2.0, 0.0, 0.0, 0.0 );

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );

				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.vmeshPositionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.vmeshPositionCS.z;
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

            ENDHLSL
        }

		
		Pass
        {
			
            Name "Forward"
            Tags { "LightMode"="Forward" }
			Stencil
			{
				Ref 2
				WriteMask 7
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			ZTest LEqual

            HLSLPROGRAM
			#define _MATERIAL_FEATURE_SPECULAR_COLOR 1
			#define _DECALS 1
			#define _BLENDMODE_PRESERVE_SPECULAR_LIGHTING 1
			#define _ENABLE_FOG_ON_TRANSPARENT 1
			#define _AMBIENT_OCCLUSION 1
			#define _SURFACE_TYPE_TRANSPARENT 1
			#define _BLENDMODE_ALPHA 1

			#pragma vertex Vert
			#pragma fragment Frag
        
			//#define UNITY_MATERIAL_LIT

			#if defined(_MATERIAL_FEATURE_SUBSURFACE_SCATTERING) && !defined(_SURFACE_TYPE_TRANSPARENT)
			#define OUTPUT_SPLIT_LIGHTING
			#endif

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/NormalSurfaceGradient.hlsl"

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"

            #define SHADERPASS SHADERPASS_FORWARD
            #pragma multi_compile _ LIGHTMAP_ON
            #pragma multi_compile _ DIRLIGHTMAP_COMBINED
            #pragma multi_compile _ DYNAMICLIGHTMAP_ON
            #pragma multi_compile _ SHADOWS_SHADOWMASK
            #pragma multi_compile DECALS_OFF DECALS_3RT DECALS_4RT
			#define USE_CLUSTERED_LIGHTLIST
            #pragma multi_compile SHADOW_LOW SHADOW_MEDIUM SHADOW_HIGH

            #define ATTRIBUTES_NEED_NORMAL
            #define ATTRIBUTES_NEED_TANGENT
            #define ATTRIBUTES_NEED_TEXCOORD1
            #define ATTRIBUTES_NEED_TEXCOORD2
            #define VARYINGS_NEED_POSITION_WS
            #define VARYINGS_NEED_TANGENT_TO_WORLD
            #define VARYINGS_NEED_TEXCOORD1
            #define VARYINGS_NEED_TEXCOORD2


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
            #include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Lighting.hlsl"

			#define HAS_LIGHTLOOP

			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/Lit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoop.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Decal/DecalUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Lit/LitDecalData.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"
				
			#define ASE_SRP_VERSION 60900
			#define REQUIRE_OPAQUE_TEXTURE 1

        
			int _ObjectId;
			int _PassValue;

			struct AttributesMesh
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryingsMeshToPS
			{
				float4 positionCS : SV_Position;
				float3 interp00 : TEXCOORD0;
				float3 interp01 : TEXCOORD1;
				float4 interp02 : TEXCOORD2;
				float4 interp03 : TEXCOORD3;
				float4 interp04 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			sampler2D _SlowWaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _SlowWaterNormal;
			sampler2D _SmallCascadeWaterTess;
			sampler2D _SmallCascadeNormal;
			sampler2D _BigCascadeWaterTess;
			sampler2D _BigCascadeNormal;
			sampler2D _Foam;
			sampler2D _SmallCascade;
			sampler2D _Noise;
			sampler2D _BigCascade;
			CBUFFER_START( UnityPerMaterial )
			float _SlowWaterTessScale;
			float2 _SlowWaterMixSpeed;
			float2 _SlowWaterTiling;
			float _GlobalTiling;
			float _SlowNormalScale;
			float2 _SlowWaterSpeed;
			float2 _SmallCascadeMixSpeed;
			float2 _SmallCascadeTiling;
			float _SmallCascadeNormalScale;
			float2 _SmallCascadeMainSpeed;
			float _SmallCascadeWaterTessScale;
			half _SmallCascadeAngle;
			float _SmallCascadeAngleFalloff;
			half _BigCascadeAngle;
			float _BigCascadeAngleFalloff;
			float _BigCascadeWaterTessScale;
			float2 _BigCascadeMixSpeed;
			float2 _BigCascadeTiling;
			float _BigCascadeNormalScale;
			float2 _BigCascadeMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _Distortion;
			float3 _FoamColor;
			float _FoamDepth;
			float _FoamFalloff;
			float2 _FoamSpeed;
			float2 _FoamTiling;
			float _FoamWaveHardness;
			float _FoamWavePower;
			float _FoamWaveMultiply;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _BigCascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float2 _NoiseSpeed;
			float2 _NoiseTiling;
			float _SmallCascadeNoisePower;
			float _SmallCascadeNoiseMultiply;
			float3 _SmallCascadeColor;
			float _SmallCascadeFoamFalloff;
			float _BigCascadeNoisePower;
			float _BigCascadeNoiseMultiply;
			float3 _BigCascadeColor;
			float _BigCascadeFoamFalloff;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _FoamSpecular;
			float _SmallCascadeSpecular;
			float _BigCascadeSpecular;
			float _WaterSmoothness;
			float _FoamSmoothness;
			float _SmallCascadeSmoothness;
			float _BigCascadeSmoothness;
			half _AOPower;
			float _CleanFalloffMultiply;
			float _CleanFalloffPower;
			float _BackfaceAlpha;
			CBUFFER_END

			inline float4 ASE_ComputeGrabScreenPos( float4 pos )
			{
				#if UNITY_UV_STARTS_AT_TOP
				float scale = -1.0;
				#else
				float scale = 1.0;
				#endif
				float4 o = pos;
				o.y = pos.w * 0.5f;
				o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
				return o;
			}
			
			float4 ASEHDSampleSceneColor(float2 uv, float lod, float exposureMultiplier)
			{
				#if defined(REQUIRE_OPAQUE_TEXTURE) && defined(_SURFACE_TYPE_TRANSPARENT) && defined(SHADERPASS) && (SHADERPASS != SHADERPASS_LIGHT_TRANSPORT)
				return float4( SampleCameraColor(uv, lod) * exposureMultiplier, 1.0 );
				#endif
				return float4(0.0, 0.0, 0.0, 1.0);
			}
			

			void BuildSurfaceData(FragInputs fragInputs, inout GlobalSurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData, out float3 bentNormalWS)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);

				surfaceData.baseColor =                 surfaceDescription.Albedo;
				surfaceData.perceptualSmoothness =      surfaceDescription.Smoothness;
				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceData.specularOcclusion = surfaceDescription.SpecularOcclusion;
				#endif
				surfaceData.ambientOcclusion = surfaceDescription.Occlusion;
				surfaceData.metallic = surfaceDescription.Metallic;
				surfaceData.coatMask = surfaceDescription.CoatMask;

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.iridescenceMask = surfaceDescription.IridescenceMask;
				surfaceData.iridescenceThickness = surfaceDescription.IridescenceThickness;
				#endif
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

				#ifdef ASE_LIT_CLEAR_COAT
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_CLEAR_COAT;
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_IRIDESCENCE;
				#endif
				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceData.specularColor = surfaceDescription.Specular;
				surfaceData.materialFeatures |= MATERIALFEATUREFLAGS_LIT_SPECULAR_COLOR;
				#endif

				#if defined (_MATERIAL_FEATURE_SPECULAR_COLOR) && defined (_ENERGY_CONSERVING_SPECULAR)
				surfaceData.baseColor *= ( 1.0 - Max3( surfaceData.specularColor.r, surfaceData.specularColor.g, surfaceData.specularColor.b ) );
				#endif

				float3 normalTS = float3( 0.0f, 0.0f, 1.0f );
				normalTS = surfaceDescription.Normal;
				float3 doubleSidedConstants = float3( 1.0, 1.0, 1.0 );
				GetNormalWS( fragInputs, normalTS, surfaceData.normalWS, doubleSidedConstants );

				bentNormalWS = surfaceData.normalWS;
				surfaceData.geomNormalWS = fragInputs.tangentToWorld[ 2 ];

				#ifdef ASE_BENT_NORMAL
				GetNormalWS( fragInputs, surfaceDescription.BentNormal, bentNormalWS, doubleSidedConstants );
				#endif

				#ifdef _HAS_REFRACTION
				if( _EnableSSRefraction )
				{
					surfaceData.ior = surfaceDescription.RefractionIndex;
					surfaceData.transmittanceColor = surfaceDescription.RefractionColor;
					surfaceData.atDistance = surfaceDescription.RefractionDistance;

					surfaceData.transmittanceMask = ( 1.0 - surfaceDescription.Alpha );
					surfaceDescription.Alpha = 1.0;
				}
				else
				{
					surfaceData.ior = 1.0;
					surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
					surfaceData.atDistance = 1.0;
					surfaceData.transmittanceMask = 0.0;
					surfaceDescription.Alpha = 1.0;
				}
				#else
				surfaceData.ior = 1.0;
				surfaceData.transmittanceColor = float3( 1.0, 1.0, 1.0 );
				surfaceData.atDistance = 1.0;
				surfaceData.transmittanceMask = 0.0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceData.thickness = surfaceDescription.Thickness;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceData.subsurfaceMask = surfaceDescription.SubsurfaceMask;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceData.diffusionProfileHash = surfaceDescription.DiffusionProfile;
				#endif
				surfaceData.tangentWS = normalize( fragInputs.tangentToWorld[ 0 ].xyz );    // The tangent is not normalize in tangentToWorld for mikkt. TODO: Check if it expected that we normalize with Morten. Tag: SURFACE_GRADIENT
				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceData.anisotropy = surfaceDescription.Anisotropy;
				surfaceData.tangentWS = TransformTangentToWorld( surfaceDescription.Tangent, fragInputs.tangentToWorld );
				#endif
				surfaceData.tangentWS = Orthonormalize( surfaceData.tangentWS, surfaceData.normalWS );

				#if defined(_SPECULAR_OCCLUSION_CUSTOM)
				#elif defined(_SPECULAR_OCCLUSION_FROM_AO_BENT_NORMAL)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromBentAO( V, bentNormalWS, surfaceData.normalWS, surfaceData.ambientOcclusion, PerceptualSmoothnessToPerceptualRoughness( surfaceData.perceptualSmoothness ) );
				#elif defined(_AMBIENT_OCCLUSION) && defined(_SPECULAR_OCCLUSION_FROM_AO)
				surfaceData.specularOcclusion = GetSpecularOcclusionFromAmbientOcclusion( ClampNdotV( dot( surfaceData.normalWS, V ) ), surfaceData.ambientOcclusion, PerceptualSmoothnessToRoughness( surfaceData.perceptualSmoothness ) );
				#else
				surfaceData.specularOcclusion = 1.0;
				#endif
				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceData.perceptualSmoothness = GeometricNormalFiltering( surfaceData.perceptualSmoothness, fragInputs.tangentToWorld[ 2 ], surfaceDescription.SpecularAAScreenSpaceVariance, surfaceDescription.SpecularAAThreshold );
				#endif

			}

			void GetSurfaceAndBuiltinData(GlobalSurfaceDescription surfaceDescription,FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#ifdef LOD_FADE_CROSSFADE
				uint3 fadeMaskSeed = asuint( (int3)( V * _ScreenSize.xyx ) );
				LODDitheringTransition( fadeMaskSeed, unity_LODFade.x );
				#endif

				#ifdef _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
				builtinData.depthOffset = surfaceDescription.DepthOffset;
				ApplyDepthOffsetPositionInput( V, surfaceDescription.DepthOffset, GetViewForwardDir(), GetWorldToHClipMatrix(), posInput );
				#endif

				float3 bentNormalWS;
				BuildSurfaceData( fragInputs, surfaceDescription, V, surfaceData, bentNormalWS );

				#if HAVE_DECALS
				if( _EnableDecals )
				{
					DecalSurfaceData decalSurfaceData = GetDecalSurfaceData( posInput, surfaceDescription.Alpha );
					ApplyDecalToSurfaceData( decalSurfaceData, surfaceData );
				}
				#endif

				InitBuiltinData( posInput, surfaceDescription.Alpha, bentNormalWS, -fragInputs.tangentToWorld[ 2 ], fragInputs.texCoord1, fragInputs.texCoord2, builtinData );

				builtinData.emissiveColor = surfaceDescription.Emission;

				#if (SHADERPASS == SHADERPASS_DISTORTION)
				builtinData.distortion = surfaceDescription.Distortion;
				builtinData.distortionBlur = surfaceDescription.DistortionBlur;
				#else
				builtinData.distortion = float2( 0.0, 0.0 );
				builtinData.distortionBlur = 0.0;
				#endif

				PostInitBuiltinData(V, posInput, surfaceData, builtinData);
			}

			PackedVaryingsMeshToPS Vert(AttributesMesh inputMesh )
			{

				PackedVaryingsMeshToPS outputPackedVaryingsMeshToPS;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, outputPackedVaryingsMeshToPS);

				int Direction723 = _UVVDirection1UDirection0;
				float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
				float2 uv0613 = inputMesh.ase_texcoord * _SlowWaterTiling + float2( 0,0 );
				float Globaltiling1010 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1308 = uv3829.x;
				float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
				float temp_output_1277_0 = ( U1308 * break1276.x );
				float V1309 = uv3829.y;
				float temp_output_1278_0 = ( break1276.y * V1309 );
				float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
				float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
				float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
				float temp_output_816_0 = ( _Time.y * 0.15 );
				float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
				float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
				float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float SlowFlowHeightBase835 = temp_output_834_0;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SlowWaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _SlowNormalScale ) , SlowFlowHeightBase835);
				float temp_output_398_0 = ( ( _SlowWaterTessScale * 0.3 ) * tex2Dlod( _SlowWaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _SlowWaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , SlowFlowHeightBase835);
				float temp_output_415_0 = ( temp_output_398_0 + ( _SlowWaterTessScale * lerpResult840 ) );
				float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
				float2 uv0599 = inputMesh.ase_texcoord.xy * _SmallCascadeTiling + float2( 0,0 );
				float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
				float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
				float2 SmallCascadeSpeedValueMix433 = panner597;
				float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
				float2 break1270 = temp_output_1220_0;
				float temp_output_1271_0 = ( U1308 * break1270.x );
				float temp_output_1272_0 = ( break1270.y * V1309 );
				float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
				float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
				float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
				float temp_output_990_0 = ( _Time.y * 0.2 );
				float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
				float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
				float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _SmallCascadeNormal, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 1.0) ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
				float temp_output_410_0 = ( tex2Dlod( _SmallCascadeWaterTess, float4( ( SmallCascadeSpeedValueMix433 + ( (lerpResult864).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a * ( _SmallCascadeWaterTessScale * 0.4 ) );
				float lerpResult869 = lerp( tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV1860, 0, 1.0) ).a , tex2Dlod( _SmallCascadeWaterTess, float4( SmallCascadeWaterSpeedValueMainFlowUV2854, 0, 0.0) ).a , SmallCascadeSlowFlowHeightBase859);
				float temp_output_414_0 = ( temp_output_410_0 + ( lerpResult869 * _SmallCascadeWaterTessScale ) );
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				float clampResult259 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
				float clampResult507 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
				float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
				float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
				float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
				float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
				float lerpResult407 = lerp( temp_output_415_0 , ( temp_output_414_0 * clampResult285 ) , clampResult285);
				float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
				float2 uv0605 = inputMesh.ase_texcoord.xy * _BigCascadeTiling + float2( 0,0 );
				float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
				float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
				float2 BigCascadeSpeedValueMix608 = panner606;
				float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
				float temp_output_1284_0 = ( U1308 * break1283.x );
				float temp_output_1285_0 = ( break1283.y * V1309 );
				float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
				float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
				float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
				float temp_output_980_0 = ( _Time.y * 0.6 );
				float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
				float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
				float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
				float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _BigCascadeNormal, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
				float temp_output_564_0 = ( ( _BigCascadeWaterTessScale * 0.5 ) * tex2Dlod( _BigCascadeWaterTess, float4( ( BigCascadeSpeedValueMix608 + ( (lerpResult899).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult874 = lerp( tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV1893, 0, 1.0) ).a , tex2Dlod( _BigCascadeWaterTess, float4( BigCascadeWaterSpeedValueMainFlowUV2894, 0, 1.0) ).a , BigCascadeSlowFlowHeightBase895);
				float temp_output_565_0 = ( temp_output_564_0 + ( _BigCascadeWaterTessScale * lerpResult874 ) );
				float temp_output_566_0 = ( temp_output_565_0 * clampResult514 );
				float4 break770 = ( inputMesh.ase_color / float4( 1,1,1,1 ) );
				float lerpResult754 = lerp( max( lerpResult407 , temp_output_566_0 ) , temp_output_415_0 , break770.r);
				float lerpResult755 = lerp( lerpResult754 , temp_output_414_0 , break770.g);
				float lerpResult752 = lerp( lerpResult755 , temp_output_565_0 , break770.b);
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsMeshToPS.ase_texcoord5 = screenPos;
				
				outputPackedVaryingsMeshToPS.ase_texcoord6.xy = inputMesh.ase_texcoord.xy;
				outputPackedVaryingsMeshToPS.ase_texcoord6.zw = inputMesh.ase_texcoord3.xy;
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( (lerpResult752*1.0 + ( lerpResult752 * -0.5 )) * inputMesh.normalOS );

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS =  inputMesh.normalOS ;
				inputMesh.tangentOS =  inputMesh.tangentOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);
				float4 tangentWS = float4(TransformObjectToWorldDir(inputMesh.tangentOS.xyz), inputMesh.tangentOS.w);

				outputPackedVaryingsMeshToPS.positionCS = TransformWorldToHClip(positionRWS);
				outputPackedVaryingsMeshToPS.interp00.xyz = positionRWS;
				outputPackedVaryingsMeshToPS.interp01.xyz = normalWS;
				outputPackedVaryingsMeshToPS.interp02.xyzw = tangentWS;
				outputPackedVaryingsMeshToPS.interp03.xyzw = inputMesh.uv1;
				outputPackedVaryingsMeshToPS.interp04.xyzw = inputMesh.uv2;
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( outputPackedVaryingsMeshToPS );
				return outputPackedVaryingsMeshToPS;
			}

			void Frag(PackedVaryingsMeshToPS packedInput,
					#ifdef OUTPUT_SPLIT_LIGHTING
						out float4 outColor : SV_Target0,
						out float4 outDiffuseLighting : SV_Target1,
						OUTPUT_SSSBUFFER(outSSSBuffer)
					#else
						out float4 outColor : SV_Target0
					#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
						, out float4 outMotionVec : SV_Target1
					#endif
					#endif
					#ifdef _DEPTHOFFSET_ON
						, out float outputDepth : SV_Depth
					#endif
					, half ase_vface : VFACE
						)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				float3 positionRWS = packedInput.interp00.xyz;
				float3 normalWS = packedInput.interp01.xyz;
				float4 tangentWS = packedInput.interp02.xyzw;

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;
				input.tangentToWorld = BuildTangentToWorld(tangentWS, normalWS);
				input.texCoord1 = packedInput.interp03.xyzw;
				input.texCoord2 = packedInput.interp04.xyzw;

				input.positionSS.xy = _OffScreenRendering > 0 ? (input.positionSS.xy * _OffScreenDownsampleFactor) : input.positionSS.xy;

				uint2 tileIndex = uint2(input.positionSS.xy) / GetTileSize ();
				
				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS.xyz, tileIndex );

				float3 normalizedWorldViewDir = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GlobalSurfaceDescription surfaceDescription = (GlobalSurfaceDescription)0;
				float4 screenPos = packedInput.ase_texcoord5;
				float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( screenPos );
				float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
				float2 appendResult163 = (float2(ase_grabScreenPosNorm.r , ase_grabScreenPosNorm.g));
				int Direction723 = _UVVDirection1UDirection0;
				float2 appendResult706 = (float2(_SlowWaterMixSpeed.y , _SlowWaterMixSpeed.x));
				float2 uv0613 = packedInput.ase_texcoord6.xy * _SlowWaterTiling + float2( 0,0 );
				float Globaltiling1010 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1214_0 = ( uv0613 * Globaltiling1010 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SlowWaterMixSpeed :  appendResult706 ) + temp_output_1214_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = packedInput.ase_texcoord6.zw * float2( 1,1 ) + float2( 0,0 );
				float U1308 = uv3829.x;
				float2 break1276 = ( _SlowWaterSpeed * _SlowWaterTiling );
				float temp_output_1277_0 = ( U1308 * break1276.x );
				float V1309 = uv3829.y;
				float temp_output_1278_0 = ( break1276.y * V1309 );
				float2 appendResult1280 = (float2(temp_output_1277_0 , temp_output_1278_0));
				float2 appendResult1279 = (float2(temp_output_1278_0 , temp_output_1277_0));
				float2 temp_output_1274_0 = (( (float)Direction723 == 1.0 ) ? appendResult1280 :  appendResult1279 );
				float temp_output_816_0 = ( _Time.y * 0.15 );
				float Refresh11198 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1274_0 * Refresh11198 ) + temp_output_1214_0 );
				float Refresh21199 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1274_0 * Refresh21199 ) + temp_output_1214_0 );
				float temp_output_834_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float SlowFlowHeightBase835 = temp_output_834_0;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, WaterSpeedValueMainFlowUV1830 ), _SlowNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, WaterSpeedValueMainFlowUV2831 ), _SlowNormalScale ) , SlowFlowHeightBase835);
				float2 temp_output_1085_0 = ( (lerpResult838).xy * float2( 0.05,0.05 ) );
				float3 temp_output_24_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( WaterSpeedValueMix516 * _MicroWaveTiling ) + temp_output_1085_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( WaterSpeedValueMix516 + temp_output_1085_0 ) ), _MacroWaveNormalScale ) ) , lerpResult838 );
				float2 appendResult709 = (float2(_SmallCascadeMixSpeed.y , _SmallCascadeMixSpeed.x));
				float2 uv0599 = packedInput.ase_texcoord6.xy * _SmallCascadeTiling + float2( 0,0 );
				float2 temp_output_1233_0 = ( uv0599 * Globaltiling1010 );
				float2 panner597 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _SmallCascadeMixSpeed :  appendResult709 ) + temp_output_1233_0);
				float2 SmallCascadeSpeedValueMix433 = panner597;
				float2 temp_output_1220_0 = ( _SmallCascadeMainSpeed * _SmallCascadeTiling );
				float2 break1270 = temp_output_1220_0;
				float temp_output_1271_0 = ( U1308 * break1270.x );
				float temp_output_1272_0 = ( break1270.y * V1309 );
				float2 appendResult1269 = (float2(temp_output_1271_0 , temp_output_1272_0));
				float2 appendResult1273 = (float2(temp_output_1272_0 , temp_output_1271_0));
				float2 temp_output_1240_0 = (( (float)Direction723 == 1.0 ) ? appendResult1269 :  appendResult1273 );
				float temp_output_990_0 = ( _Time.y * 0.2 );
				float Refresh1v21237 = frac( ( temp_output_990_0 + 1.0 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV1860 = ( ( temp_output_1240_0 * Refresh1v21237 ) + temp_output_1233_0 );
				float Refresh2v21238 = frac( ( temp_output_990_0 + 0.5 ) );
				float2 SmallCascadeWaterSpeedValueMainFlowUV2854 = ( ( temp_output_1240_0 * Refresh2v21238 ) + temp_output_1233_0 );
				float SmallCascadeSlowFlowHeightBase859 = abs( ( ( Refresh1v21237 + -0.5 ) * 2.0 ) );
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, SmallCascadeWaterSpeedValueMainFlowUV1860 ), _SmallCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, SmallCascadeWaterSpeedValueMainFlowUV2854 ), _SmallCascadeNormalScale ) , SmallCascadeSlowFlowHeightBase859);
				float2 temp_output_1098_0 = ( (lerpResult864).xy * float2( 0.1,0.1 ) );
				float3 temp_output_526_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( SmallCascadeSpeedValueMix433 * _MicroWaveTiling ) + temp_output_1098_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _SmallCascadeNormal, ( SmallCascadeSpeedValueMix433 + temp_output_1098_0 ) ), _MacroWaveNormalScale ) ) , lerpResult864 );
				float clampResult259 = clamp( normalWS.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _SmallCascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float temp_output_267_0 = pow( abs( ( 1.0 - clampResult584 ) ) , _SmallCascadeAngleFalloff );
				float clampResult507 = clamp( normalWS.y , 0.0 , 1.0 );
				float temp_output_504_0 = ( _BigCascadeAngle / 45.0 );
				float clampResult509 = clamp( ( clampResult507 - ( 1.0 - temp_output_504_0 ) ) , 0.0 , 2.0 );
				float clampResult583 = clamp( ( clampResult509 * ( 1.0 / temp_output_504_0 ) ) , 0.0 , 1.0 );
				float clampResult514 = clamp( pow( abs( ( 1.0 - clampResult583 ) ) , _BigCascadeAngleFalloff ) , 0.0 , 1.0 );
				float clampResult285 = clamp( ( temp_output_267_0 - clampResult514 ) , 0.0 , 1.0 );
				float3 lerpResult330 = lerp( temp_output_24_0 , temp_output_526_0 , clampResult285);
				float2 appendResult712 = (float2(_BigCascadeMixSpeed.y , _BigCascadeMixSpeed.x));
				float2 uv0605 = packedInput.ase_texcoord6.xy * _BigCascadeTiling + float2( 0,0 );
				float2 temp_output_1263_0 = ( uv0605 * Globaltiling1010 );
				float2 panner606 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _BigCascadeMixSpeed :  appendResult712 ) + temp_output_1263_0);
				float2 BigCascadeSpeedValueMix608 = panner606;
				float2 break1283 = ( _BigCascadeMainSpeed * _BigCascadeTiling );
				float temp_output_1284_0 = ( U1308 * break1283.x );
				float temp_output_1285_0 = ( break1283.y * V1309 );
				float2 appendResult1287 = (float2(temp_output_1284_0 , temp_output_1285_0));
				float2 appendResult1286 = (float2(temp_output_1285_0 , temp_output_1284_0));
				float2 temp_output_1281_0 = (( (float)Direction723 == 1.0 ) ? appendResult1287 :  appendResult1286 );
				float temp_output_980_0 = ( _Time.y * 0.6 );
				float Refresh1v31200 = frac( ( temp_output_980_0 + 1.0 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV1893 = ( ( temp_output_1281_0 * Refresh1v31200 ) + temp_output_1263_0 );
				float Refresh2v31201 = frac( ( temp_output_980_0 + 0.5 ) );
				float2 BigCascadeWaterSpeedValueMainFlowUV2894 = ( ( temp_output_1281_0 * Refresh2v31201 ) + temp_output_1263_0 );
				float BigCascadeSlowFlowHeightBase895 = abs( ( ( Refresh1v31200 + -0.5 ) * 2.0 ) );
				float3 lerpResult899 = lerp( UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, BigCascadeWaterSpeedValueMainFlowUV1893 ), _BigCascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, BigCascadeWaterSpeedValueMainFlowUV2894 ), _BigCascadeNormalScale ) , BigCascadeSlowFlowHeightBase895);
				float2 temp_output_1130_0 = ( (lerpResult899).xy * float2( 0.15,0.15 ) );
				float3 temp_output_333_0 = BlendNormal( BlendNormal( UnpackNormalmapRGorAG( tex2D( _SlowWaterNormal, ( ( BigCascadeSpeedValueMix608 * _MicroWaveTiling ) + temp_output_1130_0 ) ), _MacroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _BigCascadeNormal, ( BigCascadeSpeedValueMix608 + temp_output_1130_0 ) ), _MicroWaveNormalScale ) ) , lerpResult899 );
				float3 lerpResult529 = lerp( lerpResult330 , temp_output_333_0 , clampResult514);
				float4 fetchOpaqueVal65 = ASEHDSampleSceneColor(( float3( ( appendResult163 / ase_grabScreenPosNorm.a ) ,  0.0 ) + ( lerpResult529 * _Distortion ) ).xy, 0, GetInverseCurrentExposureMultiplier()*0.001);
				float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
				float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
				float temp_output_113_0 = saturate( pow( abs( ( temp_output_89_0 + _FoamDepth ) ) , _FoamFalloff ) );
				float2 temp_output_1292_0 = ( _FoamSpeed * _FoamTiling );
				float2 break1293 = temp_output_1292_0;
				float temp_output_1295_0 = ( U1308 * break1293.x );
				float temp_output_1294_0 = ( break1293.y * V1309 );
				float2 appendResult1298 = (float2(temp_output_1295_0 , temp_output_1294_0));
				float2 appendResult1296 = (float2(temp_output_1294_0 , temp_output_1295_0));
				float2 temp_output_1302_0 = (( (float)Direction723 == 1.0 ) ? appendResult1298 :  appendResult1296 );
				float2 uv0918 = packedInput.ase_texcoord6.xy * _FoamTiling + float2( 0,0 );
				float2 temp_output_1305_0 = ( uv0918 * Globaltiling1010 );
				float2 FoamCascadeWaterSpeedValueMainFlowUV1932 = ( ( temp_output_1302_0 * Refresh11198 ) + temp_output_1305_0 );
				float2 temp_output_1120_0 = ( (lerpResult529).xy * float2( 0.03,0.03 ) );
				float2 FoamCascadeWaterSpeedValueMainFlowUV2933 = ( ( temp_output_1302_0 * Refresh21199 ) + temp_output_1305_0 );
				float temp_output_930_0 = abs( ( ( Refresh11198 + -0.5 ) * 2.0 ) );
				float FoamCascadeSlowFlowHeightBase935 = temp_output_930_0;
				float lerpResult937 = lerp( tex2D( _Foam, ( FoamCascadeWaterSpeedValueMainFlowUV1932 + temp_output_1120_0 ) ).a , tex2D( _Foam, ( FoamCascadeWaterSpeedValueMainFlowUV2933 + temp_output_1120_0 ) ).a , FoamCascadeSlowFlowHeightBase935);
				float temp_output_114_0 = ( temp_output_113_0 * lerpResult937 );
				float lerpResult1378 = lerp( temp_output_114_0 , 0.0 , clampResult514);
				float clampResult1185 = clamp( lerpResult1378 , 0.0 , 1.0 );
				float temp_output_398_0 = ( ( _SlowWaterTessScale * 0.3 ) * tex2D( _SlowWaterTesselation, ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ) ).a );
				float lerpResult840 = lerp( tex2D( _SlowWaterTesselation, WaterSpeedValueMainFlowUV1830 ).a , tex2D( _SlowWaterTesselation, WaterSpeedValueMainFlowUV2831 ).a , SlowFlowHeightBase835);
				float temp_output_410_0 = ( tex2D( _SmallCascadeWaterTess, ( SmallCascadeSpeedValueMix433 + ( (lerpResult864).xy * float2( 0.05,0.05 ) ) ) ).a * ( _SmallCascadeWaterTessScale * 0.4 ) );
				float lerpResult869 = lerp( tex2D( _SmallCascadeWaterTess, SmallCascadeWaterSpeedValueMainFlowUV1860 ).a , tex2D( _SmallCascadeWaterTess, SmallCascadeWaterSpeedValueMainFlowUV2854 ).a , SmallCascadeSlowFlowHeightBase859);
				float lerpResult1065 = lerp( ( temp_output_398_0 + lerpResult840 ) , ( ( temp_output_410_0 + lerpResult869 ) * clampResult285 ) , clampResult285);
				float temp_output_564_0 = ( ( _BigCascadeWaterTessScale * 0.5 ) * tex2D( _BigCascadeWaterTess, ( BigCascadeSpeedValueMix608 + ( (lerpResult899).xy * float2( 0.05,0.05 ) ) ) ).a );
				float lerpResult874 = lerp( tex2D( _BigCascadeWaterTess, BigCascadeWaterSpeedValueMainFlowUV1893 ).a , tex2D( _BigCascadeWaterTess, BigCascadeWaterSpeedValueMainFlowUV2894 ).a , BigCascadeSlowFlowHeightBase895);
				float lerpResult1066 = lerp( lerpResult1065 , ( ( temp_output_564_0 + lerpResult874 ) * clampResult514 ) , clampResult514);
				float HeightMapMix1367 = lerpResult1066;
				float clampResult1355 = clamp( ( pow( abs( ( HeightMapMix1367 * _FoamWaveHardness ) ) , _FoamWavePower ) * _FoamWaveMultiply ) , 0.0 , 1.0 );
				float4 lerpResult117 = lerp( fetchOpaqueVal65 , float4( _FoamColor , 0.0 ) , ( clampResult1185 * clampResult1355 ));
				float4 lerpResult390 = lerp( fetchOpaqueVal65 , lerpResult117 , temp_output_113_0);
				float lerpResult810 = lerp( pow( abs( ( temp_output_89_0 * _ShalowFalloffMultiply ) ) , ( _ShalowFalloffPower * -1.0 ) ) , 100.0 , ( _BigCascadeTransparency * clampResult514 ));
				float clampResult1186 = clamp( saturate( lerpResult810 ) , 0.0 , 1.0 );
				float4 lerpResult13 = lerp( _DeepColor , _ShalowColor , clampResult1186);
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				float Distance1027 = distance( ase_worldPos , _WorldSpaceCameraPos );
				float clampResult1049 = clamp( ( Distance1027 / _WaveTranslucencyFallOffDistance ) , 0.0 , 1.0 );
				float lerpResult1050 = lerp( ( pow( abs( ( HeightMapMix1367 * _WaveTranslucencyHardness ) ) , _WaveTranslucencyPower ) * _WaveTranslucencyMultiply ) , 0.0 , clampResult1049);
				float clampResult1051 = clamp( lerpResult1050 , 0.0 , 1.0 );
				float Microwaves1052 = clampResult1051;
				float4 lerpResult1069 = lerp( lerpResult13 , _ShalowColor , Microwaves1052);
				float temp_output_458_0 = ( 1.0 - clampResult1186 );
				float4 lerpResult1007 = lerp( lerpResult390 , lerpResult1069 , temp_output_458_0);
				float lerpResult879 = lerp( tex2D( _SmallCascade, SmallCascadeWaterSpeedValueMainFlowUV1860 ).a , tex2D( _SmallCascade, SmallCascadeWaterSpeedValueMainFlowUV2854 ).a , SmallCascadeSlowFlowHeightBase859);
				float2 break1327 = ( _NoiseSpeed * _NoiseTiling );
				float temp_output_1329_0 = ( U1308 * break1327.x );
				float temp_output_1328_0 = ( break1327.y * V1309 );
				float2 appendResult1332 = (float2(temp_output_1329_0 , temp_output_1328_0));
				float2 appendResult1330 = (float2(temp_output_1328_0 , temp_output_1329_0));
				float2 temp_output_1333_0 = (( (float)Direction723 == 1.0 ) ? appendResult1332 :  appendResult1330 );
				float2 uv01337 = packedInput.ase_texcoord6.xy * _NoiseTiling + float2( 0,0 );
				float2 temp_output_1338_0 = ( uv01337 * Globaltiling1010 );
				float lerpResult1346 = lerp( tex2D( _Noise, ( ( temp_output_1333_0 * Refresh11198 ) + temp_output_1338_0 ) ).a , tex2D( _Noise, ( ( temp_output_1333_0 * Refresh21199 ) + temp_output_1338_0 ) ).a , SlowFlowHeightBase835);
				float temp_output_1392_0 = abs( lerpResult1346 );
				float clampResult488 = clamp( ( pow( temp_output_1392_0 , _SmallCascadeNoisePower ) * _SmallCascadeNoiseMultiply ) , 0.0 , 1.0 );
				float lerpResult480 = lerp( 0.0 , lerpResult879 , clampResult488);
				float3 temp_output_320_0 = ( lerpResult480 * _SmallCascadeColor );
				float clampResult322 = clamp( pow( abs( lerpResult879 ) , _SmallCascadeFoamFalloff ) , 0.0 , 1.0 );
				float lerpResult580 = lerp( 0.0 , clampResult322 , clampResult285);
				float4 lerpResult324 = lerp( lerpResult1007 , float4( temp_output_320_0 , 0.0 ) , lerpResult580);
				float lerpResult902 = lerp( tex2D( _BigCascade, BigCascadeWaterSpeedValueMainFlowUV1893 ).a , tex2D( _BigCascade, BigCascadeWaterSpeedValueMainFlowUV2894 ).a , BigCascadeSlowFlowHeightBase895);
				float clampResult807 = clamp( ( pow( temp_output_1392_0 , _BigCascadeNoisePower ) * _BigCascadeNoiseMultiply ) , 0.0 , 1.0 );
				float lerpResult626 = lerp( ( lerpResult902 * 0.5 ) , lerpResult902 , clampResult807);
				float3 temp_output_241_0 = ( lerpResult626 * _BigCascadeColor );
				float clampResult299 = clamp( pow( abs( lerpResult902 ) , _BigCascadeFoamFalloff ) , 0.0 , 1.0 );
				float lerpResult579 = lerp( 0.0 , clampResult299 , clampResult514);
				float4 lerpResult239 = lerp( lerpResult324 , float4( temp_output_241_0 , 0.0 ) , lerpResult579);
				float4 lerpResult773 = lerp( fetchOpaqueVal65 , lerpResult1069 , temp_output_458_0);
				float4 break770 = ( packedInput.ase_color / float4( 1,1,1,1 ) );
				float4 lerpResult757 = lerp( lerpResult239 , lerpResult773 , break770.r);
				float4 lerpResult762 = lerp( lerpResult773 , float4( temp_output_320_0 , 0.0 ) , clampResult322);
				float4 lerpResult758 = lerp( lerpResult757 , lerpResult762 , break770.g);
				float4 lerpResult763 = lerp( lerpResult773 , float4( temp_output_241_0 , 0.0 ) , clampResult299);
				float4 lerpResult756 = lerp( lerpResult758 , lerpResult763 , break770.b);
				
				float3 lerpResult748 = lerp( lerpResult529 , temp_output_24_0 , break770.r);
				float3 lerpResult749 = lerp( lerpResult748 , temp_output_526_0 , break770.g);
				float3 lerpResult750 = lerp( lerpResult749 , temp_output_333_0 , break770.b);
				float3 appendResult1036 = (float3(_FarNormalPower , _FarNormalPower , 1.0));
				float clampResult1033 = clamp( pow( abs( ( Distance1027 / _FarNormalBlendStartDistance ) ) , _FarNormalBlendThreshold ) , 0.0 , 1.0 );
				float3 lerpResult1034 = lerp( lerpResult750 , ( lerpResult750 * appendResult1036 ) , clampResult1033);
				
				float lerpResult994 = lerp( _WaterSpecularFar , _WaterSpecularClose , pow( abs( clampResult1186 ) , _WaterSpecularThreshold ));
				float lerpResult130 = lerp( lerpResult994 , _FoamSpecular , temp_output_114_0);
				float lerpResult585 = lerp( lerpResult130 , _SmallCascadeSpecular , ( lerpResult580 * clampResult285 ));
				float lerpResult587 = lerp( lerpResult585 , _BigCascadeSpecular , ( lerpResult579 * clampResult514 ));
				float lerpResult785 = lerp( lerpResult587 , lerpResult130 , break770.r);
				float lerpResult796 = lerp( lerpResult130 , _SmallCascadeSpecular , lerpResult580);
				float lerpResult786 = lerp( lerpResult785 , lerpResult796 , break770.g);
				float lerpResult797 = lerp( lerpResult130 , _BigCascadeSpecular , lerpResult579);
				float lerpResult787 = lerp( lerpResult786 , lerpResult797 , break770.b);
				float3 temp_cast_21 = (lerpResult787).xxx;
				
				float lerpResult591 = lerp( _WaterSmoothness , _FoamSmoothness , temp_output_114_0);
				float lerpResult593 = lerp( lerpResult591 , _SmallCascadeSmoothness , ( lerpResult580 * clampResult285 ));
				float lerpResult592 = lerp( lerpResult593 , _BigCascadeSmoothness , ( lerpResult579 * clampResult514 ));
				float lerpResult788 = lerp( lerpResult592 , lerpResult591 , break770.r);
				float lerpResult798 = lerp( lerpResult591 , _SmallCascadeSmoothness , lerpResult580);
				float lerpResult789 = lerp( lerpResult788 , lerpResult798 , break770.g);
				float lerpResult799 = lerp( lerpResult591 , _BigCascadeSmoothness , lerpResult579);
				float lerpResult790 = lerp( lerpResult789 , lerpResult799 , break770.b);
				
				float clampResult1171 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1174 = clamp( pow( abs( clampResult1171 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1174 * packedInput.ase_color.a );
				float switchResult1056 = (((ase_vface>0)?(temp_output_779_0):(( _BackfaceAlpha * temp_output_779_0 ))));
				
				surfaceDescription.Albedo = lerpResult756.rgb;
				surfaceDescription.Normal = lerpResult1034;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = temp_cast_21;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult790;
				surfaceDescription.Occlusion = _AOPower;
				surfaceDescription.Alpha = switchResult1056;

				#ifdef _ALPHATEST_ON
				surfaceDescription.AlphaClipThreshold = 0;
				#endif

				#ifdef _ENABLE_GEOMETRIC_SPECULAR_AA
				surfaceDescription.SpecularAAScreenSpaceVariance = 0;
				surfaceDescription.SpecularAAThreshold = 0;
				#endif

				#ifdef _SPECULAR_OCCLUSION_CUSTOM
				surfaceDescription.SpecularOcclusion = 0;
				#endif

				#if defined(_HAS_REFRACTION) || defined(_MATERIAL_FEATURE_TRANSMISSION)
				surfaceDescription.Thickness = 1;
				#endif

				#ifdef _HAS_REFRACTION
				surfaceDescription.RefractionIndex = 1;
				surfaceDescription.RefractionColor = float3( 1, 1, 1 );
				surfaceDescription.RefractionDistance = 0;
				#endif

				#ifdef _MATERIAL_FEATURE_SUBSURFACE_SCATTERING
				surfaceDescription.SubsurfaceMask = 1;
				#endif

				#if defined( _MATERIAL_FEATURE_SUBSURFACE_SCATTERING ) || defined( _MATERIAL_FEATURE_TRANSMISSION )
				surfaceDescription.DiffusionProfile = asfloat( uint( 1074012128 ) );
				#endif

				#ifdef _MATERIAL_FEATURE_ANISOTROPY
				surfaceDescription.Anisotropy = 1;
				surfaceDescription.Tangent = float3( 1, 0, 0 );
				#endif

				#ifdef _MATERIAL_FEATURE_IRIDESCENCE
				surfaceDescription.IridescenceMask = 0;
				surfaceDescription.IridescenceThickness = 0;
				#endif

				#ifdef _DEPTHOFFSET_ON
				surfaceDescription.DepthOffset = 0;
				#endif

				GetSurfaceAndBuiltinData(surfaceDescription,input, normalizedWorldViewDir, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData(input.positionSS.xy, surfaceData);

				PreLightData preLightData = GetPreLightData(normalizedWorldViewDir, posInput, bsdfData);

				outColor = float4(0.0, 0.0, 0.0, 0.0);

				{
					#ifdef _SURFACE_TYPE_TRANSPARENT
					uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_TRANSPARENT;
					#else
					uint featureFlags = LIGHT_FEATURE_MASK_FLAGS_OPAQUE;
					#endif
					float3 diffuseLighting;
					float3 specularLighting;

					LightLoop( normalizedWorldViewDir, posInput, preLightData, bsdfData, builtinData, featureFlags, diffuseLighting, specularLighting );

					diffuseLighting *= GetCurrentExposureMultiplier();
					specularLighting *= GetCurrentExposureMultiplier();

					#ifdef OUTPUT_SPLIT_LIGHTING
					if( _EnableSubsurfaceScattering != 0 && ShouldOutputSplitLighting( bsdfData ) )
					{
						outColor = float4( specularLighting, 1.0 );
						outDiffuseLighting = float4( TagLightingForSSS( diffuseLighting ), 1.0 );
					}
					else
					{
						outColor = float4( diffuseLighting + specularLighting, 1.0 );
						outDiffuseLighting = 0;
					}
					ENCODE_INTO_SSSBUFFER( surfaceData, posInput.positionSS, outSSSBuffer );
					#else
					outColor = ApplyBlendMode( diffuseLighting, specularLighting, builtinData.opacity );
					outColor = EvaluateAtmosphericScattering( posInput, normalizedWorldViewDir, outColor );
					#endif
					#ifdef _WRITE_TRANSPARENT_MOTION_VECTOR
					/*VaryingsPassToPS inputPass = UnpackVaryingsPassToPS(packedInput.vpass);
					bool forceNoMotion = any(unity_MotionVectorsParams.yw == 0.0);
					if (forceNoMotion)
					{
						outMotionVec = float4(2.0, 0.0, 0.0, 0.0);
					}
					else
					{
						float2 motionVec = CalculateMotionVector(inputPass.positionCS, inputPass.previousPositionCS);
						EncodeMotionVector(motionVec * 0.5, outMotionVec);
						outMotionVec.zw = 1.0;
					}*/
					#endif
				}

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

            ENDHLSL
        }
		
    }
	
	
}