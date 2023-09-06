local armorDefs = {
	commanders = {
		"armcom",
		"armdecom",
		"armcomcon",
		"corcom",
		"cordecom",
		"corcomcon",
		"legcom",
		"legcomlvl2",
		"legcomlvl3",
		"legcomlvl4",
	},
	scavboss = {
		"armcomboss",
		"corcomboss",
	},
	indestructable = {
		"xmasball",
		"xmasball2",
		"armstone",
		"corstone",
		"dice",
		"chip",
	},
	crawlingbombs = {
		"armvader",
		"corroach",
		"corsktl",
	},
	walls = {
		"armdrag",
		"armfort",
		"cordrag",
		"corfort",
		"scavdrag",
		"scavfort",
	},
	standard = {
		"armjuno",
		"armageo",
		"armaak",
		"armack",
		"armacv",
		"armadvsol",
		"armah",
		"armamex",
		"armamph",
		"armanac",
		"armap",
		"armasp",
		"armbrtha",
		"armch",
		"armck",
		"armclaw",
		"armcv",
		"armdf",
		--"armdrag",
		"armemp",
		"armestor",
		"armfark",
		"armfast",
		"armfatf",
		"armfav",
		"armfdrag",
		"armfhlt",
		"armfhp",
		"armfido",
		"armflash",
		"armflea",
		"armfmkr",
		--"armfort",
		"armfrt",
		"armgeo",
		"armgmm",
		"armgremlin",
		"armham",
		"armhlt",
		"armhp",
		"armjanus",
		"armjeth",
		"armlab",
		"armlatnk",
		"armllt",
		"armmakr",
		"armmanni",
		"armmart",
		"armmav",
		"armmerl",
		"armmex",
		"armmh",
		"armmmkr",
		"armmoho",
		"armmstor",
		"armpb",
		"armplat",
		"armpw",
		"armrectr",
		"armrl",
		"armrock",
		"armsam",
		"armscab",
		"armsd",
		"armsh",
		"armsnipe",
		"armsolar",
		"armspid",
		"armsptk",
		"armstump",
		"armsy",
		"armtarg",
		"armthovr",
		"armtide",
		"armuwes",
		"armuwfus",
		"armomex",
		"armuwmex",
		"armuwmme",
		"armuwmmm",
		"armuwms",
		"armvp",
		"armvulc",
		"armwin",
		"armzeus",
		"armamsub",
		"corjuno",
		"corageo",
		"armconsul",
		"coraak",
		"corack",
		"coracv",
		"coradvsol",
		"corah",
		"corak",
		"corap",
		"corasp",
		"corbhmth",
		"corbuzz",
		"corcan",
		"corch",
		"corck",
		"corcrash",
		"corcv",
		--"cordrag",
		"corestor",
		"corfast",
		"corfatf",
		"corfav",
		"corfdrag",
		"corfhlt",
		"corfhp",
		"corfmkr",
		"corforge",
		--"corfort",
		"corfrt",
		"corftiger",
		"corgator",
		"corgeo",
		"corhlt",
		"corhp",
		"corhrk",
		"corint",
		"corlab",
		"corllt",
		"cormabm",
		"cormakr",
		"cormart",
		"cormaw",
		"cormex",
		"cormh",
		"cormist",
		"cormmkr",
		"cormoho",
		"cormort",
		"cormstor",
		"cornecro",
		"corplat",
		"corprinter",
		"corvac",
		"corvacct",
		"corraid",
		"correap",
		"corrl",
		"corsd",
		"corsh",
		"corsnap",
		"corsolar",
		"corstorm",
		"corsy",
		"cortarg",
		"cortermite",
		"corthovr",
		"cortorch",
		"corthud",
		"cortide",
		"cortron",
		"coruwes",
		"coruwfus",
		"coromex",
		"coruwmex",
		"coruwmme",
		"coruwmmm",
		"coruwms",
		"corvipe",
		"corvp",
		"corvroc",
		"corwin",
		"corwolv",
		"coramsub",
		"corhllt",
		"armmercury",
		"corhal",
		"corscreamer",
		"armbeamer",
		"armart",
		"corban",
    	"armbeaver",
		"armcroc",
		"armpincer",
		"coramph",
		"corgarp",
		"cormuskrat",
		"corparrow",
		"corseal",
		"corsala",
		"corintr",
		"armmar",
		"corshiva",
        "cormadsam",
		"armferret",
        "armwar",
		"corexp",
		"corlevlr",
		"cormexp",
        "armspy",
		"cormando",
		"corspy",
        "armdl",
		"cordl",
        "armfflak",
		"armflak",
		"armyork",
		"corenaa",
		"corflak",
		"corsent",
        "armmlv",
		"cormlv",
		"corpyro",
        "armarad",
		"armaser",
		"armason",
		"armeyes",
		"armfrad",
		"armjam",
		"armjamt",
		"armmark",
		"armrad",
		"armseer",
		"armsonar",
		"armveil",
		"corarad",
		"corason",
		"coreter",
		"coreyes",
		"corfrad",
		"corjamt",
		"corrad",
		"corshroud",
		"corsonar",
		"corspec",
		"corvoyr",
		"corvrad",

		"armafus",
		"armaap",
		"armalab",
		"armamd",
		"armasy",
		"armavp",
		"armbull",
		"armckfus",
		"armfboy",
		"armfus",
		"armshltx",
		"armsilo",
		"corafus",
		"coraap",
		"coralab",
		"corasy",
		"coravp",
		"corfmd",
		"corfus",
		"corgant",
		"corgol",
		"corsilo",
		"corsumo",
		"cortrem",
		"armbanth",
		"corcat",
		"armraz",
		"armvang",
		"corkarg",
		"armamb",
		"armguard",
		"corpun",
		"cortoast",
		"armanni",
		"cordoom",
		"corkorg",
		"corjugg",
		"armtl",
		"cortl",
		"armatl",
		"coratl",
		"armcir",
		"armuwadves",
		"armuwadvms",
		"corerad",
		"coruwadves",
		"coruwadvms",

		"corgatreap",

		"armpwt4",
		"armrattet4",
		"armvadert4",
		"corkarganetht4",
		"armassimilator",
		"armlunchbox",
		"armmeatball",
		"armsptkt4",
		"cordemont4",
		"corgolt4",

		"scavmist",
		"scavmistxl",
		"scavmistxxl",

		"armapt3",
		"corapt3",

	},
	bombers = {
		"raptorf1_mini",
		"raptorf1",
		"raptorf1b",
		"raptorf1apex",
		"raptorf1apexb",
		"raptorebomber1",
		"raptoracidbomber",
		"armthund",
		"corshad",
		"armliche",
		"armlichet4",
		"armlance",
		"armpnix",
		"armsb",
		"armstil",
		"corhurc",
		"corsb",
		"cortitan",
		"cords",
		"legnap",
		"legkam",
		"legcib",
		"legmineb",
		"raptor_dodoair",
		"raptorbroodbomberh2",
		"raptorbroodbomberh3",
		"raptorbroodbomberh4",
	},
	fighters = {
		"raptorw1_mini",
		"raptorw1",
		"raptorw1b",
		"raptorw1c",
		"raptorw1d",
		"raptorw2",
		"raptorairscout1",
		"raptorairscout2",
		"raptorairscout3",
		"armfig",
		"corveng",
		"armhawk",
		"armsfig",
		"corsfig",
		"corvamp",
		"legfig",
	},
	space = {
		"armsat",
	},
	mines = {
		"armfmine3",
		"armmine1",
		"armmine2",
		"armmine3",
		"corfmine3",
		"cormine1",
		"cormine2",
		"cormine3",
		"cormine4",
	},
	nanos = {
		"armnanotc",
		"cornanotc",
		"armnanotcplat",
		"cornanotcplat",
	},
	vtol = {
		"raptors3",
		"armaca",
		"armca",
		"armcsa",
		"armdfly",
		"armpeep",
		"armseap",
		"corseah",
		"coraca",
		"corca",
		"corcsa",
		"corfink",
		"corseap",
        "armawac",
		"armsehak",
		"corawac",
		"corhunt",
        "armatlas",
		"corvalk",
        "armbrawl",
		"armkam",
		"armkam2",
		"armsaber",
        "armblade",
		"corbw",
		"corape",
		"corcrw",
		"corcut",
		"corcrwt4",
		"armfepocht4",
		"corfblackhyt4",
		"cordronecarryair",
		"armthundt4",
		"armassistdrone",
		"corassistdrone",
		"legassistdrone",
		"legmos",
		"legfort",
		"legca",
		"legaca",
		"armdrone",
		"cordrone",
		"armdroneold",
		"cordroneold",
		"legdrone",
	},
	shields = {
		"armgate",
		"corgate",
		--"armfgate", Not currently used
		--"corfgate", Not currently used
	},
	lboats = {
		"corpt",
		"armpt",
		"armpship",
		"corpship",
		"armcs",
		"armmls",
		"armsjam",
		"corcs",
		"coresupp",
		"cormls",
		"armdecade",
		"corsjam",
	},

	hvyboats = {
		"armroy",
		"corroy",
		"corarch",
		"armaas",
		"armcrus",
		"armmship",
		"corcrus",
		"cormship",
		"armcarry",
		"corcarry",
		"armtship",
		"cortship",
		"armbats",
		"corbats",
		"armepoch",
		"corblackhy",
	},

	subs = {
		"armsub",
		"corsub",
        "armsubk",
		"corshark",
        "corssub",
		"armserp",
		"armacsub",
        "coracsub",
		"armrecl",
		"correcl",
	},

	raptor =
	{
		"ve_raptorq",
		"e_raptorq",
		"n_raptorq",
		"h_raptorq",
		"vh_raptorq",
		"epic_raptorq",
		"raptor1",
		"raptor1b",
		"raptor1c",
		"raptor1d",
		"raptor1x",
		"raptor1y",
		"raptor1z",
		"raptor2",
		"raptor2b",
		"raptor_dodo1",
		"raptor_dodo2",
		"raptora1",
		"raptora1b",
		"raptora1c",
		"raptora2",
		"raptora2b",
		"raptorc2",
		"raptorc3",
		"raptorc3b",
		"raptorc3c",
		"raptor_turrets",
		"raptor_turretl",
		"raptorr1",
		"raptorr2",
		"raptorh2",
		"raptorh3",
		"raptorh4",
		"raptorh5",
		"raptorr3",
		"raptors1",
		"raptors2",
		"raptorp1",
		"raptorp2",
		"raptorpyroallterrain",
		"raptorhealer1",
		"raptorhealer2",
		"raptorhealer3",
		"raptorhealer4",
		"raptorh1b",
		"raptoracidallterrain",
		"raptoracidarty",
		"raptoracidassault",
		"raptoracidswarmer",
		"raptore1",
		"raptore2",
		"raptorearty1",
		"raptorelectricallterrain",
		"raptor_hive",
		"raptor_antinuke",
	},
}

-- add scavenger variants
local scavArmorDefs = {}
for category, names in pairs(armorDefs) do
	local nameCount = #names
	for _, name in pairs(names) do
		if scavArmorDefs[category] == nil then
			scavArmorDefs[category] = {}
		end

		nameCount = nameCount + 1
		scavArmorDefs[category][nameCount] = name .. '_scav'
	end
end

table.mergeInPlace(armorDefs, scavArmorDefs)

return armorDefs
