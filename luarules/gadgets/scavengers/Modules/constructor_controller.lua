Spring.Echo("[Scavengers] Constructor Controller initialized")

VFS.Include("luarules/gadgets/scavengers/Configs/"..GameShortName.."/UnitLists/constructors.lua")
Blueprints2List = VFS.DirList('luarules/gadgets/scavengers/Blueprints/'..GameShortName..'/Constructor/','*.lua')
for i = 1,#Blueprints2List do
	VFS.Include(Blueprints2List[i])
	Spring.Echo("Scav Blueprints Directory: " ..Blueprints2List[i])
end
local constructortimer = constructorControllerModuleConfig.constructortimerstart

scavvoicenotif = 2

function AssistantOrders(n, scav)
	local x,y,z = Spring.GetUnitPosition(scav)
	Spring.GiveOrderToUnit(scav, CMD.PATROL,{x-100,y,z}, {"shift"})
	Spring.GiveOrderToUnit(scav, CMD.PATROL,{x+100,y,z}, {"shift"})
	Spring.GiveOrderToUnit(scav, CMD.PATROL,{x,y,z-100}, {"shift"})
	Spring.GiveOrderToUnit(scav, CMD.PATROL,{x,y,z+100}, {"shift"})
end

function ResurrectorOrders(n, scav)
	local mapcenterX = mapsizeX/2
	local mapcenterZ = mapsizeZ/2
	local mapcenterY = Spring.GetGroundHeight(mapcenterX, mapcenterZ)
	local mapdiagonal = math.ceil(math.sqrt((mapsizeX*mapsizeX)+(mapsizeZ*mapsizeZ)))
	Spring.GiveOrderToUnit(scav, CMD.RESURRECT,{mapcenterX+math_random(-100,100),mapcenterY,mapcenterZ+math_random(-100,100),mapdiagonal}, 0)
end

function CollectorOrders(n, scav)
	local mapcenterX = mapsizeX/2
	local mapcenterZ = mapsizeZ/2
	local mapcenterY = Spring.GetGroundHeight(mapcenterX, mapcenterZ)
	local mapdiagonal = math.ceil(math.sqrt((mapsizeX*mapsizeX)+(mapsizeZ*mapsizeZ)))
	Spring.GiveOrderToUnit(scav, CMD.RECLAIM,{mapcenterX+math_random(-100,100),mapcenterY,mapcenterZ+math_random(-100,100),mapdiagonal}, 0)
end

function SpawnConstructor(n)
	if (constructortimer > constructorControllerModuleConfig.constructortimer or CountScavConstructors() < constructorControllerModuleConfig.minimumconstructors ) and numOfSpawnBeacons > 0 and constructortimer > 4 then
		local scavengerunits = Spring.GetTeamUnits(GaiaTeamID)
		SpawnBeacons = {}
		for i = 1,#scavengerunits do
			local scav = scavengerunits[i]
			local scavDef = Spring.GetUnitDefID(scav)
			if scavSpawnBeacon[scav] then
				table.insert(SpawnBeacons,scav)
			end
		end
		local pickedBeacon = SpawnBeacons[math_random(1,#SpawnBeacons)]
		posx,posy,posz = Spring.GetUnitPosition(pickedBeacon)
		local nearestEnemy = Spring.GetUnitNearestEnemy(pickedBeacon, 99999, false)
		local nearestEnemyTeam = Spring.GetUnitTeam(nearestEnemy)
		if nearestEnemyTeam == bestTeam then
			canSpawnCommanderHere = true
		else
			local r = math_random(0,4)
			if r == 0 then
				canSpawnCommanderHere = true
			else
				canSpawnCommanderHere = false
			end
		end
		if canSpawnCommanderHere then
			posradius = 48
			Spring.GiveOrderToUnit(pickedBeacon, CMD.SELFD,{}, {"shift"})
			if not anothercommander then
				ScavSendNotification("scav_scavcomdetected")
				anothercommander = true
			else
				local s = math_random(0,scavvoicenotif)
					if s == 0 then
						ScavSendNotification("scav_scavadditionalcomdetected")
					elseif s == 1 then
						ScavSendNotification("scav_scavanotherscavcomdetected")
					elseif s == 2 then
						ScavSendNotification("scav_scavnewcomentered")
					elseif s == 3 then
						ScavSendNotification("scav_scavcomspotted")
					elseif s == 4 then
						ScavSendNotification("scav_scavcomnewdetect")
					else
						ScavSendMessage("A Scavenger Commander detected")
					end
				if scavvoicenotif < 20 then
					scavvoicenotif = scavvoicenotif + 1
				end				
			end
			SpawnBeacon(n)
			constructortimer = constructortimer - constructorControllerModuleConfig.constructortimer
			local r = ConstructorsList[math_random(1,#ConstructorsList)]
			local r2 = Resurrectors[math_random(1,#Resurrectors)]
			local r3 = ResurrectorsSea[math_random(1,#ResurrectorsSea)]
			Spring.CreateUnit("scavengerdroppod_scav", posx, posy, posz, math_random(0,3),GaiaTeamID)
			Spring.CreateUnit("scavengerdroppod_scav", posx+posradius, posy, posz, math_random(0,3),GaiaTeamID)
			Spring.CreateUnit("scavengerdroppod_scav", posx-posradius, posy, posz, math_random(0,3),GaiaTeamID)
			Spring.CreateUnit("scavengerdroppod_scav", posx, posy, posz+posradius, math_random(0,3),GaiaTeamID)
			Spring.CreateUnit("scavengerdroppod_scav", posx, posy, posz-posradius, math_random(0,3),GaiaTeamID)
			Spring.CreateUnit("scavengerdroppod_scav", posx+posradius, posy, posz+posradius, math_random(0,3),GaiaTeamID)
			Spring.CreateUnit("scavengerdroppod_scav", posx-posradius, posy, posz+posradius, math_random(0,3),GaiaTeamID)
			Spring.CreateUnit("scavengerdroppod_scav", posx-posradius, posy, posz-posradius, math_random(0,3),GaiaTeamID)
			Spring.CreateUnit("scavengerdroppod_scav", posx+posradius, posy, posz-posradius, math_random(0,3),GaiaTeamID)
			QueueSpawn(r..scavconfig.unitnamesuffix, posx, posy, posz, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
			if posy > 0 then
				QueueSpawn(r2..scavconfig.unitnamesuffix, posx+32, posy, posz, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
				QueueSpawn(r2..scavconfig.unitnamesuffix, posx-32, posy, posz, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
				QueueSpawn(r2..scavconfig.unitnamesuffix, posx, posy, posz+32, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
				QueueSpawn(r2..scavconfig.unitnamesuffix, posx, posy, posz-32, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
				QueueSpawn(r2..scavconfig.unitnamesuffix, posx+32, posy, posz+32, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
				QueueSpawn(r2..scavconfig.unitnamesuffix, posx-32, posy, posz-32, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
				QueueSpawn(r2..scavconfig.unitnamesuffix, posx-32, posy, posz+32, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
				QueueSpawn(r2..scavconfig.unitnamesuffix, posx+32, posy, posz-32, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
			elseif constructorControllerModuleConfig.searesurrectors == true then
				QueueSpawn(r3..scavconfig.unitnamesuffix, posx+32, posy, posz+32, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
				QueueSpawn(r3..scavconfig.unitnamesuffix, posx-32, posy, posz-32, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
				QueueSpawn(r3..scavconfig.unitnamesuffix, posx-32, posy, posz+32, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
				QueueSpawn(r3..scavconfig.unitnamesuffix, posx+32, posy, posz-32, math_random(0,3),GaiaTeamID,n+90+math.random(0,30))
			end
		else
			constructortimer = constructortimer +  math.ceil(n/constructorControllerModuleConfig.constructortimerreductionframes)
		end
	else
		constructortimer = constructortimer +  math.ceil(n/constructorControllerModuleConfig.constructortimerreductionframes)
	end
end			
	
function ConstructNewBlueprint(n, scav)
	local x,y,z = Spring.GetUnitPosition(scav)
	local posx = math_random(x-1000,x+1000)
	local posz = math_random(z-1000,z+1000)
	local posy = Spring.GetGroundHeight(posx, posz)
	local spawnTier = math_random(1,100)
	local unitCount = Spring.GetTeamUnitCount(GaiaTeamID)
	if unitCount + 200 < scavMaxUnits then
		if posy > 0 then
			if spawnTier <= TierSpawnChances.T0 then
					blueprint = ScavengerConstructorBlueprintsT0[math_random(1,#ScavengerConstructorBlueprintsT0)]
			elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 then
					blueprint = ScavengerConstructorBlueprintsT1[math_random(1,#ScavengerConstructorBlueprintsT1)]
			elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 then
					blueprint = ScavengerConstructorBlueprintsT2[math_random(1,#ScavengerConstructorBlueprintsT2)]
			elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 + TierSpawnChances.T3 then
					blueprint = ScavengerConstructorBlueprintsT3[math_random(1,#ScavengerConstructorBlueprintsT3)]
			elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 + TierSpawnChances.T3 + TierSpawnChances.T4 then
					blueprint = ScavengerConstructorBlueprintsT3[math_random(1,#ScavengerConstructorBlueprintsT3)]
			else
				blueprint = ScavengerConstructorBlueprintsT0[math_random(1,#ScavengerConstructorBlueprintsT0)]
			end
		elseif posy <= 0 then	
			if spawnTier <= TierSpawnChances.T0 then
					blueprint = ScavengerConstructorBlueprintsT0Sea[math_random(1,#ScavengerConstructorBlueprintsT0Sea)]
			elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 then
					blueprint = ScavengerConstructorBlueprintsT1Sea[math_random(1,#ScavengerConstructorBlueprintsT1Sea)]
			elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 then
					blueprint = ScavengerConstructorBlueprintsT2Sea[math_random(1,#ScavengerConstructorBlueprintsT2Sea)]
			elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 + TierSpawnChances.T3 then
					blueprint = ScavengerConstructorBlueprintsT3Sea[math_random(1,#ScavengerConstructorBlueprintsT3Sea)]
			elseif spawnTier <= TierSpawnChances.T0 + TierSpawnChances.T1 + TierSpawnChances.T2 + TierSpawnChances.T3 + TierSpawnChances.T4 then
					blueprint = ScavengerConstructorBlueprintsT3Sea[math_random(1,#ScavengerConstructorBlueprintsT3Sea)]
			else
				blueprint = ScavengerConstructorBlueprintsT0Sea[math_random(1,#ScavengerConstructorBlueprintsT0Sea)]
			end
		end
	else
		local mapcenterX = mapsizeX/2
		local mapcenterZ = mapsizeZ/2
		local mapcenterY = Spring.GetGroundHeight(mapcenterX, mapcenterZ)
		local mapdiagonal = math.ceil(math.sqrt((mapsizeX*mapsizeX)+(mapsizeZ*mapsizeZ)))
		Spring.GiveOrderToUnit(scav, CMD.RECLAIM,{mapcenterX+math_random(-100,100),mapcenterY,mapcenterZ+math_random(-100,100),mapdiagonal}, 0)
	end
							
	posradius = blueprint(scav, posx, posy, posz, GaiaTeamID, true)
	canConstructHere = posOccupied(posx, posy, posz, posradius)
	if canConstructHere then
		canConstructHere = posCheck(posx, posy, posz, posradius)
	end
	if canConstructHere then
		-- let's do this shit
		blueprint(scav, posx, posy, posz, GaiaTeamID, false)
		local x = math_random(x-1000,x+1000)
		local z = math_random(z-1000,z+1000)
		local y = Spring.GetGroundHeight(x,z)
		Spring.GiveOrderToUnit(scav, CMD.MOVE,{x,y,z}, {"shift"})
		local x = math_random(x-100,x+100)
		local z = math_random(z-100,z+100)
		local y = Spring.GetGroundHeight(x,z)
		Spring.GiveOrderToUnit(scav, CMD.MOVE,{x,y,z}, {"shift"})
	else
		local x,y,z = Spring.GetUnitPosition(scav)
		local x = math_random(x-500,x+500)
		local z = math_random(z-500,z+500)
		local y = Spring.GetGroundHeight(x,z)
		Spring.GiveOrderToUnit(scav, CMD.MOVE,{x,y,z}, {"shift"})
		local x,y,z = Spring.GetUnitPosition(scav)
		local x = math_random(x-100,x+100)
		local z = math_random(z-100,z+100)
		local y = Spring.GetGroundHeight(x,z)
		Spring.GiveOrderToUnit(scav, CMD.MOVE,{x,y,z}, {"shift"})
	end
end