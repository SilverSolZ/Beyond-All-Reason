return {
	corseah = {
		acceleration = 0.15,
		brakerate = 0.5,
		buildcostenergy = 6500,
		buildcostmetal = 350,
		buildpic = "CORSEAH.DDS",
		buildtime = 15289,
		canfly = true,
		canmove = true,
		category = "ALL NOTSUB VTOL NOWEAPON NOTHOVER",
		collide = false,
		collisionvolumeoffsets = "1 -3 0",
		collisionvolumescales = "52 21 52",
		collisionvolumetype = "CylY",
		cruisealt = 135,
		description = "Assault Transport",
		energymake = 3,
		explodeas = "hugeExplosionGeneric",
		footprintx = 4,
		footprintz = 4,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		airStrafe = false,
		airhoverfactor = 0,
		bankingAllowed = false,
		maxdamage = 1650,
		maxslope = 10,
		maxvelocity = 7,
		maxwaterdepth = 0,
		name = "Seahook",
		objectname = "CORSEAH",
		releaseheld = true,
		seismicsignature = 0,
		selfdestructas = "hugeExplosionGenericSelfd",
		sightdistance = 260,
		transportcapacity = 30,
		transportsize = 15,
		turninplaceanglelimit = 360,
		turnrate = 380,
		upright = true,
		blocking = false,
		customparams = {
			wingsurface = 0.50,
			paralyzemultiplier = 0.025,
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg3",
				"deathceg4",
				"deathceg2",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "vtolcrac",
			},
		},
	},
}
