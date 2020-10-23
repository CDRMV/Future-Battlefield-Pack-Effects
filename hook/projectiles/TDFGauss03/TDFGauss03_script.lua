#
# Terran Gauss Cannon Projectile
#
local TDFGaussCannonProjectile = import('/mods/Future Battlefield Pack Effects/lua/FBPEprojectiles.lua').TDFShipGaussCannonProjectile
TDFGauss03 = Class(TDFGaussCannonProjectile) {
    FxTrails = {'/effects/emitters/gauss_cannon_munition_trail_03_emit.bp',},
    FxLandHitScale = 1.5,
}
TypeClass = TDFGauss03

