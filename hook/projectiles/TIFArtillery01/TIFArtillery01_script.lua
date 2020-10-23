#
# Terran Artillery Projectile
#
local EffectTemplate = import('/lua/EffectTemplates.lua')
local TArtilleryProjectilePolytrail = import('/mods/Future Battlefield Pack Effects/lua/FBPEprojectiles.lua').TArtilleryProjectilePolytrail
TIFArtillery01 = Class(TArtilleryProjectilePolytrail) {
	FxImpactTrajectoryAligned = false,
    PolyTrail = '/effects/emitters/default_polytrail_04_emit.bp',
    FxImpactUnit = EffectTemplate.TAPDSHitUnit01,
    FxImpactLand = EffectTemplate.TAPDSHit01,
	FxImpactWater = EffectTemplate.WaterSplash02,
}

TypeClass = TIFArtillery01

