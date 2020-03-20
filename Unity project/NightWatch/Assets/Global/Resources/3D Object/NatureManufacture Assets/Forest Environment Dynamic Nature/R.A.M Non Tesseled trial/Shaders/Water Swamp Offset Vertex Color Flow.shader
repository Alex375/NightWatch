Shader "NatureManufacture Shaders/Water/Water Swamp Offset Vertex Color Flow"
{
    Properties
    {
		_GlobalTiling("Global Tiling", Range( 0.001 , 100)) = 1
		_UVVDirection1UDirection0("UV - V Direction (1) U Direction (0)", Int) = 0
		_BackfaceAlpha("Backface Alpha", Range( 0 , 1)) = 0.85
		_WaterAOPower("Water AO Power", Range( 0 , 1)) = 1
		_CleanFalloffMultiply("Clean Falloff Multiply", Range( 0.1 , 4)) = 0.64
		_CleanFalloffPower("Clean Falloff Power", Range( 0.4 , 10)) = 1.68
		_ShalowColor("Shalow Color", Color) = (1,1,1,0)
		_ShalowFalloffMultiply("Shalow Falloff Multiply", Range( 0.1 , 4)) = 0.47
		_ShalowFalloffPower("Shalow Falloff Power", Range( 0 , 10)) = 3.49
		_DeepColor("Deep Color", Color) = (0,0,0,0)
		_WaveTranslucencyPower("Wave Translucency Power", Range( 0 , 10)) = 0.97
		_WaveTranslucencyHardness("Wave Translucency Hardness", Range( 0 , 10)) = 2.5
		_WaveTranslucencyMultiply("Wave Translucency Multiply", Range( 0 , 10)) = 0.34
		_WaveTranslucencyFallOffDistance("Wave Translucency FallOff Distance", Range( 0 , 100)) = 30
		_WaterSpecularClose("Water Specular Close", Range( 0 , 1)) = 0
		_WaterSpecularFar("Water Specular Far", Range( 0 , 1)) = 0
		_WaterSpecularThreshold("Water Specular Threshold", Range( 0 , 10)) = 1
		_WaterSmoothness("Water Smoothness", Range( 0 , 1)) = 0
		_Distortion("Distortion", Float) = 0.5
		[NoScaleOffset]_MicroWaveNormal("Micro Wave Normal", 2D) = "bump" {}
		_MicroWaveTiling("Micro Wave Tiling", Vector) = (20,20,0,0)
		_MicroWaveNormalScale("Micro Wave Normal Scale", Range( 0 , 2)) = 0.25
		_MacroWaveNormalScale("Macro Wave Normal Scale", Range( 0 , 2)) = 0.33
		_WaterTiling("Water Tiling", Vector) = (3,3,0,0)
		_WaterMainSpeed("Water Main Speed", Vector) = (0.2,0.2,0,0)
		_CascadeTiling("Cascade Tiling", Vector) = (2,3,0,0)
		_CascadeMainSpeed("Cascade Main Speed", Vector) = (2,2,0,0)
		_WaterMixSpeed("Water Mix Speed", Vector) = (0.01,0.05,0,0)
		[NoScaleOffset]_WaterNormal("Water Normal", 2D) = "bump" {}
		_WaterNormalScale("Water Normal Scale", Float) = 0.3
		_CascadeNormalScale("Cascade Normal Scale", Float) = 0.7
		_FarNormalPower("Far Normal Power", Range( 0 , 1)) = 0.5
		_FarNormalBlendStartDistance("Far Normal Blend Start Distance", Float) = 200
		_FarNormalBlendThreshold("Far Normal Blend Threshold", Range( 0 , 10)) = 10
		[NoScaleOffset]_WaterTesselation("Water Tesselation", 2D) = "black" {}
		_WaterTessScale("Water Tess Scale", Float) = 0
		_CascadeAngle("Cascade Angle", Range( 0.001 , 90)) = 90
		_CascadeAngleFalloff("Cascade Angle Falloff", Range( 0 , 80)) = 5
		_CascadeTransparency("Cascade Transparency", Range( 0 , 1)) = 0
		[NoScaleOffset]_Noise("Noise", 2D) = "white" {}
		_NoiseTiling1("Noise Tiling 1", Vector) = (4,4,0,0)
		_NoiseTiling2("Noise Tiling 2", Vector) = (4,4,0,0)
		_DetailNoisePower("Detail Noise Power", Range( 0 , 10)) = 2.71
		[NoScaleOffset]_DetailAlbedo("Detail Albedo", 2D) = "black" {}
		_DetailAlbedoColor("Detail Albedo Color", Color) = (1,1,1,0)
		_Detail1Tiling("Detail 1 Tiling", Vector) = (3,3,0,0)
		_Detail1MainSpeed("Detail 1 Main Speed", Vector) = (0.2,0.2,0,0)
		_DetailSpecular("Detail Specular", Range( 0 , 1)) = 0
		[NoScaleOffset]_DetailNormal("Detail Normal", 2D) = "bump" {}
		_DetailNormalScale("Detail Normal Scale", Float) = 0
		_DetailSmoothness("Detail Smoothness", Range( 0 , 1)) = 0
		_DetailAOPower("Detail AO Power", Range( 0 , 1)) = 1
		_Detail2NoisePower("Detail 2 Noise Power", Range( 0 , 10)) = 0
		[NoScaleOffset]_Detail2Albedo("Detail 2 Albedo", 2D) = "black" {}
		_Detail2AlbedoColor("Detail 2 Albedo Color", Color) = (1,1,1,0)
		_Detail2Tiling("Detail 2 Tiling", Vector) = (3,3,0,0)
		_Detail2MainSpeed("Detail 2 Main Speed", Vector) = (0.2,0.2,0,0)
		_Detail2Specular("Detail 2 Specular", Range( 0 , 1)) = 0
		[NoScaleOffset]_Detail2Normal("Detail 2 Normal", 2D) = "bump" {}
		_Detail2NormalScale("Detail 2 Normal Scale", Float) = 0
		_Detail2Smoothness("Detail 2 Smoothness", Range( 0 , 1)) = 0
		_Detail2AOPower("Detail 2 AO Power", Range( 0 , 1)) = 1
		[NoScaleOffset]_Detail1GSmDetail2ASm("Detail 1 (G)Sm Detail 2 (A)Sm", 2D) = "white" {}
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

			sampler2D _WaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _WaterNormal;
			sampler2D _MicroWaveNormal;
			sampler2D _DetailNormal;
			sampler2D _DetailAlbedo;
			sampler2D _Noise;
			sampler2D _Detail2Normal;
			sampler2D _Detail2Albedo;
			sampler2D _Detail1GSmDetail2ASm;
			CBUFFER_START( UnityPerMaterial )
			float _WaterTessScale;
			float2 _WaterMixSpeed;
			float2 _WaterTiling;
			float _GlobalTiling;
			float _WaterNormalScale;
			float2 _WaterMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _DetailNormalScale;
			float2 _Detail1MainSpeed;
			float2 _CascadeMainSpeed;
			half _CascadeAngle;
			float _CascadeAngleFalloff;
			float2 _Detail1Tiling;
			float2 _NoiseTiling1;
			float _DetailNoisePower;
			float _Detail2NormalScale;
			float2 _Detail2MainSpeed;
			float2 _Detail2Tiling;
			float2 _NoiseTiling2;
			float _Detail2NoisePower;
			float _Distortion;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _CascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float4 _DetailAlbedoColor;
			float4 _Detail2AlbedoColor;
			float _CascadeNormalScale;
			float2 _CascadeTiling;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _DetailSpecular;
			float _Detail2Specular;
			float _WaterSmoothness;
			float _DetailSmoothness;
			float _Detail2Smoothness;
			half _WaterAOPower;
			half _DetailAOPower;
			half _Detail2AOPower;
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
				float2 appendResult706 = (float2(_WaterMixSpeed.y , _WaterMixSpeed.x));
				float2 uv01484 = inputMesh.ase_texcoord * _WaterTiling + float2( 0,0 );
				float Globaltiling1185 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1487_0 = ( uv01484 * Globaltiling1185 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _WaterMixSpeed :  appendResult706 ) + temp_output_1487_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1472 = uv3829.x;
				float2 break1475 = ( _WaterMainSpeed * _WaterTiling );
				float temp_output_1477_0 = ( U1472 * break1475.x );
				float V1471 = uv3829.y;
				float temp_output_1478_0 = ( break1475.y * V1471 );
				float2 appendResult1480 = (float2(temp_output_1477_0 , temp_output_1478_0));
				float2 appendResult1481 = (float2(temp_output_1478_0 , temp_output_1477_0));
				float2 temp_output_1482_0 = (( (float)Direction723 == 1.0 ) ? appendResult1480 :  appendResult1481 );
				float temp_output_816_0 = ( _Time.y * 0.05 );
				float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1482_0 * Refresh11404 ) + temp_output_1487_0 );
				float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1482_0 * Refresh21406 ) + temp_output_1487_0 );
				float clampResult845 = clamp( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase1314 = clampResult845;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _WaterNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _WaterNormalScale ) , WaterSlowHeightBase1314);
				float temp_output_398_0 = ( ( _WaterTessScale * 0.3 ) * tex2Dlod( _WaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , WaterSlowHeightBase1314);
				float temp_output_415_0 = ( temp_output_398_0 + ( _WaterTessScale * lerpResult840 ) );
				
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
				float3 vertexValue = ( (temp_output_415_0*1.0 + ( temp_output_415_0 * -0.5 )) * inputMesh.normalOS );

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
				float2 appendResult706 = (float2(_WaterMixSpeed.y , _WaterMixSpeed.x));
				float2 uv01484 = packedInput.ase_texcoord6.xy * _WaterTiling + float2( 0,0 );
				float Globaltiling1185 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1487_0 = ( uv01484 * Globaltiling1185 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _WaterMixSpeed :  appendResult706 ) + temp_output_1487_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = packedInput.ase_texcoord6.zw * float2( 1,1 ) + float2( 0,0 );
				float U1472 = uv3829.x;
				float2 break1475 = ( _WaterMainSpeed * _WaterTiling );
				float temp_output_1477_0 = ( U1472 * break1475.x );
				float V1471 = uv3829.y;
				float temp_output_1478_0 = ( break1475.y * V1471 );
				float2 appendResult1480 = (float2(temp_output_1477_0 , temp_output_1478_0));
				float2 appendResult1481 = (float2(temp_output_1478_0 , temp_output_1477_0));
				float2 temp_output_1482_0 = (( (float)Direction723 == 1.0 ) ? appendResult1480 :  appendResult1481 );
				float temp_output_816_0 = ( _Time.y * 0.05 );
				float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1482_0 * Refresh11404 ) + temp_output_1487_0 );
				float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1482_0 * Refresh21406 ) + temp_output_1487_0 );
				float clampResult845 = clamp( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase1314 = clampResult845;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2D( _WaterNormal, WaterSpeedValueMainFlowUV1830 ), _WaterNormalScale ) , UnpackNormalmapRGorAG( tex2D( _WaterNormal, WaterSpeedValueMainFlowUV2831 ), _WaterNormalScale ) , WaterSlowHeightBase1314);
				float2 temp_output_1246_0 = ( (lerpResult838).xy * float2( 0.05,0.05 ) );
				float3 temp_output_1250_0 = BlendNormal( UnpackNormalmapRGorAG( tex2D( _MicroWaveNormal, ( ( _MicroWaveTiling * WaterSpeedValueMix516 ) + temp_output_1246_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _WaterNormal, ( WaterSpeedValueMix516 + temp_output_1246_0 ) ), _MacroWaveNormalScale ) );
				float3 temp_output_24_0 = BlendNormal( temp_output_1250_0 , lerpResult838 );
				float clampResult259 = clamp( normalWS.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _CascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float clampResult285 = clamp( pow( abs( ( 1.0 - clampResult584 ) ) , _CascadeAngleFalloff ) , 0.0 , 1.0 );
				float WaterfallAngle1144 = clampResult285;
				float2 lerpResult1654 = lerp( _Detail1MainSpeed , _CascadeMainSpeed , ( WaterfallAngle1144 * 0.2 ));
				float2 break1494 = ( lerpResult1654 * _Detail1Tiling );
				float temp_output_1496_0 = ( U1472 * break1494.x );
				float temp_output_1497_0 = ( break1494.y * V1471 );
				float2 appendResult1499 = (float2(temp_output_1496_0 , temp_output_1497_0));
				float2 appendResult1498 = (float2(temp_output_1497_0 , temp_output_1496_0));
				float2 temp_output_1505_0 = (( (float)Direction723 == 1.0 ) ? appendResult1499 :  appendResult1498 );
				float2 uv01504 = packedInput.ase_texcoord6.xy * _Detail1Tiling + float2( 0,0 );
				float2 temp_output_1508_0 = ( uv01504 * Globaltiling1185 );
				float2 Detail1SpeedValueMainFlowUV11018 = ( ( temp_output_1505_0 * Refresh11404 ) + temp_output_1508_0 );
				float2 Detail1SpeedValueMainFlowUV21021 = ( ( temp_output_1505_0 * Refresh21406 ) + temp_output_1508_0 );
				float clampResult1291 = clamp( pow( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 7.0 ) , 0.0 , 1.0 );
				float SlowFlowHeightBase835 = clampResult1291;
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2D( _DetailNormal, Detail1SpeedValueMainFlowUV11018 ), _DetailNormalScale ) , UnpackNormalmapRGorAG( tex2D( _DetailNormal, Detail1SpeedValueMainFlowUV21021 ), _DetailNormalScale ) , SlowFlowHeightBase835);
				float4 lerpResult935 = lerp( tex2D( _DetailAlbedo, Detail1SpeedValueMainFlowUV11018 ) , tex2D( _DetailAlbedo, Detail1SpeedValueMainFlowUV21021 ) , SlowFlowHeightBase835);
				float2 break1588 = ( lerpResult1654 * _NoiseTiling1 );
				float temp_output_1591_0 = ( U1472 * break1588.x );
				float temp_output_1592_0 = ( break1588.y * V1471 );
				float2 appendResult1594 = (float2(temp_output_1591_0 , temp_output_1592_0));
				float2 appendResult1593 = (float2(temp_output_1592_0 , temp_output_1591_0));
				float2 temp_output_1598_0 = (( (float)Direction723 == 1.0 ) ? appendResult1594 :  appendResult1593 );
				float2 uv01599 = packedInput.ase_texcoord6.xy * _NoiseTiling1 + float2( 0,0 );
				float2 temp_output_1600_0 = ( uv01599 * Globaltiling1185 );
				float2 NoiseSpeedValueMainFlowUV11064 = ( ( temp_output_1598_0 * Refresh11404 ) + temp_output_1600_0 );
				float2 NoiseSpeedValueMainFlowUV21063 = ( ( temp_output_1598_0 * Refresh21406 ) + temp_output_1600_0 );
				float clampResult1386 = clamp( SlowFlowHeightBase835 , 0.0 , 1.0 );
				float lerpResult1014 = lerp( tex2D( _Noise, NoiseSpeedValueMainFlowUV11064 ).r , tex2D( _Noise, NoiseSpeedValueMainFlowUV21063 ).r , clampResult1386);
				float temp_output_1674_0 = abs( lerpResult1014 );
				float temp_output_484_0 = pow( temp_output_1674_0 , _DetailNoisePower );
				float clampResult488 = clamp( temp_output_484_0 , 0.0 , 1.0 );
				float lerpResult1083 = lerp( 0.0 , lerpResult935.a , clampResult488);
				float Detal_1_Alpha_Noise1158 = lerpResult1083;
				float3 lerpResult932 = lerp( temp_output_24_0 , lerpResult864 , Detal_1_Alpha_Noise1158);
				float2 lerpResult1659 = lerp( _Detail2MainSpeed , _CascadeMainSpeed , ( WaterfallAngle1144 * 0.2 ));
				float2 break1516 = ( lerpResult1659 * _Detail2Tiling );
				float temp_output_1518_0 = ( U1472 * break1516.x );
				float temp_output_1519_0 = ( break1516.y * V1471 );
				float2 appendResult1521 = (float2(temp_output_1518_0 , temp_output_1519_0));
				float2 appendResult1520 = (float2(temp_output_1519_0 , temp_output_1518_0));
				float2 temp_output_1524_0 = (( (float)Direction723 == 1.0 ) ? appendResult1521 :  appendResult1520 );
				float2 uv01534 = packedInput.ase_texcoord6.xy * _Detail2Tiling + float2( 0,0 );
				float2 temp_output_1527_0 = ( uv01534 * Globaltiling1185 );
				float2 Detail2SpeedValueMainFlowUV11022 = ( ( temp_output_1524_0 * Refresh11404 ) + temp_output_1527_0 );
				float2 Detail2SpeedValueMainFlowUV21025 = ( ( temp_output_1524_0 * Refresh21406 ) + temp_output_1527_0 );
				float clampResult1301 = clamp( pow( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 7.0 ) , 0.0 , 1.0 );
				float SlowFlowHeightBase21302 = clampResult1301;
				float3 lerpResult922 = lerp( UnpackNormalmapRGorAG( tex2D( _Detail2Normal, Detail2SpeedValueMainFlowUV11022 ), _Detail2NormalScale ) , UnpackNormalmapRGorAG( tex2D( _Detail2Normal, Detail2SpeedValueMainFlowUV21025 ), _Detail2NormalScale ) , SlowFlowHeightBase21302);
				float4 lerpResult947 = lerp( tex2D( _Detail2Albedo, Detail2SpeedValueMainFlowUV11022 ) , tex2D( _Detail2Albedo, Detail2SpeedValueMainFlowUV21025 ) , SlowFlowHeightBase21302);
				float2 break1566 = ( lerpResult1659 * _NoiseTiling2 );
				float temp_output_1569_0 = ( U1472 * break1566.x );
				float temp_output_1568_0 = ( break1566.y * V1471 );
				float2 appendResult1570 = (float2(temp_output_1569_0 , temp_output_1568_0));
				float2 appendResult1572 = (float2(temp_output_1568_0 , temp_output_1569_0));
				float2 temp_output_1573_0 = (( (float)Direction723 == 1.0 ) ? appendResult1570 :  appendResult1572 );
				float2 uv01576 = packedInput.ase_texcoord6.xy * _NoiseTiling2 + float2( 0,0 );
				float2 temp_output_1579_0 = ( uv01576 * Globaltiling1185 );
				float2 NoiseSpeedValueMainFlowUV1v21583 = ( ( temp_output_1573_0 * Refresh11404 ) + temp_output_1579_0 );
				float2 NoiseSpeedValueMainFlowUV2v21584 = ( ( temp_output_1573_0 * Refresh21406 ) + temp_output_1579_0 );
				float clampResult1387 = clamp( SlowFlowHeightBase21302 , 0.0 , 1.0 );
				float lerpResult1016 = lerp( tex2D( _Noise, NoiseSpeedValueMainFlowUV1v21583 ).r , tex2D( _Noise, NoiseSpeedValueMainFlowUV2v21584 ).r , clampResult1387);
				float temp_output_960_0 = pow( abs( max( lerpResult1016 , temp_output_1674_0 ) ) , _Detail2NoisePower );
				float clampResult962 = clamp( temp_output_960_0 , 0.0 , 1.0 );
				float lerpResult1125 = lerp( 0.0 , lerpResult947.a , clampResult962);
				float Detal_2_Alpha_Noise1159 = lerpResult1125;
				float3 lerpResult933 = lerp( lerpResult932 , lerpResult922 , Detal_2_Alpha_Noise1159);
				float4 fetchOpaqueVal65 = ASEHDSampleSceneColor(( float3( ( appendResult163 / ase_grabScreenPosNorm.a ) ,  0.0 ) + ( lerpResult933 * _Distortion ) ).xy, 0, GetInverseCurrentExposureMultiplier()*0.001);
				float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
				float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
				float lerpResult1662 = lerp( pow( abs( ( temp_output_89_0 * _ShalowFalloffMultiply ) ) , ( _ShalowFalloffPower * -1.0 ) ) , 100.0 , ( _CascadeTransparency * WaterfallAngle1144 ));
				float clampResult1259 = clamp( saturate( lerpResult1662 ) , 0.0 , 1.0 );
				float4 lerpResult13 = lerp( _DeepColor , _ShalowColor , clampResult1259);
				float temp_output_398_0 = ( ( _WaterTessScale * 0.3 ) * tex2D( _WaterTesselation, ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ) ).a );
				float lerpResult840 = lerp( tex2D( _WaterTesselation, WaterSpeedValueMainFlowUV1830 ).a , tex2D( _WaterTesselation, WaterSpeedValueMainFlowUV2831 ).a , WaterSlowHeightBase1314);
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				float Distance1207 = distance( ase_worldPos , _WorldSpaceCameraPos );
				float clampResult1216 = clamp( ( Distance1207 / _WaveTranslucencyFallOffDistance ) , 0.0 , 1.0 );
				float lerpResult1217 = lerp( ( pow( abs( ( ( temp_output_398_0 + lerpResult840 ) * _WaveTranslucencyHardness ) ) , _WaveTranslucencyPower ) * _WaveTranslucencyMultiply ) , 0.0 , clampResult1216);
				float clampResult1218 = clamp( lerpResult1217 , 0.0 , 1.0 );
				float Microwaves1219 = clampResult1218;
				float4 lerpResult1258 = lerp( lerpResult13 , _ShalowColor , Microwaves1219);
				float4 lerpResult773 = lerp( fetchOpaqueVal65 , lerpResult1258 , ( 1.0 - clampResult1259 ));
				float4 temp_output_1106_0 = ( lerpResult935 * _DetailAlbedoColor );
				float4 lerpResult964 = lerp( lerpResult773 , temp_output_1106_0 , Detal_1_Alpha_Noise1158);
				float4 temp_output_1108_0 = ( lerpResult947 * _Detail2AlbedoColor );
				float4 lerpResult987 = lerp( lerpResult964 , temp_output_1108_0 , Detal_2_Alpha_Noise1159);
				float Detal_1_Alpha1146 = lerpResult935.a;
				float4 lerpResult1132 = lerp( lerpResult773 , temp_output_1106_0 , Detal_1_Alpha1146);
				float4 VertexColorRGB1172 = ( packedInput.ase_color / float4( 1,1,1,1 ) );
				float4 break1181 = VertexColorRGB1172;
				float4 lerpResult986 = lerp( lerpResult987 , lerpResult1132 , break1181.r);
				float Detal_2_Alpha1152 = lerpResult947.a;
				float4 lerpResult1133 = lerp( lerpResult773 , temp_output_1108_0 , Detal_2_Alpha1152);
				float4 lerpResult984 = lerp( lerpResult986 , lerpResult1133 , break1181.g);
				float4 lerpResult1113 = lerp( lerpResult984 , lerpResult773 , break1181.b);
				float4 lerpResult1058 = lerp( lerpResult1113 , lerpResult773 , WaterfallAngle1144);
				
				float3 lerpResult1134 = lerp( temp_output_24_0 , lerpResult864 , Detal_1_Alpha1146);
				float4 break1177 = VertexColorRGB1172;
				float3 lerpResult748 = lerp( lerpResult933 , lerpResult1134 , break1177.r);
				float3 lerpResult1135 = lerp( temp_output_24_0 , lerpResult922 , Detal_2_Alpha1152);
				float3 lerpResult749 = lerp( lerpResult748 , lerpResult1135 , break1177.g);
				float3 lerpResult750 = lerp( lerpResult749 , temp_output_24_0 , break1177.b);
				float2 break1609 = ( _CascadeMainSpeed * _CascadeTiling );
				float temp_output_1611_0 = ( U1472 * break1609.x );
				float temp_output_1610_0 = ( break1609.y * V1471 );
				float2 appendResult1613 = (float2(temp_output_1611_0 , temp_output_1610_0));
				float2 appendResult1614 = (float2(temp_output_1610_0 , temp_output_1611_0));
				float2 temp_output_1616_0 = (( (float)Direction723 == 1.0 ) ? appendResult1613 :  appendResult1614 );
				float temp_output_1639_0 = ( _Time.y * 0.1 );
				float Refresh1v21643 = frac( ( temp_output_1639_0 + 1.0 ) );
				float2 uv01617 = packedInput.ase_texcoord6.xy * _CascadeTiling + float2( 0,0 );
				float2 temp_output_1622_0 = ( uv01617 * Globaltiling1185 );
				float2 SmallCascadeSpeedValueMainFlowUV11625 = ( ( temp_output_1616_0 * Refresh1v21643 ) + temp_output_1622_0 );
				float Refresh2v21645 = frac( ( temp_output_1639_0 + 0.5 ) );
				float2 SmallCascadeSpeedValueMainFlowUV21626 = ( ( temp_output_1616_0 * Refresh2v21645 ) + temp_output_1622_0 );
				float clampResult1650 = clamp( abs( ( ( Refresh1v21643 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase21651 = clampResult1650;
				float3 lerpResult1634 = lerp( UnpackNormalmapRGorAG( tex2D( _WaterNormal, SmallCascadeSpeedValueMainFlowUV11625 ), _CascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _WaterNormal, SmallCascadeSpeedValueMainFlowUV21626 ), _CascadeNormalScale ) , WaterSlowHeightBase21651);
				float3 lerpResult983 = lerp( lerpResult750 , BlendNormal( temp_output_1250_0 , lerpResult1634 ) , WaterfallAngle1144);
				float3 appendResult1422 = (float3(_FarNormalPower , _FarNormalPower , 1.0));
				float clampResult1423 = clamp( pow( abs( ( Distance1207 / _FarNormalBlendStartDistance ) ) , _FarNormalBlendThreshold ) , 0.0 , 1.0 );
				float3 lerpResult1425 = lerp( lerpResult983 , ( lerpResult983 * appendResult1422 ) , clampResult1423);
				
				float lerpResult1124 = lerp( _WaterSpecularFar , _WaterSpecularClose , pow( abs( clampResult1259 ) , _WaterSpecularThreshold ));
				float4 temp_cast_16 = (lerpResult1124).xxxx;
				float4 clampResult1050 = clamp( ( temp_output_1106_0 * float4( 0.3,0.3019608,0.3019608,0 ) ) , float4( 0,0,0,0 ) , float4( 0.5,0.5019608,0.5019608,0 ) );
				float4 temp_output_1051_0 = ( _DetailSpecular * clampResult1050 );
				float4 lerpResult969 = lerp( temp_cast_16 , temp_output_1051_0 , Detal_1_Alpha_Noise1158);
				float4 clampResult1053 = clamp( ( lerpResult947 * float4( 0.3,0.3019608,0.3019608,0 ) ) , float4( 0,0,0,0 ) , float4( 0.5,0.5019608,0.5019608,0 ) );
				float4 temp_output_1052_0 = ( _Detail2Specular * clampResult1053 );
				float4 lerpResult970 = lerp( lerpResult969 , temp_output_1052_0 , Detal_2_Alpha_Noise1159);
				float4 temp_cast_17 = (lerpResult1124).xxxx;
				float4 lerpResult1136 = lerp( temp_cast_17 , temp_output_1051_0 , Detal_1_Alpha1146);
				float4 break1179 = VertexColorRGB1172;
				float4 lerpResult130 = lerp( lerpResult970 , lerpResult1136 , break1179.r);
				float4 temp_cast_18 = (lerpResult1124).xxxx;
				float4 lerpResult1137 = lerp( temp_cast_18 , temp_output_1052_0 , Detal_2_Alpha1152);
				float4 lerpResult785 = lerp( lerpResult130 , lerpResult1137 , break1179.g);
				float4 temp_cast_19 = (lerpResult1124).xxxx;
				float4 lerpResult786 = lerp( lerpResult785 , temp_cast_19 , break1179.b);
				float4 temp_cast_20 = (lerpResult1124).xxxx;
				float4 lerpResult982 = lerp( lerpResult786 , temp_cast_20 , WaterfallAngle1144);
				
				float4 lerpResult1089 = lerp( tex2D( _Detail1GSmDetail2ASm, Detail1SpeedValueMainFlowUV11018 ) , tex2D( _Detail1GSmDetail2ASm, Detail1SpeedValueMainFlowUV21021 ) , SlowFlowHeightBase835);
				float temp_output_1093_0 = ( lerpResult1089.g * _DetailSmoothness );
				float lerpResult973 = lerp( _WaterSmoothness , temp_output_1093_0 , Detal_1_Alpha_Noise1158);
				float4 lerpResult1102 = lerp( tex2D( _Detail1GSmDetail2ASm, Detail2SpeedValueMainFlowUV11022 ) , tex2D( _Detail1GSmDetail2ASm, Detail2SpeedValueMainFlowUV21025 ) , SlowFlowHeightBase21302);
				float temp_output_1094_0 = ( lerpResult1102.a * _Detail2Smoothness );
				float lerpResult974 = lerp( lerpResult973 , temp_output_1094_0 , Detal_2_Alpha_Noise1159);
				float lerpResult1129 = lerp( _WaterSmoothness , temp_output_1093_0 , Detal_1_Alpha1146);
				float4 break1174 = VertexColorRGB1172;
				float lerpResult975 = lerp( lerpResult974 , lerpResult1129 , break1174.r);
				float lerpResult1127 = lerp( _WaterSmoothness , temp_output_1094_0 , Detal_2_Alpha1152);
				float lerpResult972 = lerp( lerpResult975 , lerpResult1127 , break1174.g);
				float lerpResult971 = lerp( lerpResult972 , _WaterSmoothness , break1174.b);
				float lerpResult981 = lerp( lerpResult971 , _WaterSmoothness , WaterfallAngle1144);
				
				float lerpResult1038 = lerp( _WaterAOPower , _DetailAOPower , Detal_1_Alpha_Noise1158);
				float lerpResult1039 = lerp( lerpResult1038 , _Detail2AOPower , Detal_2_Alpha_Noise1159);
				float lerpResult1130 = lerp( _WaterAOPower , _DetailAOPower , Detal_1_Alpha1146);
				float4 break1175 = VertexColorRGB1172;
				float lerpResult1040 = lerp( lerpResult1039 , lerpResult1130 , break1175.r);
				float lerpResult1128 = lerp( _WaterAOPower , _Detail2AOPower , Detal_2_Alpha1152);
				float lerpResult1041 = lerp( lerpResult1040 , lerpResult1128 , break1175.g);
				float lerpResult1042 = lerp( lerpResult1041 , _WaterAOPower , break1175.b);
				float lerpResult1057 = lerp( lerpResult1042 , _WaterAOPower , WaterfallAngle1144);
				
				float clampResult1234 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1238 = clamp( pow( abs( clampResult1234 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1238 * packedInput.ase_color.a );
				float switchResult1230 = (((ase_vface>0)?(temp_output_779_0):(( temp_output_779_0 * _BackfaceAlpha ))));
				
                surfaceDescription.Albedo = lerpResult1058.rgb;
                surfaceDescription.Normal = lerpResult1425;
                surfaceDescription.BentNormal = float3( 0, 0, 1 );
                surfaceDescription.CoatMask = 0;
                surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = lerpResult982.rgb;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult981;
				surfaceDescription.Occlusion = lerpResult1057;
				surfaceDescription.Alpha = switchResult1230;

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

			sampler2D _WaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _WaterNormal;
			sampler2D _MicroWaveNormal;
			sampler2D _DetailNormal;
			sampler2D _DetailAlbedo;
			sampler2D _Noise;
			sampler2D _Detail2Normal;
			sampler2D _Detail2Albedo;
			sampler2D _Detail1GSmDetail2ASm;
			CBUFFER_START( UnityPerMaterial )
			float _WaterTessScale;
			float2 _WaterMixSpeed;
			float2 _WaterTiling;
			float _GlobalTiling;
			float _WaterNormalScale;
			float2 _WaterMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _DetailNormalScale;
			float2 _Detail1MainSpeed;
			float2 _CascadeMainSpeed;
			half _CascadeAngle;
			float _CascadeAngleFalloff;
			float2 _Detail1Tiling;
			float2 _NoiseTiling1;
			float _DetailNoisePower;
			float _Detail2NormalScale;
			float2 _Detail2MainSpeed;
			float2 _Detail2Tiling;
			float2 _NoiseTiling2;
			float _Detail2NoisePower;
			float _Distortion;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _CascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float4 _DetailAlbedoColor;
			float4 _Detail2AlbedoColor;
			float _CascadeNormalScale;
			float2 _CascadeTiling;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _DetailSpecular;
			float _Detail2Specular;
			float _WaterSmoothness;
			float _DetailSmoothness;
			float _Detail2Smoothness;
			half _WaterAOPower;
			half _DetailAOPower;
			half _Detail2AOPower;
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
				float2 appendResult706 = (float2(_WaterMixSpeed.y , _WaterMixSpeed.x));
				float2 uv01484 = inputMesh.uv0.xy * _WaterTiling + float2( 0,0 );
				float Globaltiling1185 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1487_0 = ( uv01484 * Globaltiling1185 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _WaterMixSpeed :  appendResult706 ) + temp_output_1487_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1472 = uv3829.x;
				float2 break1475 = ( _WaterMainSpeed * _WaterTiling );
				float temp_output_1477_0 = ( U1472 * break1475.x );
				float V1471 = uv3829.y;
				float temp_output_1478_0 = ( break1475.y * V1471 );
				float2 appendResult1480 = (float2(temp_output_1477_0 , temp_output_1478_0));
				float2 appendResult1481 = (float2(temp_output_1478_0 , temp_output_1477_0));
				float2 temp_output_1482_0 = (( (float)Direction723 == 1.0 ) ? appendResult1480 :  appendResult1481 );
				float temp_output_816_0 = ( _Time.y * 0.05 );
				float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1482_0 * Refresh11404 ) + temp_output_1487_0 );
				float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1482_0 * Refresh21406 ) + temp_output_1487_0 );
				float clampResult845 = clamp( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase1314 = clampResult845;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _WaterNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _WaterNormalScale ) , WaterSlowHeightBase1314);
				float temp_output_398_0 = ( ( _WaterTessScale * 0.3 ) * tex2Dlod( _WaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , WaterSlowHeightBase1314);
				float temp_output_415_0 = ( temp_output_398_0 + ( _WaterTessScale * lerpResult840 ) );
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsMeshToPS.ase_texcoord = screenPos;
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
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
				float3 vertexValue = ( (temp_output_415_0*1.0 + ( temp_output_415_0 * -0.5 )) * inputMesh.normalOS );

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
				float2 appendResult706 = (float2(_WaterMixSpeed.y , _WaterMixSpeed.x));
				float2 uv01484 = packedInput.ase_texcoord1.xy * _WaterTiling + float2( 0,0 );
				float Globaltiling1185 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1487_0 = ( uv01484 * Globaltiling1185 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _WaterMixSpeed :  appendResult706 ) + temp_output_1487_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = packedInput.ase_texcoord1.zw * float2( 1,1 ) + float2( 0,0 );
				float U1472 = uv3829.x;
				float2 break1475 = ( _WaterMainSpeed * _WaterTiling );
				float temp_output_1477_0 = ( U1472 * break1475.x );
				float V1471 = uv3829.y;
				float temp_output_1478_0 = ( break1475.y * V1471 );
				float2 appendResult1480 = (float2(temp_output_1477_0 , temp_output_1478_0));
				float2 appendResult1481 = (float2(temp_output_1478_0 , temp_output_1477_0));
				float2 temp_output_1482_0 = (( (float)Direction723 == 1.0 ) ? appendResult1480 :  appendResult1481 );
				float temp_output_816_0 = ( _Time.y * 0.05 );
				float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1482_0 * Refresh11404 ) + temp_output_1487_0 );
				float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1482_0 * Refresh21406 ) + temp_output_1487_0 );
				float clampResult845 = clamp( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase1314 = clampResult845;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2D( _WaterNormal, WaterSpeedValueMainFlowUV1830 ), _WaterNormalScale ) , UnpackNormalmapRGorAG( tex2D( _WaterNormal, WaterSpeedValueMainFlowUV2831 ), _WaterNormalScale ) , WaterSlowHeightBase1314);
				float2 temp_output_1246_0 = ( (lerpResult838).xy * float2( 0.05,0.05 ) );
				float3 temp_output_1250_0 = BlendNormal( UnpackNormalmapRGorAG( tex2D( _MicroWaveNormal, ( ( _MicroWaveTiling * WaterSpeedValueMix516 ) + temp_output_1246_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _WaterNormal, ( WaterSpeedValueMix516 + temp_output_1246_0 ) ), _MacroWaveNormalScale ) );
				float3 temp_output_24_0 = BlendNormal( temp_output_1250_0 , lerpResult838 );
				float3 ase_worldNormal = packedInput.ase_texcoord2.xyz;
				float clampResult259 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _CascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float clampResult285 = clamp( pow( abs( ( 1.0 - clampResult584 ) ) , _CascadeAngleFalloff ) , 0.0 , 1.0 );
				float WaterfallAngle1144 = clampResult285;
				float2 lerpResult1654 = lerp( _Detail1MainSpeed , _CascadeMainSpeed , ( WaterfallAngle1144 * 0.2 ));
				float2 break1494 = ( lerpResult1654 * _Detail1Tiling );
				float temp_output_1496_0 = ( U1472 * break1494.x );
				float temp_output_1497_0 = ( break1494.y * V1471 );
				float2 appendResult1499 = (float2(temp_output_1496_0 , temp_output_1497_0));
				float2 appendResult1498 = (float2(temp_output_1497_0 , temp_output_1496_0));
				float2 temp_output_1505_0 = (( (float)Direction723 == 1.0 ) ? appendResult1499 :  appendResult1498 );
				float2 uv01504 = packedInput.ase_texcoord1.xy * _Detail1Tiling + float2( 0,0 );
				float2 temp_output_1508_0 = ( uv01504 * Globaltiling1185 );
				float2 Detail1SpeedValueMainFlowUV11018 = ( ( temp_output_1505_0 * Refresh11404 ) + temp_output_1508_0 );
				float2 Detail1SpeedValueMainFlowUV21021 = ( ( temp_output_1505_0 * Refresh21406 ) + temp_output_1508_0 );
				float clampResult1291 = clamp( pow( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 7.0 ) , 0.0 , 1.0 );
				float SlowFlowHeightBase835 = clampResult1291;
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2D( _DetailNormal, Detail1SpeedValueMainFlowUV11018 ), _DetailNormalScale ) , UnpackNormalmapRGorAG( tex2D( _DetailNormal, Detail1SpeedValueMainFlowUV21021 ), _DetailNormalScale ) , SlowFlowHeightBase835);
				float4 lerpResult935 = lerp( tex2D( _DetailAlbedo, Detail1SpeedValueMainFlowUV11018 ) , tex2D( _DetailAlbedo, Detail1SpeedValueMainFlowUV21021 ) , SlowFlowHeightBase835);
				float2 break1588 = ( lerpResult1654 * _NoiseTiling1 );
				float temp_output_1591_0 = ( U1472 * break1588.x );
				float temp_output_1592_0 = ( break1588.y * V1471 );
				float2 appendResult1594 = (float2(temp_output_1591_0 , temp_output_1592_0));
				float2 appendResult1593 = (float2(temp_output_1592_0 , temp_output_1591_0));
				float2 temp_output_1598_0 = (( (float)Direction723 == 1.0 ) ? appendResult1594 :  appendResult1593 );
				float2 uv01599 = packedInput.ase_texcoord1.xy * _NoiseTiling1 + float2( 0,0 );
				float2 temp_output_1600_0 = ( uv01599 * Globaltiling1185 );
				float2 NoiseSpeedValueMainFlowUV11064 = ( ( temp_output_1598_0 * Refresh11404 ) + temp_output_1600_0 );
				float2 NoiseSpeedValueMainFlowUV21063 = ( ( temp_output_1598_0 * Refresh21406 ) + temp_output_1600_0 );
				float clampResult1386 = clamp( SlowFlowHeightBase835 , 0.0 , 1.0 );
				float lerpResult1014 = lerp( tex2D( _Noise, NoiseSpeedValueMainFlowUV11064 ).r , tex2D( _Noise, NoiseSpeedValueMainFlowUV21063 ).r , clampResult1386);
				float temp_output_1674_0 = abs( lerpResult1014 );
				float temp_output_484_0 = pow( temp_output_1674_0 , _DetailNoisePower );
				float clampResult488 = clamp( temp_output_484_0 , 0.0 , 1.0 );
				float lerpResult1083 = lerp( 0.0 , lerpResult935.a , clampResult488);
				float Detal_1_Alpha_Noise1158 = lerpResult1083;
				float3 lerpResult932 = lerp( temp_output_24_0 , lerpResult864 , Detal_1_Alpha_Noise1158);
				float2 lerpResult1659 = lerp( _Detail2MainSpeed , _CascadeMainSpeed , ( WaterfallAngle1144 * 0.2 ));
				float2 break1516 = ( lerpResult1659 * _Detail2Tiling );
				float temp_output_1518_0 = ( U1472 * break1516.x );
				float temp_output_1519_0 = ( break1516.y * V1471 );
				float2 appendResult1521 = (float2(temp_output_1518_0 , temp_output_1519_0));
				float2 appendResult1520 = (float2(temp_output_1519_0 , temp_output_1518_0));
				float2 temp_output_1524_0 = (( (float)Direction723 == 1.0 ) ? appendResult1521 :  appendResult1520 );
				float2 uv01534 = packedInput.ase_texcoord1.xy * _Detail2Tiling + float2( 0,0 );
				float2 temp_output_1527_0 = ( uv01534 * Globaltiling1185 );
				float2 Detail2SpeedValueMainFlowUV11022 = ( ( temp_output_1524_0 * Refresh11404 ) + temp_output_1527_0 );
				float2 Detail2SpeedValueMainFlowUV21025 = ( ( temp_output_1524_0 * Refresh21406 ) + temp_output_1527_0 );
				float clampResult1301 = clamp( pow( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 7.0 ) , 0.0 , 1.0 );
				float SlowFlowHeightBase21302 = clampResult1301;
				float3 lerpResult922 = lerp( UnpackNormalmapRGorAG( tex2D( _Detail2Normal, Detail2SpeedValueMainFlowUV11022 ), _Detail2NormalScale ) , UnpackNormalmapRGorAG( tex2D( _Detail2Normal, Detail2SpeedValueMainFlowUV21025 ), _Detail2NormalScale ) , SlowFlowHeightBase21302);
				float4 lerpResult947 = lerp( tex2D( _Detail2Albedo, Detail2SpeedValueMainFlowUV11022 ) , tex2D( _Detail2Albedo, Detail2SpeedValueMainFlowUV21025 ) , SlowFlowHeightBase21302);
				float2 break1566 = ( lerpResult1659 * _NoiseTiling2 );
				float temp_output_1569_0 = ( U1472 * break1566.x );
				float temp_output_1568_0 = ( break1566.y * V1471 );
				float2 appendResult1570 = (float2(temp_output_1569_0 , temp_output_1568_0));
				float2 appendResult1572 = (float2(temp_output_1568_0 , temp_output_1569_0));
				float2 temp_output_1573_0 = (( (float)Direction723 == 1.0 ) ? appendResult1570 :  appendResult1572 );
				float2 uv01576 = packedInput.ase_texcoord1.xy * _NoiseTiling2 + float2( 0,0 );
				float2 temp_output_1579_0 = ( uv01576 * Globaltiling1185 );
				float2 NoiseSpeedValueMainFlowUV1v21583 = ( ( temp_output_1573_0 * Refresh11404 ) + temp_output_1579_0 );
				float2 NoiseSpeedValueMainFlowUV2v21584 = ( ( temp_output_1573_0 * Refresh21406 ) + temp_output_1579_0 );
				float clampResult1387 = clamp( SlowFlowHeightBase21302 , 0.0 , 1.0 );
				float lerpResult1016 = lerp( tex2D( _Noise, NoiseSpeedValueMainFlowUV1v21583 ).r , tex2D( _Noise, NoiseSpeedValueMainFlowUV2v21584 ).r , clampResult1387);
				float temp_output_960_0 = pow( abs( max( lerpResult1016 , temp_output_1674_0 ) ) , _Detail2NoisePower );
				float clampResult962 = clamp( temp_output_960_0 , 0.0 , 1.0 );
				float lerpResult1125 = lerp( 0.0 , lerpResult947.a , clampResult962);
				float Detal_2_Alpha_Noise1159 = lerpResult1125;
				float3 lerpResult933 = lerp( lerpResult932 , lerpResult922 , Detal_2_Alpha_Noise1159);
				float4 fetchOpaqueVal65 = ASEHDSampleSceneColor(( float3( ( appendResult163 / ase_grabScreenPosNorm.a ) ,  0.0 ) + ( lerpResult933 * _Distortion ) ).xy, 0, GetInverseCurrentExposureMultiplier()*0.001);
				float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
				float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
				float lerpResult1662 = lerp( pow( abs( ( temp_output_89_0 * _ShalowFalloffMultiply ) ) , ( _ShalowFalloffPower * -1.0 ) ) , 100.0 , ( _CascadeTransparency * WaterfallAngle1144 ));
				float clampResult1259 = clamp( saturate( lerpResult1662 ) , 0.0 , 1.0 );
				float4 lerpResult13 = lerp( _DeepColor , _ShalowColor , clampResult1259);
				float temp_output_398_0 = ( ( _WaterTessScale * 0.3 ) * tex2D( _WaterTesselation, ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ) ).a );
				float lerpResult840 = lerp( tex2D( _WaterTesselation, WaterSpeedValueMainFlowUV1830 ).a , tex2D( _WaterTesselation, WaterSpeedValueMainFlowUV2831 ).a , WaterSlowHeightBase1314);
				float3 ase_worldPos = packedInput.ase_texcoord3.xyz;
				float Distance1207 = distance( ase_worldPos , _WorldSpaceCameraPos );
				float clampResult1216 = clamp( ( Distance1207 / _WaveTranslucencyFallOffDistance ) , 0.0 , 1.0 );
				float lerpResult1217 = lerp( ( pow( abs( ( ( temp_output_398_0 + lerpResult840 ) * _WaveTranslucencyHardness ) ) , _WaveTranslucencyPower ) * _WaveTranslucencyMultiply ) , 0.0 , clampResult1216);
				float clampResult1218 = clamp( lerpResult1217 , 0.0 , 1.0 );
				float Microwaves1219 = clampResult1218;
				float4 lerpResult1258 = lerp( lerpResult13 , _ShalowColor , Microwaves1219);
				float4 lerpResult773 = lerp( fetchOpaqueVal65 , lerpResult1258 , ( 1.0 - clampResult1259 ));
				float4 temp_output_1106_0 = ( lerpResult935 * _DetailAlbedoColor );
				float4 lerpResult964 = lerp( lerpResult773 , temp_output_1106_0 , Detal_1_Alpha_Noise1158);
				float4 temp_output_1108_0 = ( lerpResult947 * _Detail2AlbedoColor );
				float4 lerpResult987 = lerp( lerpResult964 , temp_output_1108_0 , Detal_2_Alpha_Noise1159);
				float Detal_1_Alpha1146 = lerpResult935.a;
				float4 lerpResult1132 = lerp( lerpResult773 , temp_output_1106_0 , Detal_1_Alpha1146);
				float4 VertexColorRGB1172 = ( packedInput.ase_color / float4( 1,1,1,1 ) );
				float4 break1181 = VertexColorRGB1172;
				float4 lerpResult986 = lerp( lerpResult987 , lerpResult1132 , break1181.r);
				float Detal_2_Alpha1152 = lerpResult947.a;
				float4 lerpResult1133 = lerp( lerpResult773 , temp_output_1108_0 , Detal_2_Alpha1152);
				float4 lerpResult984 = lerp( lerpResult986 , lerpResult1133 , break1181.g);
				float4 lerpResult1113 = lerp( lerpResult984 , lerpResult773 , break1181.b);
				float4 lerpResult1058 = lerp( lerpResult1113 , lerpResult773 , WaterfallAngle1144);
				
				float3 lerpResult1134 = lerp( temp_output_24_0 , lerpResult864 , Detal_1_Alpha1146);
				float4 break1177 = VertexColorRGB1172;
				float3 lerpResult748 = lerp( lerpResult933 , lerpResult1134 , break1177.r);
				float3 lerpResult1135 = lerp( temp_output_24_0 , lerpResult922 , Detal_2_Alpha1152);
				float3 lerpResult749 = lerp( lerpResult748 , lerpResult1135 , break1177.g);
				float3 lerpResult750 = lerp( lerpResult749 , temp_output_24_0 , break1177.b);
				float2 break1609 = ( _CascadeMainSpeed * _CascadeTiling );
				float temp_output_1611_0 = ( U1472 * break1609.x );
				float temp_output_1610_0 = ( break1609.y * V1471 );
				float2 appendResult1613 = (float2(temp_output_1611_0 , temp_output_1610_0));
				float2 appendResult1614 = (float2(temp_output_1610_0 , temp_output_1611_0));
				float2 temp_output_1616_0 = (( (float)Direction723 == 1.0 ) ? appendResult1613 :  appendResult1614 );
				float temp_output_1639_0 = ( _Time.y * 0.1 );
				float Refresh1v21643 = frac( ( temp_output_1639_0 + 1.0 ) );
				float2 uv01617 = packedInput.ase_texcoord1.xy * _CascadeTiling + float2( 0,0 );
				float2 temp_output_1622_0 = ( uv01617 * Globaltiling1185 );
				float2 SmallCascadeSpeedValueMainFlowUV11625 = ( ( temp_output_1616_0 * Refresh1v21643 ) + temp_output_1622_0 );
				float Refresh2v21645 = frac( ( temp_output_1639_0 + 0.5 ) );
				float2 SmallCascadeSpeedValueMainFlowUV21626 = ( ( temp_output_1616_0 * Refresh2v21645 ) + temp_output_1622_0 );
				float clampResult1650 = clamp( abs( ( ( Refresh1v21643 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase21651 = clampResult1650;
				float3 lerpResult1634 = lerp( UnpackNormalmapRGorAG( tex2D( _WaterNormal, SmallCascadeSpeedValueMainFlowUV11625 ), _CascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _WaterNormal, SmallCascadeSpeedValueMainFlowUV21626 ), _CascadeNormalScale ) , WaterSlowHeightBase21651);
				float3 lerpResult983 = lerp( lerpResult750 , BlendNormal( temp_output_1250_0 , lerpResult1634 ) , WaterfallAngle1144);
				float3 appendResult1422 = (float3(_FarNormalPower , _FarNormalPower , 1.0));
				float clampResult1423 = clamp( pow( abs( ( Distance1207 / _FarNormalBlendStartDistance ) ) , _FarNormalBlendThreshold ) , 0.0 , 1.0 );
				float3 lerpResult1425 = lerp( lerpResult983 , ( lerpResult983 * appendResult1422 ) , clampResult1423);
				
				float lerpResult1124 = lerp( _WaterSpecularFar , _WaterSpecularClose , pow( abs( clampResult1259 ) , _WaterSpecularThreshold ));
				float4 temp_cast_16 = (lerpResult1124).xxxx;
				float4 clampResult1050 = clamp( ( temp_output_1106_0 * float4( 0.3,0.3019608,0.3019608,0 ) ) , float4( 0,0,0,0 ) , float4( 0.5,0.5019608,0.5019608,0 ) );
				float4 temp_output_1051_0 = ( _DetailSpecular * clampResult1050 );
				float4 lerpResult969 = lerp( temp_cast_16 , temp_output_1051_0 , Detal_1_Alpha_Noise1158);
				float4 clampResult1053 = clamp( ( lerpResult947 * float4( 0.3,0.3019608,0.3019608,0 ) ) , float4( 0,0,0,0 ) , float4( 0.5,0.5019608,0.5019608,0 ) );
				float4 temp_output_1052_0 = ( _Detail2Specular * clampResult1053 );
				float4 lerpResult970 = lerp( lerpResult969 , temp_output_1052_0 , Detal_2_Alpha_Noise1159);
				float4 temp_cast_17 = (lerpResult1124).xxxx;
				float4 lerpResult1136 = lerp( temp_cast_17 , temp_output_1051_0 , Detal_1_Alpha1146);
				float4 break1179 = VertexColorRGB1172;
				float4 lerpResult130 = lerp( lerpResult970 , lerpResult1136 , break1179.r);
				float4 temp_cast_18 = (lerpResult1124).xxxx;
				float4 lerpResult1137 = lerp( temp_cast_18 , temp_output_1052_0 , Detal_2_Alpha1152);
				float4 lerpResult785 = lerp( lerpResult130 , lerpResult1137 , break1179.g);
				float4 temp_cast_19 = (lerpResult1124).xxxx;
				float4 lerpResult786 = lerp( lerpResult785 , temp_cast_19 , break1179.b);
				float4 temp_cast_20 = (lerpResult1124).xxxx;
				float4 lerpResult982 = lerp( lerpResult786 , temp_cast_20 , WaterfallAngle1144);
				
				float4 lerpResult1089 = lerp( tex2D( _Detail1GSmDetail2ASm, Detail1SpeedValueMainFlowUV11018 ) , tex2D( _Detail1GSmDetail2ASm, Detail1SpeedValueMainFlowUV21021 ) , SlowFlowHeightBase835);
				float temp_output_1093_0 = ( lerpResult1089.g * _DetailSmoothness );
				float lerpResult973 = lerp( _WaterSmoothness , temp_output_1093_0 , Detal_1_Alpha_Noise1158);
				float4 lerpResult1102 = lerp( tex2D( _Detail1GSmDetail2ASm, Detail2SpeedValueMainFlowUV11022 ) , tex2D( _Detail1GSmDetail2ASm, Detail2SpeedValueMainFlowUV21025 ) , SlowFlowHeightBase21302);
				float temp_output_1094_0 = ( lerpResult1102.a * _Detail2Smoothness );
				float lerpResult974 = lerp( lerpResult973 , temp_output_1094_0 , Detal_2_Alpha_Noise1159);
				float lerpResult1129 = lerp( _WaterSmoothness , temp_output_1093_0 , Detal_1_Alpha1146);
				float4 break1174 = VertexColorRGB1172;
				float lerpResult975 = lerp( lerpResult974 , lerpResult1129 , break1174.r);
				float lerpResult1127 = lerp( _WaterSmoothness , temp_output_1094_0 , Detal_2_Alpha1152);
				float lerpResult972 = lerp( lerpResult975 , lerpResult1127 , break1174.g);
				float lerpResult971 = lerp( lerpResult972 , _WaterSmoothness , break1174.b);
				float lerpResult981 = lerp( lerpResult971 , _WaterSmoothness , WaterfallAngle1144);
				
				float lerpResult1038 = lerp( _WaterAOPower , _DetailAOPower , Detal_1_Alpha_Noise1158);
				float lerpResult1039 = lerp( lerpResult1038 , _Detail2AOPower , Detal_2_Alpha_Noise1159);
				float lerpResult1130 = lerp( _WaterAOPower , _DetailAOPower , Detal_1_Alpha1146);
				float4 break1175 = VertexColorRGB1172;
				float lerpResult1040 = lerp( lerpResult1039 , lerpResult1130 , break1175.r);
				float lerpResult1128 = lerp( _WaterAOPower , _Detail2AOPower , Detal_2_Alpha1152);
				float lerpResult1041 = lerp( lerpResult1040 , lerpResult1128 , break1175.g);
				float lerpResult1042 = lerp( lerpResult1041 , _WaterAOPower , break1175.b);
				float lerpResult1057 = lerp( lerpResult1042 , _WaterAOPower , WaterfallAngle1144);
				
				float clampResult1234 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1238 = clamp( pow( abs( clampResult1234 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1238 * packedInput.ase_color.a );
				float switchResult1230 = (((ase_vface>0)?(temp_output_779_0):(( temp_output_779_0 * _BackfaceAlpha ))));
				
				surfaceDescription.Albedo = lerpResult1058.rgb;
				surfaceDescription.Normal = lerpResult1425;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = lerpResult982.rgb;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult981;
				surfaceDescription.Occlusion = lerpResult1057;
				surfaceDescription.Alpha = switchResult1230;

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

			sampler2D _WaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _WaterNormal;
			CBUFFER_START( UnityPerMaterial )
			float _WaterTessScale;
			float2 _WaterMixSpeed;
			float2 _WaterTiling;
			float _GlobalTiling;
			float _WaterNormalScale;
			float2 _WaterMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _DetailNormalScale;
			float2 _Detail1MainSpeed;
			float2 _CascadeMainSpeed;
			half _CascadeAngle;
			float _CascadeAngleFalloff;
			float2 _Detail1Tiling;
			float2 _NoiseTiling1;
			float _DetailNoisePower;
			float _Detail2NormalScale;
			float2 _Detail2MainSpeed;
			float2 _Detail2Tiling;
			float2 _NoiseTiling2;
			float _Detail2NoisePower;
			float _Distortion;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _CascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float4 _DetailAlbedoColor;
			float4 _Detail2AlbedoColor;
			float _CascadeNormalScale;
			float2 _CascadeTiling;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _DetailSpecular;
			float _Detail2Specular;
			float _WaterSmoothness;
			float _DetailSmoothness;
			float _Detail2Smoothness;
			half _WaterAOPower;
			half _DetailAOPower;
			half _Detail2AOPower;
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
				float2 appendResult706 = (float2(_WaterMixSpeed.y , _WaterMixSpeed.x));
				float2 uv01484 = inputMesh.ase_texcoord * _WaterTiling + float2( 0,0 );
				float Globaltiling1185 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1487_0 = ( uv01484 * Globaltiling1185 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _WaterMixSpeed :  appendResult706 ) + temp_output_1487_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1472 = uv3829.x;
				float2 break1475 = ( _WaterMainSpeed * _WaterTiling );
				float temp_output_1477_0 = ( U1472 * break1475.x );
				float V1471 = uv3829.y;
				float temp_output_1478_0 = ( break1475.y * V1471 );
				float2 appendResult1480 = (float2(temp_output_1477_0 , temp_output_1478_0));
				float2 appendResult1481 = (float2(temp_output_1478_0 , temp_output_1477_0));
				float2 temp_output_1482_0 = (( (float)Direction723 == 1.0 ) ? appendResult1480 :  appendResult1481 );
				float temp_output_816_0 = ( _Time.y * 0.05 );
				float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1482_0 * Refresh11404 ) + temp_output_1487_0 );
				float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1482_0 * Refresh21406 ) + temp_output_1487_0 );
				float clampResult845 = clamp( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase1314 = clampResult845;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _WaterNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _WaterNormalScale ) , WaterSlowHeightBase1314);
				float temp_output_398_0 = ( ( _WaterTessScale * 0.3 ) * tex2Dlod( _WaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , WaterSlowHeightBase1314);
				float temp_output_415_0 = ( temp_output_398_0 + ( _WaterTessScale * lerpResult840 ) );
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsMeshToPS.ase_texcoord1 = screenPos;
				
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( (temp_output_415_0*1.0 + ( temp_output_415_0 * -0.5 )) * inputMesh.normalOS );

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
				float clampResult1234 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1238 = clamp( pow( abs( clampResult1234 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1238 * packedInput.ase_color.a );
				float switchResult1230 = (((ase_vface>0)?(temp_output_779_0):(( temp_output_779_0 * _BackfaceAlpha ))));
				
				surfaceDescription.Alpha = switchResult1230;

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

			sampler2D _WaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _WaterNormal;
			CBUFFER_START( UnityPerMaterial )
			float _WaterTessScale;
			float2 _WaterMixSpeed;
			float2 _WaterTiling;
			float _GlobalTiling;
			float _WaterNormalScale;
			float2 _WaterMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _DetailNormalScale;
			float2 _Detail1MainSpeed;
			float2 _CascadeMainSpeed;
			half _CascadeAngle;
			float _CascadeAngleFalloff;
			float2 _Detail1Tiling;
			float2 _NoiseTiling1;
			float _DetailNoisePower;
			float _Detail2NormalScale;
			float2 _Detail2MainSpeed;
			float2 _Detail2Tiling;
			float2 _NoiseTiling2;
			float _Detail2NoisePower;
			float _Distortion;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _CascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float4 _DetailAlbedoColor;
			float4 _Detail2AlbedoColor;
			float _CascadeNormalScale;
			float2 _CascadeTiling;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _DetailSpecular;
			float _Detail2Specular;
			float _WaterSmoothness;
			float _DetailSmoothness;
			float _Detail2Smoothness;
			half _WaterAOPower;
			half _DetailAOPower;
			half _Detail2AOPower;
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
				float2 appendResult706 = (float2(_WaterMixSpeed.y , _WaterMixSpeed.x));
				float2 uv01484 = inputMesh.ase_texcoord * _WaterTiling + float2( 0,0 );
				float Globaltiling1185 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1487_0 = ( uv01484 * Globaltiling1185 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _WaterMixSpeed :  appendResult706 ) + temp_output_1487_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1472 = uv3829.x;
				float2 break1475 = ( _WaterMainSpeed * _WaterTiling );
				float temp_output_1477_0 = ( U1472 * break1475.x );
				float V1471 = uv3829.y;
				float temp_output_1478_0 = ( break1475.y * V1471 );
				float2 appendResult1480 = (float2(temp_output_1477_0 , temp_output_1478_0));
				float2 appendResult1481 = (float2(temp_output_1478_0 , temp_output_1477_0));
				float2 temp_output_1482_0 = (( (float)Direction723 == 1.0 ) ? appendResult1480 :  appendResult1481 );
				float temp_output_816_0 = ( _Time.y * 0.05 );
				float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1482_0 * Refresh11404 ) + temp_output_1487_0 );
				float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1482_0 * Refresh21406 ) + temp_output_1487_0 );
				float clampResult845 = clamp( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase1314 = clampResult845;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _WaterNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _WaterNormalScale ) , WaterSlowHeightBase1314);
				float temp_output_398_0 = ( ( _WaterTessScale * 0.3 ) * tex2Dlod( _WaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , WaterSlowHeightBase1314);
				float temp_output_415_0 = ( temp_output_398_0 + ( _WaterTessScale * lerpResult840 ) );
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsMeshToPS.ase_texcoord = screenPos;
				
				outputPackedVaryingsMeshToPS.ase_color = inputMesh.ase_color;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( (temp_output_415_0*1.0 + ( temp_output_415_0 * -0.5 )) * inputMesh.normalOS );

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
				float clampResult1234 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1238 = clamp( pow( abs( clampResult1234 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1238 * packedInput.ase_color.a );
				float switchResult1230 = (((ase_vface>0)?(temp_output_779_0):(( temp_output_779_0 * _BackfaceAlpha ))));
				
				surfaceDescription.Alpha = switchResult1230;

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

			sampler2D _WaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _WaterNormal;
			sampler2D _Detail1GSmDetail2ASm;
			sampler2D _DetailAlbedo;
			sampler2D _Noise;
			sampler2D _Detail2Albedo;
			CBUFFER_START( UnityPerMaterial )
			float _WaterTessScale;
			float2 _WaterMixSpeed;
			float2 _WaterTiling;
			float _GlobalTiling;
			float _WaterNormalScale;
			float2 _WaterMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _DetailNormalScale;
			float2 _Detail1MainSpeed;
			float2 _CascadeMainSpeed;
			half _CascadeAngle;
			float _CascadeAngleFalloff;
			float2 _Detail1Tiling;
			float2 _NoiseTiling1;
			float _DetailNoisePower;
			float _Detail2NormalScale;
			float2 _Detail2MainSpeed;
			float2 _Detail2Tiling;
			float2 _NoiseTiling2;
			float _Detail2NoisePower;
			float _Distortion;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _CascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float4 _DetailAlbedoColor;
			float4 _Detail2AlbedoColor;
			float _CascadeNormalScale;
			float2 _CascadeTiling;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _DetailSpecular;
			float _Detail2Specular;
			float _WaterSmoothness;
			float _DetailSmoothness;
			float _Detail2Smoothness;
			half _WaterAOPower;
			half _DetailAOPower;
			half _Detail2AOPower;
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
				float2 appendResult706 = (float2(_WaterMixSpeed.y , _WaterMixSpeed.x));
				float2 uv01484 = inputMesh.uv0.xy * _WaterTiling + float2( 0,0 );
				float Globaltiling1185 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1487_0 = ( uv01484 * Globaltiling1185 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _WaterMixSpeed :  appendResult706 ) + temp_output_1487_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.uv3.xy * float2( 1,1 ) + float2( 0,0 );
				float U1472 = uv3829.x;
				float2 break1475 = ( _WaterMainSpeed * _WaterTiling );
				float temp_output_1477_0 = ( U1472 * break1475.x );
				float V1471 = uv3829.y;
				float temp_output_1478_0 = ( break1475.y * V1471 );
				float2 appendResult1480 = (float2(temp_output_1477_0 , temp_output_1478_0));
				float2 appendResult1481 = (float2(temp_output_1478_0 , temp_output_1477_0));
				float2 temp_output_1482_0 = (( (float)Direction723 == 1.0 ) ? appendResult1480 :  appendResult1481 );
				float temp_output_816_0 = ( _Time.y * 0.05 );
				float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1482_0 * Refresh11404 ) + temp_output_1487_0 );
				float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1482_0 * Refresh21406 ) + temp_output_1487_0 );
				float clampResult845 = clamp( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase1314 = clampResult845;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _WaterNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _WaterNormalScale ) , WaterSlowHeightBase1314);
				float temp_output_398_0 = ( ( _WaterTessScale * 0.3 ) * tex2Dlod( _WaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , WaterSlowHeightBase1314);
				float temp_output_415_0 = ( temp_output_398_0 + ( _WaterTessScale * lerpResult840 ) );
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsMeshToPS.ase_texcoord8 = screenPos;
				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( (temp_output_415_0*1.0 + ( temp_output_415_0 * -0.5 )) * inputMesh.normalOS );

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
				int Direction723 = _UVVDirection1UDirection0;
				float2 uv3829 = packedInput.interp06.xy * float2( 1,1 ) + float2( 0,0 );
				float U1472 = uv3829.x;
				float clampResult259 = clamp( normalWS.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _CascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float clampResult285 = clamp( pow( abs( ( 1.0 - clampResult584 ) ) , _CascadeAngleFalloff ) , 0.0 , 1.0 );
				float WaterfallAngle1144 = clampResult285;
				float2 lerpResult1654 = lerp( _Detail1MainSpeed , _CascadeMainSpeed , ( WaterfallAngle1144 * 0.2 ));
				float2 break1494 = ( lerpResult1654 * _Detail1Tiling );
				float temp_output_1496_0 = ( U1472 * break1494.x );
				float V1471 = uv3829.y;
				float temp_output_1497_0 = ( break1494.y * V1471 );
				float2 appendResult1499 = (float2(temp_output_1496_0 , temp_output_1497_0));
				float2 appendResult1498 = (float2(temp_output_1497_0 , temp_output_1496_0));
				float2 temp_output_1505_0 = (( (float)Direction723 == 1.0 ) ? appendResult1499 :  appendResult1498 );
				float temp_output_816_0 = ( _Time.y * 0.05 );
				float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 uv01504 = packedInput.interp03.xy * _Detail1Tiling + float2( 0,0 );
				float Globaltiling1185 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1508_0 = ( uv01504 * Globaltiling1185 );
				float2 Detail1SpeedValueMainFlowUV11018 = ( ( temp_output_1505_0 * Refresh11404 ) + temp_output_1508_0 );
				float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 Detail1SpeedValueMainFlowUV21021 = ( ( temp_output_1505_0 * Refresh21406 ) + temp_output_1508_0 );
				float clampResult1291 = clamp( pow( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 7.0 ) , 0.0 , 1.0 );
				float SlowFlowHeightBase835 = clampResult1291;
				float4 lerpResult1089 = lerp( tex2D( _Detail1GSmDetail2ASm, Detail1SpeedValueMainFlowUV11018 ) , tex2D( _Detail1GSmDetail2ASm, Detail1SpeedValueMainFlowUV21021 ) , SlowFlowHeightBase835);
				float temp_output_1093_0 = ( lerpResult1089.g * _DetailSmoothness );
				float4 lerpResult935 = lerp( tex2D( _DetailAlbedo, Detail1SpeedValueMainFlowUV11018 ) , tex2D( _DetailAlbedo, Detail1SpeedValueMainFlowUV21021 ) , SlowFlowHeightBase835);
				float2 break1588 = ( lerpResult1654 * _NoiseTiling1 );
				float temp_output_1591_0 = ( U1472 * break1588.x );
				float temp_output_1592_0 = ( break1588.y * V1471 );
				float2 appendResult1594 = (float2(temp_output_1591_0 , temp_output_1592_0));
				float2 appendResult1593 = (float2(temp_output_1592_0 , temp_output_1591_0));
				float2 temp_output_1598_0 = (( (float)Direction723 == 1.0 ) ? appendResult1594 :  appendResult1593 );
				float2 uv01599 = packedInput.interp03.xy * _NoiseTiling1 + float2( 0,0 );
				float2 temp_output_1600_0 = ( uv01599 * Globaltiling1185 );
				float2 NoiseSpeedValueMainFlowUV11064 = ( ( temp_output_1598_0 * Refresh11404 ) + temp_output_1600_0 );
				float2 NoiseSpeedValueMainFlowUV21063 = ( ( temp_output_1598_0 * Refresh21406 ) + temp_output_1600_0 );
				float clampResult1386 = clamp( SlowFlowHeightBase835 , 0.0 , 1.0 );
				float lerpResult1014 = lerp( tex2D( _Noise, NoiseSpeedValueMainFlowUV11064 ).r , tex2D( _Noise, NoiseSpeedValueMainFlowUV21063 ).r , clampResult1386);
				float temp_output_1674_0 = abs( lerpResult1014 );
				float temp_output_484_0 = pow( temp_output_1674_0 , _DetailNoisePower );
				float clampResult488 = clamp( temp_output_484_0 , 0.0 , 1.0 );
				float lerpResult1083 = lerp( 0.0 , lerpResult935.a , clampResult488);
				float Detal_1_Alpha_Noise1158 = lerpResult1083;
				float lerpResult973 = lerp( _WaterSmoothness , temp_output_1093_0 , Detal_1_Alpha_Noise1158);
				float2 lerpResult1659 = lerp( _Detail2MainSpeed , _CascadeMainSpeed , ( WaterfallAngle1144 * 0.2 ));
				float2 break1516 = ( lerpResult1659 * _Detail2Tiling );
				float temp_output_1518_0 = ( U1472 * break1516.x );
				float temp_output_1519_0 = ( break1516.y * V1471 );
				float2 appendResult1521 = (float2(temp_output_1518_0 , temp_output_1519_0));
				float2 appendResult1520 = (float2(temp_output_1519_0 , temp_output_1518_0));
				float2 temp_output_1524_0 = (( (float)Direction723 == 1.0 ) ? appendResult1521 :  appendResult1520 );
				float2 uv01534 = packedInput.interp03.xy * _Detail2Tiling + float2( 0,0 );
				float2 temp_output_1527_0 = ( uv01534 * Globaltiling1185 );
				float2 Detail2SpeedValueMainFlowUV11022 = ( ( temp_output_1524_0 * Refresh11404 ) + temp_output_1527_0 );
				float2 Detail2SpeedValueMainFlowUV21025 = ( ( temp_output_1524_0 * Refresh21406 ) + temp_output_1527_0 );
				float clampResult1301 = clamp( pow( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 7.0 ) , 0.0 , 1.0 );
				float SlowFlowHeightBase21302 = clampResult1301;
				float4 lerpResult1102 = lerp( tex2D( _Detail1GSmDetail2ASm, Detail2SpeedValueMainFlowUV11022 ) , tex2D( _Detail1GSmDetail2ASm, Detail2SpeedValueMainFlowUV21025 ) , SlowFlowHeightBase21302);
				float temp_output_1094_0 = ( lerpResult1102.a * _Detail2Smoothness );
				float4 lerpResult947 = lerp( tex2D( _Detail2Albedo, Detail2SpeedValueMainFlowUV11022 ) , tex2D( _Detail2Albedo, Detail2SpeedValueMainFlowUV21025 ) , SlowFlowHeightBase21302);
				float2 break1566 = ( lerpResult1659 * _NoiseTiling2 );
				float temp_output_1569_0 = ( U1472 * break1566.x );
				float temp_output_1568_0 = ( break1566.y * V1471 );
				float2 appendResult1570 = (float2(temp_output_1569_0 , temp_output_1568_0));
				float2 appendResult1572 = (float2(temp_output_1568_0 , temp_output_1569_0));
				float2 temp_output_1573_0 = (( (float)Direction723 == 1.0 ) ? appendResult1570 :  appendResult1572 );
				float2 uv01576 = packedInput.interp03.xy * _NoiseTiling2 + float2( 0,0 );
				float2 temp_output_1579_0 = ( uv01576 * Globaltiling1185 );
				float2 NoiseSpeedValueMainFlowUV1v21583 = ( ( temp_output_1573_0 * Refresh11404 ) + temp_output_1579_0 );
				float2 NoiseSpeedValueMainFlowUV2v21584 = ( ( temp_output_1573_0 * Refresh21406 ) + temp_output_1579_0 );
				float clampResult1387 = clamp( SlowFlowHeightBase21302 , 0.0 , 1.0 );
				float lerpResult1016 = lerp( tex2D( _Noise, NoiseSpeedValueMainFlowUV1v21583 ).r , tex2D( _Noise, NoiseSpeedValueMainFlowUV2v21584 ).r , clampResult1387);
				float temp_output_960_0 = pow( abs( max( lerpResult1016 , temp_output_1674_0 ) ) , _Detail2NoisePower );
				float clampResult962 = clamp( temp_output_960_0 , 0.0 , 1.0 );
				float lerpResult1125 = lerp( 0.0 , lerpResult947.a , clampResult962);
				float Detal_2_Alpha_Noise1159 = lerpResult1125;
				float lerpResult974 = lerp( lerpResult973 , temp_output_1094_0 , Detal_2_Alpha_Noise1159);
				float Detal_1_Alpha1146 = lerpResult935.a;
				float lerpResult1129 = lerp( _WaterSmoothness , temp_output_1093_0 , Detal_1_Alpha1146);
				float4 VertexColorRGB1172 = ( packedInput.interp07 / float4( 1,1,1,1 ) );
				float4 break1174 = VertexColorRGB1172;
				float lerpResult975 = lerp( lerpResult974 , lerpResult1129 , break1174.r);
				float Detal_2_Alpha1152 = lerpResult947.a;
				float lerpResult1127 = lerp( _WaterSmoothness , temp_output_1094_0 , Detal_2_Alpha1152);
				float lerpResult972 = lerp( lerpResult975 , lerpResult1127 , break1174.g);
				float lerpResult971 = lerp( lerpResult972 , _WaterSmoothness , break1174.b);
				float lerpResult981 = lerp( lerpResult971 , _WaterSmoothness , WaterfallAngle1144);
				
				float4 screenPos = packedInput.ase_texcoord8;
				float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
				float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
				float clampResult1234 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1238 = clamp( pow( abs( clampResult1234 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1238 * packedInput.interp07.a );
				float switchResult1230 = (((ase_vface>0)?(temp_output_779_0):(( temp_output_779_0 * _BackfaceAlpha ))));
				
				surfaceDescription.Smoothness = lerpResult981;
				surfaceDescription.Alpha = switchResult1230;

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
				float4 ase_color : COLOR;
				float4 ase_texcoord5 : TEXCOORD5;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			sampler2D _WaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _WaterNormal;
			sampler2D _Detail1GSmDetail2ASm;
			sampler2D _DetailAlbedo;
			sampler2D _Noise;
			sampler2D _Detail2Albedo;
			CBUFFER_START( UnityPerMaterial )
			float _WaterTessScale;
			float2 _WaterMixSpeed;
			float2 _WaterTiling;
			float _GlobalTiling;
			float _WaterNormalScale;
			float2 _WaterMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _DetailNormalScale;
			float2 _Detail1MainSpeed;
			float2 _CascadeMainSpeed;
			half _CascadeAngle;
			float _CascadeAngleFalloff;
			float2 _Detail1Tiling;
			float2 _NoiseTiling1;
			float _DetailNoisePower;
			float _Detail2NormalScale;
			float2 _Detail2MainSpeed;
			float2 _Detail2Tiling;
			float2 _NoiseTiling2;
			float _Detail2NoisePower;
			float _Distortion;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _CascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float4 _DetailAlbedoColor;
			float4 _Detail2AlbedoColor;
			float _CascadeNormalScale;
			float2 _CascadeTiling;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _DetailSpecular;
			float _Detail2Specular;
			float _WaterSmoothness;
			float _DetailSmoothness;
			float _Detail2Smoothness;
			half _WaterAOPower;
			half _DetailAOPower;
			half _Detail2AOPower;
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
				float2 appendResult706 = (float2(_WaterMixSpeed.y , _WaterMixSpeed.x));
				float2 uv01484 = inputMesh.ase_texcoord * _WaterTiling + float2( 0,0 );
				float Globaltiling1185 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1487_0 = ( uv01484 * Globaltiling1185 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _WaterMixSpeed :  appendResult706 ) + temp_output_1487_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1472 = uv3829.x;
				float2 break1475 = ( _WaterMainSpeed * _WaterTiling );
				float temp_output_1477_0 = ( U1472 * break1475.x );
				float V1471 = uv3829.y;
				float temp_output_1478_0 = ( break1475.y * V1471 );
				float2 appendResult1480 = (float2(temp_output_1477_0 , temp_output_1478_0));
				float2 appendResult1481 = (float2(temp_output_1478_0 , temp_output_1477_0));
				float2 temp_output_1482_0 = (( (float)Direction723 == 1.0 ) ? appendResult1480 :  appendResult1481 );
				float temp_output_816_0 = ( _Time.y * 0.05 );
				float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1482_0 * Refresh11404 ) + temp_output_1487_0 );
				float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1482_0 * Refresh21406 ) + temp_output_1487_0 );
				float clampResult845 = clamp( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase1314 = clampResult845;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _WaterNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _WaterNormalScale ) , WaterSlowHeightBase1314);
				float temp_output_398_0 = ( ( _WaterTessScale * 0.3 ) * tex2Dlod( _WaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , WaterSlowHeightBase1314);
				float temp_output_415_0 = ( temp_output_398_0 + ( _WaterTessScale * lerpResult840 ) );
				
				float3 ase_worldNormal = TransformObjectToWorldNormal(inputMesh.normalOS);
				outputPackedVaryingsToPS.ase_texcoord4.xyz = ase_worldNormal;
				
				float4 ase_clipPos = TransformWorldToHClip( TransformObjectToWorld(inputMesh.positionOS));
				float4 screenPos = ComputeScreenPos( ase_clipPos , _ProjectionParams.x );
				outputPackedVaryingsToPS.ase_texcoord5 = screenPos;
				
				outputPackedVaryingsToPS.ase_texcoord3.xy = inputMesh.ase_texcoord3.xy;
				outputPackedVaryingsToPS.ase_texcoord3.zw = inputMesh.ase_texcoord.xy;
				outputPackedVaryingsToPS.ase_color = inputMesh.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				outputPackedVaryingsToPS.ase_texcoord4.w = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( (temp_output_415_0*1.0 + ( temp_output_415_0 * -0.5 )) * inputMesh.normalOS );

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
                int Direction723 = _UVVDirection1UDirection0;
                float2 uv3829 = packedInput.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
                float U1472 = uv3829.x;
                float3 ase_worldNormal = packedInput.ase_texcoord4.xyz;
                float clampResult259 = clamp( ase_worldNormal.y , 0.0 , 1.0 );
                float temp_output_258_0 = ( _CascadeAngle / 45.0 );
                float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
                float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
                float clampResult285 = clamp( pow( abs( ( 1.0 - clampResult584 ) ) , _CascadeAngleFalloff ) , 0.0 , 1.0 );
                float WaterfallAngle1144 = clampResult285;
                float2 lerpResult1654 = lerp( _Detail1MainSpeed , _CascadeMainSpeed , ( WaterfallAngle1144 * 0.2 ));
                float2 break1494 = ( lerpResult1654 * _Detail1Tiling );
                float temp_output_1496_0 = ( U1472 * break1494.x );
                float V1471 = uv3829.y;
                float temp_output_1497_0 = ( break1494.y * V1471 );
                float2 appendResult1499 = (float2(temp_output_1496_0 , temp_output_1497_0));
                float2 appendResult1498 = (float2(temp_output_1497_0 , temp_output_1496_0));
                float2 temp_output_1505_0 = (( (float)Direction723 == 1.0 ) ? appendResult1499 :  appendResult1498 );
                float temp_output_816_0 = ( _Time.y * 0.05 );
                float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
                float2 uv01504 = packedInput.ase_texcoord3.zw * _Detail1Tiling + float2( 0,0 );
                float Globaltiling1185 = ( 1.0 / _GlobalTiling );
                float2 temp_output_1508_0 = ( uv01504 * Globaltiling1185 );
                float2 Detail1SpeedValueMainFlowUV11018 = ( ( temp_output_1505_0 * Refresh11404 ) + temp_output_1508_0 );
                float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
                float2 Detail1SpeedValueMainFlowUV21021 = ( ( temp_output_1505_0 * Refresh21406 ) + temp_output_1508_0 );
                float clampResult1291 = clamp( pow( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 7.0 ) , 0.0 , 1.0 );
                float SlowFlowHeightBase835 = clampResult1291;
                float4 lerpResult1089 = lerp( tex2D( _Detail1GSmDetail2ASm, Detail1SpeedValueMainFlowUV11018 ) , tex2D( _Detail1GSmDetail2ASm, Detail1SpeedValueMainFlowUV21021 ) , SlowFlowHeightBase835);
                float temp_output_1093_0 = ( lerpResult1089.g * _DetailSmoothness );
                float4 lerpResult935 = lerp( tex2D( _DetailAlbedo, Detail1SpeedValueMainFlowUV11018 ) , tex2D( _DetailAlbedo, Detail1SpeedValueMainFlowUV21021 ) , SlowFlowHeightBase835);
                float2 break1588 = ( lerpResult1654 * _NoiseTiling1 );
                float temp_output_1591_0 = ( U1472 * break1588.x );
                float temp_output_1592_0 = ( break1588.y * V1471 );
                float2 appendResult1594 = (float2(temp_output_1591_0 , temp_output_1592_0));
                float2 appendResult1593 = (float2(temp_output_1592_0 , temp_output_1591_0));
                float2 temp_output_1598_0 = (( (float)Direction723 == 1.0 ) ? appendResult1594 :  appendResult1593 );
                float2 uv01599 = packedInput.ase_texcoord3.zw * _NoiseTiling1 + float2( 0,0 );
                float2 temp_output_1600_0 = ( uv01599 * Globaltiling1185 );
                float2 NoiseSpeedValueMainFlowUV11064 = ( ( temp_output_1598_0 * Refresh11404 ) + temp_output_1600_0 );
                float2 NoiseSpeedValueMainFlowUV21063 = ( ( temp_output_1598_0 * Refresh21406 ) + temp_output_1600_0 );
                float clampResult1386 = clamp( SlowFlowHeightBase835 , 0.0 , 1.0 );
                float lerpResult1014 = lerp( tex2D( _Noise, NoiseSpeedValueMainFlowUV11064 ).r , tex2D( _Noise, NoiseSpeedValueMainFlowUV21063 ).r , clampResult1386);
                float temp_output_1674_0 = abs( lerpResult1014 );
                float temp_output_484_0 = pow( temp_output_1674_0 , _DetailNoisePower );
                float clampResult488 = clamp( temp_output_484_0 , 0.0 , 1.0 );
                float lerpResult1083 = lerp( 0.0 , lerpResult935.a , clampResult488);
                float Detal_1_Alpha_Noise1158 = lerpResult1083;
                float lerpResult973 = lerp( _WaterSmoothness , temp_output_1093_0 , Detal_1_Alpha_Noise1158);
                float2 lerpResult1659 = lerp( _Detail2MainSpeed , _CascadeMainSpeed , ( WaterfallAngle1144 * 0.2 ));
                float2 break1516 = ( lerpResult1659 * _Detail2Tiling );
                float temp_output_1518_0 = ( U1472 * break1516.x );
                float temp_output_1519_0 = ( break1516.y * V1471 );
                float2 appendResult1521 = (float2(temp_output_1518_0 , temp_output_1519_0));
                float2 appendResult1520 = (float2(temp_output_1519_0 , temp_output_1518_0));
                float2 temp_output_1524_0 = (( (float)Direction723 == 1.0 ) ? appendResult1521 :  appendResult1520 );
                float2 uv01534 = packedInput.ase_texcoord3.zw * _Detail2Tiling + float2( 0,0 );
                float2 temp_output_1527_0 = ( uv01534 * Globaltiling1185 );
                float2 Detail2SpeedValueMainFlowUV11022 = ( ( temp_output_1524_0 * Refresh11404 ) + temp_output_1527_0 );
                float2 Detail2SpeedValueMainFlowUV21025 = ( ( temp_output_1524_0 * Refresh21406 ) + temp_output_1527_0 );
                float clampResult1301 = clamp( pow( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 7.0 ) , 0.0 , 1.0 );
                float SlowFlowHeightBase21302 = clampResult1301;
                float4 lerpResult1102 = lerp( tex2D( _Detail1GSmDetail2ASm, Detail2SpeedValueMainFlowUV11022 ) , tex2D( _Detail1GSmDetail2ASm, Detail2SpeedValueMainFlowUV21025 ) , SlowFlowHeightBase21302);
                float temp_output_1094_0 = ( lerpResult1102.a * _Detail2Smoothness );
                float4 lerpResult947 = lerp( tex2D( _Detail2Albedo, Detail2SpeedValueMainFlowUV11022 ) , tex2D( _Detail2Albedo, Detail2SpeedValueMainFlowUV21025 ) , SlowFlowHeightBase21302);
                float2 break1566 = ( lerpResult1659 * _NoiseTiling2 );
                float temp_output_1569_0 = ( U1472 * break1566.x );
                float temp_output_1568_0 = ( break1566.y * V1471 );
                float2 appendResult1570 = (float2(temp_output_1569_0 , temp_output_1568_0));
                float2 appendResult1572 = (float2(temp_output_1568_0 , temp_output_1569_0));
                float2 temp_output_1573_0 = (( (float)Direction723 == 1.0 ) ? appendResult1570 :  appendResult1572 );
                float2 uv01576 = packedInput.ase_texcoord3.zw * _NoiseTiling2 + float2( 0,0 );
                float2 temp_output_1579_0 = ( uv01576 * Globaltiling1185 );
                float2 NoiseSpeedValueMainFlowUV1v21583 = ( ( temp_output_1573_0 * Refresh11404 ) + temp_output_1579_0 );
                float2 NoiseSpeedValueMainFlowUV2v21584 = ( ( temp_output_1573_0 * Refresh21406 ) + temp_output_1579_0 );
                float clampResult1387 = clamp( SlowFlowHeightBase21302 , 0.0 , 1.0 );
                float lerpResult1016 = lerp( tex2D( _Noise, NoiseSpeedValueMainFlowUV1v21583 ).r , tex2D( _Noise, NoiseSpeedValueMainFlowUV2v21584 ).r , clampResult1387);
                float temp_output_960_0 = pow( abs( max( lerpResult1016 , temp_output_1674_0 ) ) , _Detail2NoisePower );
                float clampResult962 = clamp( temp_output_960_0 , 0.0 , 1.0 );
                float lerpResult1125 = lerp( 0.0 , lerpResult947.a , clampResult962);
                float Detal_2_Alpha_Noise1159 = lerpResult1125;
                float lerpResult974 = lerp( lerpResult973 , temp_output_1094_0 , Detal_2_Alpha_Noise1159);
                float Detal_1_Alpha1146 = lerpResult935.a;
                float lerpResult1129 = lerp( _WaterSmoothness , temp_output_1093_0 , Detal_1_Alpha1146);
                float4 VertexColorRGB1172 = ( packedInput.ase_color / float4( 1,1,1,1 ) );
                float4 break1174 = VertexColorRGB1172;
                float lerpResult975 = lerp( lerpResult974 , lerpResult1129 , break1174.r);
                float Detal_2_Alpha1152 = lerpResult947.a;
                float lerpResult1127 = lerp( _WaterSmoothness , temp_output_1094_0 , Detal_2_Alpha1152);
                float lerpResult972 = lerp( lerpResult975 , lerpResult1127 , break1174.g);
                float lerpResult971 = lerp( lerpResult972 , _WaterSmoothness , break1174.b);
                float lerpResult981 = lerp( lerpResult971 , _WaterSmoothness , WaterfallAngle1144);
                
                float4 screenPos = packedInput.ase_texcoord5;
                float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
                float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
                float clampResult1234 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
                float clampResult1238 = clamp( pow( abs( clampResult1234 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
                float temp_output_779_0 = ( clampResult1238 * packedInput.ase_color.a );
                float switchResult1230 = (((ase_vface>0)?(temp_output_779_0):(( temp_output_779_0 * _BackfaceAlpha ))));
                
				surfaceDescription.Smoothness = lerpResult981;
				surfaceDescription.Alpha = switchResult1230;

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

			sampler2D _WaterTesselation;
			int _UVVDirection1UDirection0;
			sampler2D _WaterNormal;
			sampler2D _MicroWaveNormal;
			sampler2D _DetailNormal;
			sampler2D _DetailAlbedo;
			sampler2D _Noise;
			sampler2D _Detail2Normal;
			sampler2D _Detail2Albedo;
			sampler2D _Detail1GSmDetail2ASm;
			CBUFFER_START( UnityPerMaterial )
			float _WaterTessScale;
			float2 _WaterMixSpeed;
			float2 _WaterTiling;
			float _GlobalTiling;
			float _WaterNormalScale;
			float2 _WaterMainSpeed;
			float _MicroWaveNormalScale;
			float2 _MicroWaveTiling;
			float _MacroWaveNormalScale;
			float _DetailNormalScale;
			float2 _Detail1MainSpeed;
			float2 _CascadeMainSpeed;
			half _CascadeAngle;
			float _CascadeAngleFalloff;
			float2 _Detail1Tiling;
			float2 _NoiseTiling1;
			float _DetailNoisePower;
			float _Detail2NormalScale;
			float2 _Detail2MainSpeed;
			float2 _Detail2Tiling;
			float2 _NoiseTiling2;
			float _Detail2NoisePower;
			float _Distortion;
			float4 _DeepColor;
			float4 _ShalowColor;
			float _ShalowFalloffMultiply;
			float _ShalowFalloffPower;
			float _CascadeTransparency;
			float _WaveTranslucencyHardness;
			float _WaveTranslucencyPower;
			float _WaveTranslucencyMultiply;
			float _WaveTranslucencyFallOffDistance;
			float4 _DetailAlbedoColor;
			float4 _Detail2AlbedoColor;
			float _CascadeNormalScale;
			float2 _CascadeTiling;
			float _FarNormalPower;
			float _FarNormalBlendStartDistance;
			float _FarNormalBlendThreshold;
			float _WaterSpecularFar;
			float _WaterSpecularClose;
			float _WaterSpecularThreshold;
			float _DetailSpecular;
			float _Detail2Specular;
			float _WaterSmoothness;
			float _DetailSmoothness;
			float _Detail2Smoothness;
			half _WaterAOPower;
			half _DetailAOPower;
			half _Detail2AOPower;
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
				float2 appendResult706 = (float2(_WaterMixSpeed.y , _WaterMixSpeed.x));
				float2 uv01484 = inputMesh.ase_texcoord * _WaterTiling + float2( 0,0 );
				float Globaltiling1185 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1487_0 = ( uv01484 * Globaltiling1185 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _WaterMixSpeed :  appendResult706 ) + temp_output_1487_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = inputMesh.ase_texcoord3 * float2( 1,1 ) + float2( 0,0 );
				float U1472 = uv3829.x;
				float2 break1475 = ( _WaterMainSpeed * _WaterTiling );
				float temp_output_1477_0 = ( U1472 * break1475.x );
				float V1471 = uv3829.y;
				float temp_output_1478_0 = ( break1475.y * V1471 );
				float2 appendResult1480 = (float2(temp_output_1477_0 , temp_output_1478_0));
				float2 appendResult1481 = (float2(temp_output_1478_0 , temp_output_1477_0));
				float2 temp_output_1482_0 = (( (float)Direction723 == 1.0 ) ? appendResult1480 :  appendResult1481 );
				float temp_output_816_0 = ( _Time.y * 0.05 );
				float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1482_0 * Refresh11404 ) + temp_output_1487_0 );
				float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1482_0 * Refresh21406 ) + temp_output_1487_0 );
				float clampResult845 = clamp( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase1314 = clampResult845;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ), _WaterNormalScale ) , UnpackNormalmapRGorAG( tex2Dlod( _WaterNormal, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ), _WaterNormalScale ) , WaterSlowHeightBase1314);
				float temp_output_398_0 = ( ( _WaterTessScale * 0.3 ) * tex2Dlod( _WaterTesselation, float4( ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ), 0, 1.0) ).a );
				float lerpResult840 = lerp( tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV1830, 0, 1.0) ).a , tex2Dlod( _WaterTesselation, float4( WaterSpeedValueMainFlowUV2831, 0, 1.0) ).a , WaterSlowHeightBase1314);
				float temp_output_415_0 = ( temp_output_398_0 + ( _WaterTessScale * lerpResult840 ) );
				
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
				float3 vertexValue = ( (temp_output_415_0*1.0 + ( temp_output_415_0 * -0.5 )) * inputMesh.normalOS );

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
				float2 appendResult706 = (float2(_WaterMixSpeed.y , _WaterMixSpeed.x));
				float2 uv01484 = packedInput.ase_texcoord6.xy * _WaterTiling + float2( 0,0 );
				float Globaltiling1185 = ( 1.0 / _GlobalTiling );
				float2 temp_output_1487_0 = ( uv01484 * Globaltiling1185 );
				float2 panner612 = ( _Time.y * (( (float)Direction723 == 1.0 ) ? _WaterMixSpeed :  appendResult706 ) + temp_output_1487_0);
				float2 WaterSpeedValueMix516 = panner612;
				float2 uv3829 = packedInput.ase_texcoord6.zw * float2( 1,1 ) + float2( 0,0 );
				float U1472 = uv3829.x;
				float2 break1475 = ( _WaterMainSpeed * _WaterTiling );
				float temp_output_1477_0 = ( U1472 * break1475.x );
				float V1471 = uv3829.y;
				float temp_output_1478_0 = ( break1475.y * V1471 );
				float2 appendResult1480 = (float2(temp_output_1477_0 , temp_output_1478_0));
				float2 appendResult1481 = (float2(temp_output_1478_0 , temp_output_1477_0));
				float2 temp_output_1482_0 = (( (float)Direction723 == 1.0 ) ? appendResult1480 :  appendResult1481 );
				float temp_output_816_0 = ( _Time.y * 0.05 );
				float Refresh11404 = frac( ( temp_output_816_0 + 1.0 ) );
				float2 WaterSpeedValueMainFlowUV1830 = ( ( temp_output_1482_0 * Refresh11404 ) + temp_output_1487_0 );
				float Refresh21406 = frac( ( temp_output_816_0 + 0.5 ) );
				float2 WaterSpeedValueMainFlowUV2831 = ( ( temp_output_1482_0 * Refresh21406 ) + temp_output_1487_0 );
				float clampResult845 = clamp( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase1314 = clampResult845;
				float3 lerpResult838 = lerp( UnpackNormalmapRGorAG( tex2D( _WaterNormal, WaterSpeedValueMainFlowUV1830 ), _WaterNormalScale ) , UnpackNormalmapRGorAG( tex2D( _WaterNormal, WaterSpeedValueMainFlowUV2831 ), _WaterNormalScale ) , WaterSlowHeightBase1314);
				float2 temp_output_1246_0 = ( (lerpResult838).xy * float2( 0.05,0.05 ) );
				float3 temp_output_1250_0 = BlendNormal( UnpackNormalmapRGorAG( tex2D( _MicroWaveNormal, ( ( _MicroWaveTiling * WaterSpeedValueMix516 ) + temp_output_1246_0 ) ), _MicroWaveNormalScale ) , UnpackNormalmapRGorAG( tex2D( _WaterNormal, ( WaterSpeedValueMix516 + temp_output_1246_0 ) ), _MacroWaveNormalScale ) );
				float3 temp_output_24_0 = BlendNormal( temp_output_1250_0 , lerpResult838 );
				float clampResult259 = clamp( normalWS.y , 0.0 , 1.0 );
				float temp_output_258_0 = ( _CascadeAngle / 45.0 );
				float clampResult263 = clamp( ( clampResult259 - ( 1.0 - temp_output_258_0 ) ) , 0.0 , 2.0 );
				float clampResult584 = clamp( ( clampResult263 * ( 1.0 / temp_output_258_0 ) ) , 0.0 , 1.0 );
				float clampResult285 = clamp( pow( abs( ( 1.0 - clampResult584 ) ) , _CascadeAngleFalloff ) , 0.0 , 1.0 );
				float WaterfallAngle1144 = clampResult285;
				float2 lerpResult1654 = lerp( _Detail1MainSpeed , _CascadeMainSpeed , ( WaterfallAngle1144 * 0.2 ));
				float2 break1494 = ( lerpResult1654 * _Detail1Tiling );
				float temp_output_1496_0 = ( U1472 * break1494.x );
				float temp_output_1497_0 = ( break1494.y * V1471 );
				float2 appendResult1499 = (float2(temp_output_1496_0 , temp_output_1497_0));
				float2 appendResult1498 = (float2(temp_output_1497_0 , temp_output_1496_0));
				float2 temp_output_1505_0 = (( (float)Direction723 == 1.0 ) ? appendResult1499 :  appendResult1498 );
				float2 uv01504 = packedInput.ase_texcoord6.xy * _Detail1Tiling + float2( 0,0 );
				float2 temp_output_1508_0 = ( uv01504 * Globaltiling1185 );
				float2 Detail1SpeedValueMainFlowUV11018 = ( ( temp_output_1505_0 * Refresh11404 ) + temp_output_1508_0 );
				float2 Detail1SpeedValueMainFlowUV21021 = ( ( temp_output_1505_0 * Refresh21406 ) + temp_output_1508_0 );
				float clampResult1291 = clamp( pow( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 7.0 ) , 0.0 , 1.0 );
				float SlowFlowHeightBase835 = clampResult1291;
				float3 lerpResult864 = lerp( UnpackNormalmapRGorAG( tex2D( _DetailNormal, Detail1SpeedValueMainFlowUV11018 ), _DetailNormalScale ) , UnpackNormalmapRGorAG( tex2D( _DetailNormal, Detail1SpeedValueMainFlowUV21021 ), _DetailNormalScale ) , SlowFlowHeightBase835);
				float4 lerpResult935 = lerp( tex2D( _DetailAlbedo, Detail1SpeedValueMainFlowUV11018 ) , tex2D( _DetailAlbedo, Detail1SpeedValueMainFlowUV21021 ) , SlowFlowHeightBase835);
				float2 break1588 = ( lerpResult1654 * _NoiseTiling1 );
				float temp_output_1591_0 = ( U1472 * break1588.x );
				float temp_output_1592_0 = ( break1588.y * V1471 );
				float2 appendResult1594 = (float2(temp_output_1591_0 , temp_output_1592_0));
				float2 appendResult1593 = (float2(temp_output_1592_0 , temp_output_1591_0));
				float2 temp_output_1598_0 = (( (float)Direction723 == 1.0 ) ? appendResult1594 :  appendResult1593 );
				float2 uv01599 = packedInput.ase_texcoord6.xy * _NoiseTiling1 + float2( 0,0 );
				float2 temp_output_1600_0 = ( uv01599 * Globaltiling1185 );
				float2 NoiseSpeedValueMainFlowUV11064 = ( ( temp_output_1598_0 * Refresh11404 ) + temp_output_1600_0 );
				float2 NoiseSpeedValueMainFlowUV21063 = ( ( temp_output_1598_0 * Refresh21406 ) + temp_output_1600_0 );
				float clampResult1386 = clamp( SlowFlowHeightBase835 , 0.0 , 1.0 );
				float lerpResult1014 = lerp( tex2D( _Noise, NoiseSpeedValueMainFlowUV11064 ).r , tex2D( _Noise, NoiseSpeedValueMainFlowUV21063 ).r , clampResult1386);
				float temp_output_1674_0 = abs( lerpResult1014 );
				float temp_output_484_0 = pow( temp_output_1674_0 , _DetailNoisePower );
				float clampResult488 = clamp( temp_output_484_0 , 0.0 , 1.0 );
				float lerpResult1083 = lerp( 0.0 , lerpResult935.a , clampResult488);
				float Detal_1_Alpha_Noise1158 = lerpResult1083;
				float3 lerpResult932 = lerp( temp_output_24_0 , lerpResult864 , Detal_1_Alpha_Noise1158);
				float2 lerpResult1659 = lerp( _Detail2MainSpeed , _CascadeMainSpeed , ( WaterfallAngle1144 * 0.2 ));
				float2 break1516 = ( lerpResult1659 * _Detail2Tiling );
				float temp_output_1518_0 = ( U1472 * break1516.x );
				float temp_output_1519_0 = ( break1516.y * V1471 );
				float2 appendResult1521 = (float2(temp_output_1518_0 , temp_output_1519_0));
				float2 appendResult1520 = (float2(temp_output_1519_0 , temp_output_1518_0));
				float2 temp_output_1524_0 = (( (float)Direction723 == 1.0 ) ? appendResult1521 :  appendResult1520 );
				float2 uv01534 = packedInput.ase_texcoord6.xy * _Detail2Tiling + float2( 0,0 );
				float2 temp_output_1527_0 = ( uv01534 * Globaltiling1185 );
				float2 Detail2SpeedValueMainFlowUV11022 = ( ( temp_output_1524_0 * Refresh11404 ) + temp_output_1527_0 );
				float2 Detail2SpeedValueMainFlowUV21025 = ( ( temp_output_1524_0 * Refresh21406 ) + temp_output_1527_0 );
				float clampResult1301 = clamp( pow( abs( ( ( Refresh11404 + -0.5 ) * 2.0 ) ) , 7.0 ) , 0.0 , 1.0 );
				float SlowFlowHeightBase21302 = clampResult1301;
				float3 lerpResult922 = lerp( UnpackNormalmapRGorAG( tex2D( _Detail2Normal, Detail2SpeedValueMainFlowUV11022 ), _Detail2NormalScale ) , UnpackNormalmapRGorAG( tex2D( _Detail2Normal, Detail2SpeedValueMainFlowUV21025 ), _Detail2NormalScale ) , SlowFlowHeightBase21302);
				float4 lerpResult947 = lerp( tex2D( _Detail2Albedo, Detail2SpeedValueMainFlowUV11022 ) , tex2D( _Detail2Albedo, Detail2SpeedValueMainFlowUV21025 ) , SlowFlowHeightBase21302);
				float2 break1566 = ( lerpResult1659 * _NoiseTiling2 );
				float temp_output_1569_0 = ( U1472 * break1566.x );
				float temp_output_1568_0 = ( break1566.y * V1471 );
				float2 appendResult1570 = (float2(temp_output_1569_0 , temp_output_1568_0));
				float2 appendResult1572 = (float2(temp_output_1568_0 , temp_output_1569_0));
				float2 temp_output_1573_0 = (( (float)Direction723 == 1.0 ) ? appendResult1570 :  appendResult1572 );
				float2 uv01576 = packedInput.ase_texcoord6.xy * _NoiseTiling2 + float2( 0,0 );
				float2 temp_output_1579_0 = ( uv01576 * Globaltiling1185 );
				float2 NoiseSpeedValueMainFlowUV1v21583 = ( ( temp_output_1573_0 * Refresh11404 ) + temp_output_1579_0 );
				float2 NoiseSpeedValueMainFlowUV2v21584 = ( ( temp_output_1573_0 * Refresh21406 ) + temp_output_1579_0 );
				float clampResult1387 = clamp( SlowFlowHeightBase21302 , 0.0 , 1.0 );
				float lerpResult1016 = lerp( tex2D( _Noise, NoiseSpeedValueMainFlowUV1v21583 ).r , tex2D( _Noise, NoiseSpeedValueMainFlowUV2v21584 ).r , clampResult1387);
				float temp_output_960_0 = pow( abs( max( lerpResult1016 , temp_output_1674_0 ) ) , _Detail2NoisePower );
				float clampResult962 = clamp( temp_output_960_0 , 0.0 , 1.0 );
				float lerpResult1125 = lerp( 0.0 , lerpResult947.a , clampResult962);
				float Detal_2_Alpha_Noise1159 = lerpResult1125;
				float3 lerpResult933 = lerp( lerpResult932 , lerpResult922 , Detal_2_Alpha_Noise1159);
				float4 fetchOpaqueVal65 = ASEHDSampleSceneColor(( float3( ( appendResult163 / ase_grabScreenPosNorm.a ) ,  0.0 ) + ( lerpResult933 * _Distortion ) ).xy, 0, GetInverseCurrentExposureMultiplier()*0.001);
				float eyeDepth1 = LinearEyeDepth( SampleCameraDepth( screenPos.xy/screenPos.w ).r,_ZBufferParams);
				float temp_output_89_0 = abs( ( eyeDepth1 - screenPos.w ) );
				float lerpResult1662 = lerp( pow( abs( ( temp_output_89_0 * _ShalowFalloffMultiply ) ) , ( _ShalowFalloffPower * -1.0 ) ) , 100.0 , ( _CascadeTransparency * WaterfallAngle1144 ));
				float clampResult1259 = clamp( saturate( lerpResult1662 ) , 0.0 , 1.0 );
				float4 lerpResult13 = lerp( _DeepColor , _ShalowColor , clampResult1259);
				float temp_output_398_0 = ( ( _WaterTessScale * 0.3 ) * tex2D( _WaterTesselation, ( WaterSpeedValueMix516 + ( (lerpResult838).xy * float2( 0.05,0.05 ) ) ) ).a );
				float lerpResult840 = lerp( tex2D( _WaterTesselation, WaterSpeedValueMainFlowUV1830 ).a , tex2D( _WaterTesselation, WaterSpeedValueMainFlowUV2831 ).a , WaterSlowHeightBase1314);
				float3 ase_worldPos = GetAbsolutePositionWS( positionRWS );
				float Distance1207 = distance( ase_worldPos , _WorldSpaceCameraPos );
				float clampResult1216 = clamp( ( Distance1207 / _WaveTranslucencyFallOffDistance ) , 0.0 , 1.0 );
				float lerpResult1217 = lerp( ( pow( abs( ( ( temp_output_398_0 + lerpResult840 ) * _WaveTranslucencyHardness ) ) , _WaveTranslucencyPower ) * _WaveTranslucencyMultiply ) , 0.0 , clampResult1216);
				float clampResult1218 = clamp( lerpResult1217 , 0.0 , 1.0 );
				float Microwaves1219 = clampResult1218;
				float4 lerpResult1258 = lerp( lerpResult13 , _ShalowColor , Microwaves1219);
				float4 lerpResult773 = lerp( fetchOpaqueVal65 , lerpResult1258 , ( 1.0 - clampResult1259 ));
				float4 temp_output_1106_0 = ( lerpResult935 * _DetailAlbedoColor );
				float4 lerpResult964 = lerp( lerpResult773 , temp_output_1106_0 , Detal_1_Alpha_Noise1158);
				float4 temp_output_1108_0 = ( lerpResult947 * _Detail2AlbedoColor );
				float4 lerpResult987 = lerp( lerpResult964 , temp_output_1108_0 , Detal_2_Alpha_Noise1159);
				float Detal_1_Alpha1146 = lerpResult935.a;
				float4 lerpResult1132 = lerp( lerpResult773 , temp_output_1106_0 , Detal_1_Alpha1146);
				float4 VertexColorRGB1172 = ( packedInput.ase_color / float4( 1,1,1,1 ) );
				float4 break1181 = VertexColorRGB1172;
				float4 lerpResult986 = lerp( lerpResult987 , lerpResult1132 , break1181.r);
				float Detal_2_Alpha1152 = lerpResult947.a;
				float4 lerpResult1133 = lerp( lerpResult773 , temp_output_1108_0 , Detal_2_Alpha1152);
				float4 lerpResult984 = lerp( lerpResult986 , lerpResult1133 , break1181.g);
				float4 lerpResult1113 = lerp( lerpResult984 , lerpResult773 , break1181.b);
				float4 lerpResult1058 = lerp( lerpResult1113 , lerpResult773 , WaterfallAngle1144);
				
				float3 lerpResult1134 = lerp( temp_output_24_0 , lerpResult864 , Detal_1_Alpha1146);
				float4 break1177 = VertexColorRGB1172;
				float3 lerpResult748 = lerp( lerpResult933 , lerpResult1134 , break1177.r);
				float3 lerpResult1135 = lerp( temp_output_24_0 , lerpResult922 , Detal_2_Alpha1152);
				float3 lerpResult749 = lerp( lerpResult748 , lerpResult1135 , break1177.g);
				float3 lerpResult750 = lerp( lerpResult749 , temp_output_24_0 , break1177.b);
				float2 break1609 = ( _CascadeMainSpeed * _CascadeTiling );
				float temp_output_1611_0 = ( U1472 * break1609.x );
				float temp_output_1610_0 = ( break1609.y * V1471 );
				float2 appendResult1613 = (float2(temp_output_1611_0 , temp_output_1610_0));
				float2 appendResult1614 = (float2(temp_output_1610_0 , temp_output_1611_0));
				float2 temp_output_1616_0 = (( (float)Direction723 == 1.0 ) ? appendResult1613 :  appendResult1614 );
				float temp_output_1639_0 = ( _Time.y * 0.1 );
				float Refresh1v21643 = frac( ( temp_output_1639_0 + 1.0 ) );
				float2 uv01617 = packedInput.ase_texcoord6.xy * _CascadeTiling + float2( 0,0 );
				float2 temp_output_1622_0 = ( uv01617 * Globaltiling1185 );
				float2 SmallCascadeSpeedValueMainFlowUV11625 = ( ( temp_output_1616_0 * Refresh1v21643 ) + temp_output_1622_0 );
				float Refresh2v21645 = frac( ( temp_output_1639_0 + 0.5 ) );
				float2 SmallCascadeSpeedValueMainFlowUV21626 = ( ( temp_output_1616_0 * Refresh2v21645 ) + temp_output_1622_0 );
				float clampResult1650 = clamp( abs( ( ( Refresh1v21643 + -0.5 ) * 2.0 ) ) , 0.0 , 1.0 );
				float WaterSlowHeightBase21651 = clampResult1650;
				float3 lerpResult1634 = lerp( UnpackNormalmapRGorAG( tex2D( _WaterNormal, SmallCascadeSpeedValueMainFlowUV11625 ), _CascadeNormalScale ) , UnpackNormalmapRGorAG( tex2D( _WaterNormal, SmallCascadeSpeedValueMainFlowUV21626 ), _CascadeNormalScale ) , WaterSlowHeightBase21651);
				float3 lerpResult983 = lerp( lerpResult750 , BlendNormal( temp_output_1250_0 , lerpResult1634 ) , WaterfallAngle1144);
				float3 appendResult1422 = (float3(_FarNormalPower , _FarNormalPower , 1.0));
				float clampResult1423 = clamp( pow( abs( ( Distance1207 / _FarNormalBlendStartDistance ) ) , _FarNormalBlendThreshold ) , 0.0 , 1.0 );
				float3 lerpResult1425 = lerp( lerpResult983 , ( lerpResult983 * appendResult1422 ) , clampResult1423);
				
				float lerpResult1124 = lerp( _WaterSpecularFar , _WaterSpecularClose , pow( abs( clampResult1259 ) , _WaterSpecularThreshold ));
				float4 temp_cast_16 = (lerpResult1124).xxxx;
				float4 clampResult1050 = clamp( ( temp_output_1106_0 * float4( 0.3,0.3019608,0.3019608,0 ) ) , float4( 0,0,0,0 ) , float4( 0.5,0.5019608,0.5019608,0 ) );
				float4 temp_output_1051_0 = ( _DetailSpecular * clampResult1050 );
				float4 lerpResult969 = lerp( temp_cast_16 , temp_output_1051_0 , Detal_1_Alpha_Noise1158);
				float4 clampResult1053 = clamp( ( lerpResult947 * float4( 0.3,0.3019608,0.3019608,0 ) ) , float4( 0,0,0,0 ) , float4( 0.5,0.5019608,0.5019608,0 ) );
				float4 temp_output_1052_0 = ( _Detail2Specular * clampResult1053 );
				float4 lerpResult970 = lerp( lerpResult969 , temp_output_1052_0 , Detal_2_Alpha_Noise1159);
				float4 temp_cast_17 = (lerpResult1124).xxxx;
				float4 lerpResult1136 = lerp( temp_cast_17 , temp_output_1051_0 , Detal_1_Alpha1146);
				float4 break1179 = VertexColorRGB1172;
				float4 lerpResult130 = lerp( lerpResult970 , lerpResult1136 , break1179.r);
				float4 temp_cast_18 = (lerpResult1124).xxxx;
				float4 lerpResult1137 = lerp( temp_cast_18 , temp_output_1052_0 , Detal_2_Alpha1152);
				float4 lerpResult785 = lerp( lerpResult130 , lerpResult1137 , break1179.g);
				float4 temp_cast_19 = (lerpResult1124).xxxx;
				float4 lerpResult786 = lerp( lerpResult785 , temp_cast_19 , break1179.b);
				float4 temp_cast_20 = (lerpResult1124).xxxx;
				float4 lerpResult982 = lerp( lerpResult786 , temp_cast_20 , WaterfallAngle1144);
				
				float4 lerpResult1089 = lerp( tex2D( _Detail1GSmDetail2ASm, Detail1SpeedValueMainFlowUV11018 ) , tex2D( _Detail1GSmDetail2ASm, Detail1SpeedValueMainFlowUV21021 ) , SlowFlowHeightBase835);
				float temp_output_1093_0 = ( lerpResult1089.g * _DetailSmoothness );
				float lerpResult973 = lerp( _WaterSmoothness , temp_output_1093_0 , Detal_1_Alpha_Noise1158);
				float4 lerpResult1102 = lerp( tex2D( _Detail1GSmDetail2ASm, Detail2SpeedValueMainFlowUV11022 ) , tex2D( _Detail1GSmDetail2ASm, Detail2SpeedValueMainFlowUV21025 ) , SlowFlowHeightBase21302);
				float temp_output_1094_0 = ( lerpResult1102.a * _Detail2Smoothness );
				float lerpResult974 = lerp( lerpResult973 , temp_output_1094_0 , Detal_2_Alpha_Noise1159);
				float lerpResult1129 = lerp( _WaterSmoothness , temp_output_1093_0 , Detal_1_Alpha1146);
				float4 break1174 = VertexColorRGB1172;
				float lerpResult975 = lerp( lerpResult974 , lerpResult1129 , break1174.r);
				float lerpResult1127 = lerp( _WaterSmoothness , temp_output_1094_0 , Detal_2_Alpha1152);
				float lerpResult972 = lerp( lerpResult975 , lerpResult1127 , break1174.g);
				float lerpResult971 = lerp( lerpResult972 , _WaterSmoothness , break1174.b);
				float lerpResult981 = lerp( lerpResult971 , _WaterSmoothness , WaterfallAngle1144);
				
				float lerpResult1038 = lerp( _WaterAOPower , _DetailAOPower , Detal_1_Alpha_Noise1158);
				float lerpResult1039 = lerp( lerpResult1038 , _Detail2AOPower , Detal_2_Alpha_Noise1159);
				float lerpResult1130 = lerp( _WaterAOPower , _DetailAOPower , Detal_1_Alpha1146);
				float4 break1175 = VertexColorRGB1172;
				float lerpResult1040 = lerp( lerpResult1039 , lerpResult1130 , break1175.r);
				float lerpResult1128 = lerp( _WaterAOPower , _Detail2AOPower , Detal_2_Alpha1152);
				float lerpResult1041 = lerp( lerpResult1040 , lerpResult1128 , break1175.g);
				float lerpResult1042 = lerp( lerpResult1041 , _WaterAOPower , break1175.b);
				float lerpResult1057 = lerp( lerpResult1042 , _WaterAOPower , WaterfallAngle1144);
				
				float clampResult1234 = clamp( ( temp_output_89_0 * _CleanFalloffMultiply ) , 0.0 , 1.0 );
				float clampResult1238 = clamp( pow( abs( clampResult1234 ) , _CleanFalloffPower ) , 0.0 , 1.0 );
				float temp_output_779_0 = ( clampResult1238 * packedInput.ase_color.a );
				float switchResult1230 = (((ase_vface>0)?(temp_output_779_0):(( temp_output_779_0 * _BackfaceAlpha ))));
				
				surfaceDescription.Albedo = lerpResult1058.rgb;
				surfaceDescription.Normal = lerpResult1425;
				surfaceDescription.BentNormal = float3( 0, 0, 1 );
				surfaceDescription.CoatMask = 0;
				surfaceDescription.Metallic = 0;

				#ifdef _MATERIAL_FEATURE_SPECULAR_COLOR
				surfaceDescription.Specular = lerpResult982.rgb;
				#endif

				surfaceDescription.Emission = 0;
				surfaceDescription.Smoothness = lerpResult981;
				surfaceDescription.Occlusion = lerpResult1057;
				surfaceDescription.Alpha = switchResult1230;

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