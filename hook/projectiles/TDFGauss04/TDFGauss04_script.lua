#
# Terran Gauss Cannon Projectile
#
local TDFLandGaussCannonProjectile = import('/mods/Future Battlefield Pack Effects/lua/FBPEprojectiles.lua').TDFLandGaussCannonProjectile
TDFGauss04 = Class(TDFLandGaussCannonProjectile) {
    
    OnCreate = function(self, inWater)
        TDFLandGaussCannonProjectile.OnCreate(self, inWater)
        if not inWater then
            self:SetDestroyOnWater(true)
        else
            self:ForkThread(self.DestroyOnWaterThread)
        end
    end,
    
    DestroyOnWaterThread = function(self)
        WaitSeconds(0.2)
        self:SetDestroyOnWater(true)
    end,
}
TypeClass = TDFGauss04

