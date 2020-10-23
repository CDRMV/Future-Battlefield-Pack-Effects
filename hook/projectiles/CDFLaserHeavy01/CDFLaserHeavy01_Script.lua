-----------------------------------------------------------------------------
--  File     :  /projectiles/cybran/CDFLaserHeavy01/CDFLaserHeavy01_script.lua
--  Author(s):
--  Summary  :  SC2 Cybran Laser: CLaser01
--  Copyright © 2009 Gas Powered Games, Inc.  All rights reserved.
-----------------------------------------------------------------------------
local ModEffectTemplate = import('/mods/Future Battlefield Pack Effects/lua/FBPEEffectTemplates.lua')
local EffectTemplate = import('/lua/EffectTemplates.lua')
CDFLaserHeavy01 = Class(import('/lua/sim/defaultprojectiles.lua').SinglePolyTrailProjectile) {
	FxImpactTrajectoryAligned =true,

	PolyTrail = '/mods/Future Battlefield Pack Effects/effects/Emitters/Laserred02_emit.bp',

    FxImpactUnit = EffectTemplate.TRiotGunHitUnit01,
    FxImpactProp = EffectTemplate.TRiotGunHitUnit01,
    FxImpactLand = EffectTemplate.TRiotGunHit01,
    FxImpactAirUnit = ModEffectTemplate.FireCloudSml02,
    FxImpactNone = ModEffectTemplate.FireCloudSml02, 
    FxImpactWater = EffectTemplate.WaterSplash01,
    FxImpactUnderWater = {}, 

}
TypeClass = CDFLaserHeavy01