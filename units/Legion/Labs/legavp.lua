return {
	legavp = {
		maxacc = 0,
		maxdec = 0,
		buildangle = 1024,
		energycost = 16000,
		metalcost = 2800,
		builder = true,
		buildpic = "LEGAVP.DDS",
		buildtime = 18500,
		canmove = true,
		category = "ALL NOTLAND NOWEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "1 0 0",
		collisionvolumescales = "124 70 109",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		energystorage = 200,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 9,
		footprintz = 7,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		levelground = false,
		health = 5100,
		maxslope = 15,
		maxwaterdepth = 0,
		metalstorage = 200,
		objectname = "Units/CORAVP.s3o",
		radardistance = 50,
		script = "Units/CORAVP.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 286,
		terraformspeed = 1000,
		workertime = 300,
		yardmap = "oooooooooooooooooooocccccoooocccccoooocccccoooocccccoooocccccoo",
		buildoptions = {
			"legacv",
			"corseal",
			"legmrv",
			"legsco",
			"corparrow",
			"corgol",
			"corban",
			"cormart",
			"legvcarry",
			"corvroc",
			"leginf",
			"corsent",
			"cormabm",
			"coreter",
			"corvrad",
		},
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/coravp_aoplane.dds",
			buildinggrounddecalsizey = 10,
			buildinggrounddecalsizex = 10,
			buildinggrounddecaldecayspeed = 0.01,
			unitgroup = 'buildert2',
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbuildings/landfactories",
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -6 0",
				collisionvolumescales = "124 30 104",
				collisionvolumetype = "Box",
				damage = 2777,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 6,
				footprintz = 6,
				height = 20,
				hitdensity = 100,
				metal = 1721,
				object = "Units/coravp_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1389,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				hitdensity = 100,
				metal = 860,
				object = "Units/cor6X6C.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:WhiteLight",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "pvehactv",
			},
		},
	},
}
