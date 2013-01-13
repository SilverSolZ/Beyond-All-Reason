local modrules  = {

  reclaim = {
    multiReclaim  = 1;
    reclaimMethod = 0;
  },


  sensors = {   
    los = {
      losMipLevel = 2, 
      losMul      = 1,
      airMipLevel = 4,
      airMul      = 1,
    },
  },

  fireAtDead = {
    fireAtKilled   = false;
    fireAtCrashing = false;
  },

  movement = {
	--allowUnitCollisionDamage = true, -- defaults to false, Do unit-unit (skidding) collisions cause damage? 
	allowPushingEnemyUnits = (Spring.GetModOptions() and (Spring.GetModOptions().mo_enemypushing) or (not Spring.GetModOptions())),
	useClassicGroundMoveType =  (Spring.GetModOptions() and (Spring.GetModOptions().movetype == "classic")),
	allowUnitCollisionOverlap = false,--Can mobile units collision volumes overlap one another? Allows unit movement like this (video http://www.youtube.com/watch?v=mRtePUdVk2o ) at the cost of more 'clumping'. 
  },
  
  featureLOS = { featureVisibility = 2; },

  system = {
        pathFinderSystem = (Spring.GetModOptions() and (Spring.GetModOptions().pathfinder == "qtpfs") and 1) or 0,
	    luaThreadingModel = 4,
  },

}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
if modrules.movement.useClassicGroundMoveType then 
	Spring.Echo('Using ClassicGroundMoveType')
else
	Spring.Echo('Using vanilla groundmovetype')
end
if modrules.movement.allowPushingEnemyUnits then 
	Spring.Echo('Allowing pushing enemy units')
else
	Spring.Echo('Disallowing pushing enemy units')
end
return modrules