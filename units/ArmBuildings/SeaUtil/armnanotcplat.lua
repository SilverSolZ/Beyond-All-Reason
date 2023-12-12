return {
	armnanotcplat = {
		maxacc = 0,
		maxdec = 4.5,
		energycost = 2600,
		metalcost = 230,
		builddistance = 400,
		builder = true,
		buildpic = "ARMNANOTCPLAT.DDS",
		buildtime = 5300,
		canassist = true,
		canfight = true,
		canguard = true,
		canpatrol = true,
		canreclaim = true,
		canrepeat = false,
		canstop = true,
		cantbetransported = true, -- transports cannot drop them back into water, reenable once that works
		category = "ALL NOTSUB NOWEAPON NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "31 50 31",
		collisionvolumetype = "CylY",
		energyupkeep = 30,
		explodeas = "nanoboom",
		floater = true,
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		mass = 700,
		health = 560,
		maxslope = 10,
		maxwaterdepth = 50000000,
		minwaterdepth = 12,
		movementclass = "NANO",
		objectname = "Units/ARMNANOTCPLAT.s3o",
		script = "Units/ARMNANOTCPLAT.cob",
		seismicsignature = 0,
		selfdestructas = "nanoselfd",
		sightdistance = 380,
		terraformspeed = 1000,
		turnrate = 1,
		upright = true,
		workertime = 200,
		customparams = {
			usebuildinggrounddecal = false,
			buildinggrounddecaltype = "decals/armnanotc_aoplane.dds",
			buildinggrounddecalsizey = 5,
			buildinggrounddecalsizex = 5,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = "builder",
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armbuildings/seautil",
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2-builder",
				[2] = "deathceg3-builder",
				[3] = "deathceg4-builder",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
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
				[1] = "varmmove",
			},
			select = {
				[1] = "varmsel",
			},
		},
	},
}
