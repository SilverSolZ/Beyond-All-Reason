return {
	armlwall = {
		maxacc = 0,
		energycost = 4800, --3x armclaw
		metalcost = 1020, --3x armclaw
		buildpic = "ARMLWALL.DDS",
		buildtime = 14000, --3x armclaw
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -3 0",
		collisionvolumescales = "32 50 32",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		crushresistance = 1000,
		damagemodifier = 0.25,
		decoyfor = "armfort",
		explodeas = "smallBuildingexplosiongeneric",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
		icontype = "building",
		idleautoheal = 10,
		idletime = 900,
		levelground = false,
		mass = 10000000000,
		health = 5320, --4x armclaw
		maxslope = 24,
		maxwaterdepth = 0,
		nochasecategory = "MOBILE",
		objectname = "Units/ARMLWALL.s3o",
		script = "Units/ARMLWALL.cob",
		seismicsignature = 0,
		selfdestructas = "tinyBuildingExplosionGenericSelfd",
		sightdistance = 330,
		stealth = true,
		turnrate = 0,
		upright = true,
		yardmap = "ffff",
		customparams = {
			neutral_when_closed = true,
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armfort_aoplane.dds",
			buildinggrounddecalsizey = 4,
			buildinggrounddecalsizex = 4,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'weapon',
			decoyfor = "armfort",
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			removewait = true,
			subfolder = "armbuildings/landdefenceoffence",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				autoreclaimable = 0,
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -3 0",
				collisionvolumescales = "32 50 32",
				collisionvolumetype = "CylY",
				damage = 540,
				energy = 0,
				featuredead = "ROCKTEETH",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 205,
				object = "Units/armfort.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			rockteeth = {
				animating = 0,
				animtrans = 0,
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 500,
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 2,
				object = "Units/arm1X1A.s3o",
				reclaimable = true,
				resurrectable = 0,
				shadtrans = 1,
				world = "greenworld",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-lightning",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3-lightning",
				[2] = "deathceg4-lightning",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			cloak = "kloak1",
			uncloak = "kloak1un",
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
				[1] = "servmed2",
			},
			select = {
				[1] = "servmed2",
			},
		},
		weapondefs = {
			lightning = {
				areaofeffect = 8,
				avoidfeature = false,
				beamttl = 1,
				burst = 10,
				burstrate = 0.03333,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 1,
				edgeeffectiveness = 0.15,
				energypershot = 5,
				explosiongenerator = "custom:genericshellexplosion-medium-lightning2",
				firestarter = 50,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 28, --was 24
				name = "Medium Lightning Cannon",
				noselfdamage = true,
				range = 315,
				reloadtime = 1.33, --was 0.3333
				rgbcolor = "0.5 0.5 1",
				soundhit = "lashit",
				soundhitwet = "sizzle",
				soundstart = "lghthvy1",
				soundtrigger = true,
				thickness = 2.2, -- was 2.0
				turret = true,
				weapontype = "LightningCannon",
				weaponvelocity = 400,
				customparams = {
					spark_ceg = "genericshellexplosion-splash-lightning",
					spark_forkdamage = "0.3", --was 0.5
					spark_maxunits = "3", --2x armclaw
					spark_range = "80", --66% more than armclaw
				},
				damage = {
					default = 64, --1/2 of armthor | 2.66x armclaw
				},
			},
			-- banisher = {
			-- 	areaofeffect = 128,
			-- 	avoidfeature = false,
			-- 	burnblow = true,
			-- 	burst = 5,
			-- 	burstrate = 0.5,
			-- 	cegtag = "missiletraillarge-red",
			-- 	craterareaofeffect = 128,
			-- 	craterboost = 0,
			-- 	cratermult = 0,
			-- 	edgeeffectiveness = 0.55,
			-- 	explosiongenerator = "custom:genericshellexplosion-large-bomb",
			-- 	firestarter = 20,
			-- 	flighttime = 7.4,
			-- 	impulseboost = 0.123,
			-- 	impulsefactor = 0.123,
			-- 	model = "banishermissile.s3o",
			-- 	name = "Banisher",
			-- 	noselfdamage = true,
			-- 	range = 800,
			-- 	reloadtime = 7.5,
			-- 	smoketrail = true,
			-- 	smokePeriod = 7, --7
			-- 	smoketime = 24, --48
			-- 	smokesize = 11.3,
			-- 	smokecolor = 0.82,
			-- 	smokeTrailCastShadow = false,
			-- 	soundhit = "corban_b",
			-- 	soundhitwet = "splsmed",
			-- 	soundstart = "corban_a",
			-- 	startvelocity = 240,
			-- 	texture1 = "null",
			-- 	texture2 = "railguntrail",
			-- 	tolerance = 9000,
			-- 	tracks = true,
			-- 	trajectoryheight = 0.45,
			-- 	turnrate = 30000,
			-- 	turret = true,
			-- 	weaponacceleration = 220,
			-- 	weapontimer = 0.25,
			-- 	weapontype = "StarburstLauncher",
			-- 	weaponvelocity = 650,
			-- 	damage = {
			-- 		commanders = 1000,
			-- 		default = 1000,
			-- 		subs = 500,
			-- 	},
			-- },
		},
		weapons = {
			[1] = {
				def = "lightning",
				onlytargetcategory = "SURFACE",
				fastautoretargeting = true,
			},
		},
	},
}
