#ifndef FOVEA_HLSL
#define FOVEA_HLSL

static const float w_limit = 1.1715f;
static const float acuity_slope = -0.05f;
static const float w_periphery = 0.02f;

//!
//! Fovea shader bindings.
//!

RWTexture2D<float> g_Fovea_ImportanceMap;

RWTexture2D<float> g_Fovea_Probe_ImportanceMap;

//RWTexture2D<float> g_Fovea_PreviousImportanceMap;

RWTexture2D<float> g_Fovea_Probe_PreviousImportanceMap;

RWStructuredBuffer<uint> g_Fovea_Probe_Flag;

RWTexture2D<uint> g_Debug_SpawnFlag;

RWTexture2D<float4> g_Debug_Spawn_Ray;

RWStructuredBuffer<uint2> g_Fovea_HaltonSequence;

//!
//! Fovea helper functions.
//!

groupshared float lds_ScreenPixel_Importance[64];
groupshared uint lds_ScreenProbe_Sample[1];

#endif
