return {
	raptor_turret_acid_t3_v1 = {
		maxacc = 0.0115,
		activatewhenbuilt = true,
		autoheal = 1,

		maxdec = 0.0115,
		energycost = 6000,
		metalcost = 240,
		builddistance = 500,
		builder = false,
		buildpic = "raptors/raptor_turretl_acid.DDS",
		buildtime = 5200,
		canattack = true,
		canreclaim = false,
		canrestore = false,
		canstop = "1",
		capturable = false,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE RAPTOR EMPABLE",
		collisionvolumeoffsets = "0 -15 0",
		collisionvolumescales = "40 50 40",
		collisionvolumetype = "box",
		--energystorage = 500,
		explodeas = "tentacle_death",
		--extractsmetal = 0.001,
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 15,
		idletime = 300,
		levelground = false,
		mass = 1400,
		health = 11100,
		maxslope = 255,
		speed = 0.0,
		maxwaterdepth = 0,
		movementclass = "NANO",
		noautofire = false,
		nochasecategory = "MOBILE",
		objectname = "Raptors/raptor_turretl_acid_v2.s3o",
		--reclaimspeed = 200,
		repairable = true,
		script = "Raptors/raptor_turretl_v2.cob",
		seismicsignature = 0,
		selfdestructas = "tentacle_death",
		side = "THUNDERBIRDS",
		sightdistance = 1000,
		smoothanim = true,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 1840,
		unitname = "raptord2",
		upright = false,
		waterline = 1,
		workertime = 100,
		yardmap = "oooo oooo oooo oooo",
		customparams = {
			subfolder = "other/raptors",
			model_author = "LathanStanley, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_l_normals.png",
			treeshader = "yes",
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
			},
			pieceexplosiongenerators = {
				[1] = "blood_spray",
				[2] = "blood_spray",
				[3] = "blood_spray",
			},
		},
		weapondefs = {
			acidspit = {
				accuracy = 2048,
				areaofeffect = 150,
				collidefriendly = 0,
				collidefeature = 0,
				avoidfeature = 0,
				avoidfriendly = 0,
				burst = 4,
				burstrate = 0.001,
				cegtag = "blob_trail_green",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.63,
				explosiongenerator = "custom:acid-explosion-xl",
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.7,
				interceptedbyshieldtype = 1,
				name = "GOOLAUNCHER",
				noselfdamage = true,
				nogap = false,
				size = 9,
				sizedecay = 0.04,
				alphaDecay = 0.18,
				stages = 8,
				--paralyzetime = 20,
				proximitypriority = -4,
				range = 2000,
				reloadtime = 40,
				rgbcolor = "0.8 0.99 0.11",
				soundhit = "bloodsplash3",
				soundstart = "alien_bombrel",
				sprayangle = 2048,
				tolerance = 5000,
				turret = true,
				weapontype = "Cannon",
				weapontimer = 0.2,
				weaponvelocity = 520,
				damage = {
					default = 1,
					shields = 320,
				},
			},
		},
		weapons = {
			[1] = {
				def = "acidspit",
				onlytargetcategory = "NOTAIR",
			},
		},
	},
}
