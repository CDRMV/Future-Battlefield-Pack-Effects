#
# Terran Gauss Cannon Projectile
#
local TDFGaussCannonProjectile = import('/mods/Future Battlefield Pack Effects/lua/FBPEprojectiles.lua').TDFGaussCannonProjectile
TDFGauss01 = Class(TDFGaussCannonProjectile) {
    
    OnCreate = function(self, inWater)
        TDFGaussCannonProjectile.OnCreate(self, inWater)
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
TypeClass = TDFGauss01

