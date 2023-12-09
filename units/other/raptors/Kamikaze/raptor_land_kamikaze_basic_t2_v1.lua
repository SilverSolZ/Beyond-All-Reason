return {
	raptor_land_kamikaze_basic_t2_v1 = {
		maxacc = 6.9,
		activatewhenbuilt = true,
		autoheal = 50,

		maxdec = 0.23,
		energycost = 3000,
		metalcost = 128,
		builder = false,
		buildpic = "raptors/raptor_dodo1.DDS",
		buildtime = 4500,
		canguard = true,
		canhover = "1",
		canmove = true,
		canpatrol = true,
		canstop = "1",
		capturable = false,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE RAPTOR EMPABLE",
		collide = false,
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "10 14 22",
		collisionvolumetype = "box",
		defaultmissiontype = "Standby",
		explodeas = "DODO_DEATH1",
		floater = false,
		footprintx = 1,
		footprintz = 1,
		hidedamage = 1,
		kamikaze = true,
		kamikazedistance = 40,
		leavetracks = true,
		maneuverleashlength = "640",
		mass = 50,
		health = 890,
		maxslope = 18,
		speed = 210.0,
		maxwaterdepth = 0,
		movementclass = "RAPTORSMALLHOVER",
		noautofire = false,
		nochasecategory = "VTOL HOVER",
		objectname = "Raptors/raptor_dodo.s3o",
		script = "Raptors/raptor_dodo1.cob",
		seismicsignature = 2,
		selfdestructas = "DODO_DEATH1",
		selfdestructcountdown = 0,
		side = "THUNDERBIRDS",
		sightdistance = 50,
		smoothanim = true,
		stealth = 1,
		trackoffset = 1,
		trackstrength = 3,
		trackstretch = 1,
		tracktype = "RaptorTrack",
		trackwidth = 10,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 1840,
		unitname = "raptor_land_kamikaze_basic_t2_v1",
		upright = false,
		waterline = 13,
		workertime = 0,
		customparams = {
			subfolder = "other/raptors",
			model_author = "KDR_11k, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_s_normals.png",
			--treeshader = "no",
			instantselfd = true,
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
	},
}
