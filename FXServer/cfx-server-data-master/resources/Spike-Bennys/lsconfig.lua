
local colors = {
{name = "Fekete", colorindex = 0},{name = "Carbon fekete", colorindex = 147},
{name = "Grafit", colorindex = 1},{name = "Antracit Fekete", colorindex = 11},
{name = "Fekete Acél", colorindex = 2},{name = "Sötét Acél", colorindex = 3},
{name = "Ezüst", colorindex = 4},{name = "Kék Ezüst", colorindex = 5},
{name = "Rolled Steel", colorindex = 6},{name = "Árnyék Ezüst", colorindex = 7},
{name = "Kő Ezüst", colorindex = 8},{name = "Éj ezüst", colorindex = 9},
{name = "Öntöttvas Ezüst", colorindex = 10},{name = "Vörös", colorindex = 27},
{name = "Torino Vörös", colorindex = 28},{name = "Formula Vörös", colorindex = 29},
{name = "Láva Vörös", colorindex = 150},{name = "Lángvörös", colorindex = 30},
{name = "Grace Vörös", colorindex = 31},{name = "Gránát Vörös", colorindex = 32},
{name = "Naplemente Vörös", colorindex = 33},{name = "Cabernet Vörös", colorindex = 34},
{name = "Bor Vörös", colorindex = 143},{name = "Cukor Vörös", colorindex = 35},
{name = "Hot Pink", colorindex = 135},{name = "Pfsiter Pink", colorindex = 137},
{name = "Salmon Pink", colorindex = 136},{name = "Napkelte Narancs", colorindex = 36},
{name = "Narancssárga", colorindex = 38},{name = "Élénk Narancssárga", colorindex = 138},
{name = "Arany", colorindex = 99},{name = "Réz", colorindex = 90},
{name = "Citromsárga", colorindex = 88},{name = "Verseny Sárga", colorindex = 89},
{name = "Harmat Sárga", colorindex = 91},{name = "Sötét Zöld", colorindex = 49},
{name = "Verseny Zöld", colorindex = 50},{name = "Tenger Zöld", colorindex = 51},
{name = "Oliva Zöld", colorindex = 52},{name = "Élénk Zöld", colorindex = 53},
{name = "Benzin Zöld", colorindex = 54},{name = "Lime Zöld", colorindex = 92},
{name = "Éjkék", colorindex = 141},
{name = "Galaxis Kék", colorindex = 61},{name = "Sötét Kék", colorindex = 62},
{name = "Szászkék", colorindex = 63},{name = "Kék", colorindex = 64},
{name = "Mariner Kék", colorindex = 65},{name = "Harbor Kék", colorindex = 66},
{name = "Gyémánt Kék", colorindex = 67},{name = "Szörf Kék", colorindex = 68},
{name = "Tenger Kék", colorindex = 69},{name = "Verseny Kék", colorindex = 73},
{name = "Ultra Kék", colorindex = 70},{name = "világoskék", colorindex = 74},
{name = "Csoki Barna", colorindex = 96},{name = "Bölénybarna", colorindex = 101},
{name = "Creeen Barna", colorindex = 95},{name = "Feltzer Barna", colorindex = 94},
{name = "Juhar Barna", colorindex = 97},{name = "Bükkfa Barna", colorindex = 103},
{name = "Sienna Barna", colorindex = 104},{name = "Nyeregbarna", colorindex = 98},
{name = "Moha Barna", colorindex = 100},{name = "Woodbeech Barna", colorindex = 102},
{name = "Szalma Barna", colorindex = 99},{name = "Homok Barna", colorindex = 105},
{name = "Fehéres Barna", colorindex = 106},{name = "Schafter Lila", colorindex = 71},
{name = "Spinnaker Lila", colorindex = 72},{name = "Éj Lila", colorindex = 142},
{name = "Élénk Lila", colorindex = 145},{name = "Krém", colorindex = 107},
{name = "Jégfehér", colorindex = 111},{name = "Fagyfehér", colorindex = 112}}
local metalcolors = {
{name = "Csiszolt Acél",colorindex = 117},
{name = "Csiszolt Fekete acél",colorindex = 118},
{name = "Csiszolt Alumínium",colorindex = 119},
{name = "Tiszta Arany",colorindex = 158},
{name = "Csiszolt Arany",colorindex = 159}
}
local mattecolors = {
{name = "Fekete", colorindex = 12},
{name = "Szürke", colorindex = 13},
{name = "Világos szürke", colorindex = 14},
{name = "Jégfehér", colorindex = 131},
{name = "Kék", colorindex = 83},
{name = "Sötétkék", colorindex = 82},
{name = "Éjkék", colorindex = 84},
{name = "Éj Lila", colorindex = 149},
{name = "Schafter Lila", colorindex = 148},
{name = "Vörös", colorindex = 39},
{name = "Sötét Vörös", colorindex = 40},
{name = "Narancssárga", colorindex = 41},
{name = "Citromsárga", colorindex = 42},
{name = "Lime Zöld", colorindex = 55},
{name = "Zöld", colorindex = 128},
{name = "Fagyzöld", colorindex = 151},
{name = "Lombzöld", colorindex = 155},
{name = "Olive Darb", colorindex = 152},
{name = "Sötét Föld", colorindex = 153},
{name = "Desert Tan", colorindex = 154}
}



LSC_Config = {}
LSC_Config.prices = {}

--------Prices---------
LSC_Config.prices = {

------Window tint------
	windowtint = {
		{ name = "Tiszta Fekete", tint = 1, price = 500},
		{ name = "Darksmoke", tint = 2, price = 500},
		{ name = "Lightsmoke", tint = 3, price = 500},
		{ name = "Limo", tint = 4, price = 500},
		{ name = "Zöld", tint = 5, price = 500},
	},

-------Respray--------
----Primary color---
	--Chrome 
	chrome = {
		colors = {
			{name = "Króm", colorindex = 120}
		},
		price = 500
	},
	--Classic 
	classic = {
		colors = colors,
		price = 250
	},
	--Matte 
	matte = {
		colors = mattecolors,
		price = 250
	},
	--Metallic 
	metallic = {
		colors = colors,
		price = 250
	},
	--Metals 
	metal = {
		colors = metalcolors,
		price = 250
	},

----Secondary color---
	--Chrome 
	chrome2 = {
		colors = {
			{name = "Króm", colorindex = 120}
		},
		price = 250
	},
	--Classic 
	classic2 = {
		colors = colors,
		price = 250
	},
	--Matte 
	matte2 = {
		colors = mattecolors,
		price = 250
	},
	--Metallic 
	metallic2 = {
		colors = colors,
		price = 250
	},
	--Metals 
	metal2 = {
		colors = metalcolors,
		price = 250
	},

------Neon layout------
	neonlayout = {
		{name = "Elülső, hátsó és oldalsó", price = 500},
	},
	--Neon color
	neoncolor = {
		{ name = "Fehér", neon = {255,255,255}, price = 500},
		{ name = "Kék", neon = {0,0,255}, price = 500},
		{ name = "Electric Blue", neon = {0,150,255}, price = 500},
		{ name = "Mentazöld", neon = {50,255,155}, price = 500},
		{ name = "Lime Zöld", neon = {0,255,0}, price = 500},
		{ name = "Citromsárga", neon = {255,255,0}, price = 500},
		{ name = "Golden Shower", neon = {204,204,0}, price = 500},
		{ name = "Narancssárga", neon = {255,128,0}, price = 500},
		{ name = "Vörös", neon = {255,0,0}, price = 500},
		{ name = "Pony Pink", neon = {255,102,255}, price = 500},
		{ name = "Hot Pink",neon = {255,0,255}, price = 500},
		{ name = "Lila", neon = {153,0,153}, price = 500},
		{ name = "Barna", neon = {139,69,19}, price = 500},
	},
	
--------Plates---------
	plates = {
		{ name = "Blue on White 1", plateindex = 0, price = 150},
		{ name = "Blue On White 2", plateindex = 3, price = 150},
		{ name = "Blue On White 3", plateindex = 4, price = 150},
		{ name = "Yellow on Blue", plateindex = 2, price = 150},
		{ name = "Yellow on Black", plateindex = 1, price = 150},
	},
	
--------Wheels--------
----Wheel accessories----
	wheelaccessories = {
		{ name = "Stock Gumik", price = 1500},
		{ name = "Custom Gumik", price = 1500},
		{ name = "Fehér Abroncsfüst",smokecolor = {254,254,254}, price = 1500},
		{ name = "Fekete Abroncsfüst", smokecolor = {1,1,1}, price = 1500},
		{ name = "Kék Abroncsfüst", smokecolor = {0,150,255}, price = 1500},
		{ name = "Sárga Abroncsfüst", smokecolor = {255,255,50}, price = 1500},
		{ name = "Narancs Abroncsfüst", smokecolor = {255,153,51}, price = 1500},
		{ name = "Vörös Abroncsfüst", smokecolor = {255,10,10}, price = 1500},
		{ name = "Zöld Abroncsfüst", smokecolor = {10,255,10}, price = 1500},
		{ name = "Lila Abroncsfüst", smokecolor = {153,10,153}, price = 1500},
		{ name = "Pink Abroncsfüst", smokecolor = {255,102,178}, price = 1500},
		{ name = "Szürke Abroncsfüst",smokecolor = {128,128,128}, price = 1500},
	},

----Wheel color----
	wheelcolor = {
		colors = colors,
		price = 500,
	},

----Front wheel (Bikes)----
	frontwheel = {
		{name = "Stock", wtype = 6, mod = -1, price = 500},
		{name = "Speedway", wtype = 6, mod = 0, price = 500},
		{name = "Streetspecial", wtype = 6, mod = 1, price = 500},
		{name = "Racer", wtype = 6, mod = 2, price = 500},
		{name = "Trackstar", wtype = 6, mod = 3, price = 500},
		{name = "Overlord", wtype = 6, mod = 4, price = 500},
		{name = "Trident", wtype = 6, mod = 5, price = 500},
		{name = "Triplethreat", wtype = 6, mod = 6, price = 500},
		{name = "Stilleto", wtype = 6, mod = 7, price = 500},
		{name = "Wires", wtype = 6, mod = 8, price = 500},
		{name = "Bobber", wtype = 6, mod = 9, price = 500},
		{name = "Solidus", wtype = 6, mod = 10, price = 500},
		{name = "Iceshield", wtype = 6, mod = 11, price = 500},
		{name = "Loops", wtype = 6, mod = 12, price = 500},
	},

----Back wheel (Bikes)-----
	backwheel = {
		{name = "Stock", wtype = 6, mod = -1, price = 500},
		{name = "Speedway", wtype = 6, mod = 0, price = 500},
		{name = "Streetspecial", wtype = 6, mod = 1, price = 500},
		{name = "Racer", wtype = 6, mod = 2, price = 500},
		{name = "Trackstar", wtype = 6, mod = 3, price = 500},
		{name = "Overlord", wtype = 6, mod = 4, price = 500},
		{name = "Trident", wtype = 6, mod = 5, price = 500},
		{name = "Triplethreat", wtype = 6, mod = 6, price = 500},
		{name = "Stilleto", wtype = 6, mod = 7, price = 500},
		{name = "Wires", wtype = 6, mod = 8, price = 500},
		{name = "Bobber", wtype = 6, mod = 9, price = 500},
		{name = "Solidus", wtype = 6, mod = 10, price = 500},
		{name = "Iceshield", wtype = 6, mod = 11, price = 500},
		{name = "Loops", wtype = 6, mod = 12, price = 500},
	},

----Sport wheels-----
	sportwheels = {
		{name = "Stock", wtype = 0, mod = -1, price = 500},
		{name = "Inferno", wtype = 0, mod = 0, price = 500},
		{name = "Deepfive", wtype = 0, mod = 1, price = 500},
		{name = "Lozspeed", wtype = 0, mod = 2, price = 500},
		{name = "Diamondcut", wtype = 0, mod = 3, price = 500},
		{name = "Chrono", wtype = 0, mod = 4, price = 500},
		{name = "Feroccirr", wtype = 0, mod = 5, price = 500},
		{name = "Fiftynine", wtype = 0, mod = 6, price = 500},
		{name = "Mercie", wtype = 0, mod = 7, price = 500},
		{name = "Syntheticz", wtype = 0, mod = 8, price = 500},
		{name = "Organictyped", wtype = 0, mod = 9, price = 500},
		{name = "Endov1", wtype = 0, mod = 10, price = 500},
		{name = "Duper7", wtype = 0, mod = 11, price = 500},
		{name = "Uzer", wtype = 0, mod = 12, price = 500},
		{name = "Groundride", wtype = 0, mod = 13, price = 500},
		{name = "Spacer", wtype = 0, mod = 14, price = 500},
		{name = "Venum", wtype = 0, mod = 15, price = 500},
		{name = "Cosmo", wtype = 0, mod = 16, price = 500},
		{name = "Dashvip", wtype = 0, mod = 17, price = 500},
		{name = "Icekid", wtype = 0, mod = 18, price = 500},
		{name = "Ruffeld", wtype = 0, mod = 19, price = 500},
		{name = "Wangenmaster", wtype = 0, mod = 20, price = 500},
		{name = "Superfive", wtype = 0, mod = 21, price = 500},
		{name = "Endov2", wtype = 0, mod = 22, price = 500},
		{name = "Slitsix", wtype = 0, mod = 23, price = 500},
	},
-----Suv wheels------
	suvwheels = {
		{name = "Stock", wtype = 3, mod = -1, price = 500},
		{name = "Vip", wtype = 3, mod = 0, price = 500},
		{name = "Benefactor", wtype = 3, mod = 1, price = 500},
		{name = "Cosmo", wtype = 3, mod = 2, price = 500},
		{name = "Bippu", wtype = 3, mod = 3, price = 500},
		{name = "Royalsix", wtype = 3, mod = 4, price = 500},
		{name = "Fagorme", wtype = 3, mod = 5, price = 500},
		{name = "Deluxe", wtype = 3, mod = 6, price = 500},
		{name = "Icedout", wtype = 3, mod = 7, price = 500},
		{name = "Cognscenti", wtype = 3, mod = 8, price = 500},
		{name = "Lozspeedten", wtype = 3, mod = 9, price = 500},
		{name = "Supernova", wtype = 3, mod = 10, price = 500},
		{name = "Obeyrs", wtype = 3, mod = 11, price = 500},
		{name = "Lozspeedballer", wtype = 3, mod = 12, price = 500},
		{name = "Extra vaganzo", wtype = 3, mod = 13, price = 500},
		{name = "Splitsix", wtype = 3, mod = 14, price = 500},
		{name = "Empowered", wtype = 3, mod = 15, price = 500},
		{name = "Sunrise", wtype = 3, mod = 16, price = 500},
		{name = "Dashvip", wtype = 3, mod = 17, price = 500},
		{name = "Cutter", wtype = 3, mod = 18, price = 500},
	},
-----Offroad wheels-----
	offroadwheels = {
		{name = "Stock", wtype = 4, mod = -1, price = 500},
		{name = "Raider", wtype = 4, mod = 0, price = 500},
		{name = "Mudslinger", wtype = 4, modtype = 23, wtype = 4, mod = 1, price = 500},
		{name = "Nevis", wtype = 4, mod = 2, price = 500},
		{name = "Cairngorm", wtype = 4, mod = 3, price = 500},
		{name = "Amazon", wtype = 4, mod = 4, price = 500},
		{name = "Challenger", wtype = 4, mod = 5, price = 500},
		{name = "Dunebasher", wtype = 4, mod = 6, price = 500},
		{name = "Fivestar", wtype = 4, mod = 7, price = 500},
		{name = "Rockcrawler", wtype = 4, mod = 8, price = 500},
		{name = "Milspecsteelie", wtype = 4, mod = 9, price = 500},
	},
-----Tuner wheels------
	tunerwheels = {
		{name = "Stock", wtype = 5, mod = -1, price = 500},
		{name = "Cosmo", wtype = 5, mod = 0, price = 500},
		{name = "Supermesh", wtype = 5, mod = 1, price = 500},
		{name = "Outsider", wtype = 5, mod = 2, price = 500},
		{name = "Rollas", wtype = 5, mod = 3, price = 500},
		{name = "Driffmeister", wtype = 5, mod = 4, price = 500},
		{name = "Slicer", wtype = 5, mod = 5, price = 500},
		{name = "Elquatro", wtype = 5, mod = 6, price = 500},
		{name = "Dubbed", wtype = 5, mod = 7, price = 500},
		{name = "Fivestar", wtype = 5, mod = 8, price = 500},
		{name = "Slideways", wtype = 5, mod = 9, price = 500},
		{name = "Apex", wtype = 5, mod = 10, price = 500},
		{name = "Stancedeg", wtype = 5, mod = 11, price = 500},
		{name = "Countersteer", wtype = 5, mod = 12, price = 500},
		{name = "Endov1", wtype = 5, mod = 13, price = 500},
		{name = "Endov2dish", wtype = 5, mod = 14, price = 500},
		{name = "Guppez", wtype = 5, mod = 15, price = 500},
		{name = "Chokadori", wtype = 5, mod = 16, price = 500},
		{name = "Chicane", wtype = 5, mod = 17, price = 500},
		{name = "Saisoku", wtype = 5, mod = 18, price = 500},
		{name = "Dishedeight", wtype = 5, mod = 19, price = 500},
		{name = "Fujiwara", wtype = 5, mod = 20, price = 500},
		{name = "Zokusha", wtype = 5, mod = 21, price = 500},
		{name = "Battlevill", wtype = 5, mod = 22, price = 500},
		{name = "Rallymaster", wtype = 5, mod = 23, price = 500},
	},
-----Highend wheels------
	highendwheels = {
		{name = "Stock", wtype = 7, mod = -1, price = 500},
		{name = "Shadow", wtype = 7, mod = 0, price = 500},
		{name = "Hyper", wtype = 7, mod = 1, price = 500},
		{name = "Blade", wtype = 7, mod = 2, price = 500},
		{name = "Diamond", wtype = 7, mod = 3, price = 500},
		{name = "Supagee", wtype = 7, mod = 4, price = 500},
		{name = "Chromaticz", wtype = 7, mod = 5, price = 500},
		{name = "Merciechlip", wtype = 7, mod = 6, price = 500},
		{name = "Obeyrs", wtype = 7, mod = 7, price = 500},
		{name = "Gtchrome", wtype = 7, mod = 8, price = 500},
		{name = "Cheetahr", wtype = 7, mod = 9, price = 500},
		{name = "Solar", wtype = 7, mod = 10, price = 500},
		{name = "Splitten", wtype = 7, mod = 11, price = 500},
		{name = "Dashvip", wtype = 7, mod = 12, price = 500},
		{name = "Lozspeedten", wtype = 7, mod = 13, price = 500},
		{name = "Carboninferno", wtype = 7, mod = 14, price = 500},
		{name = "Carbonshadow", wtype = 7, mod = 15, price = 500},
		{name = "Carbonz", wtype = 7, mod = 16, price = 500},
		{name = "Carbonsolar", wtype = 7, mod = 17, price = 500},
		{name = "Carboncheetahr", wtype = 7, mod = 18, price = 500},
		{name = "Carbonsracer", wtype = 7, mod = 19, price = 500},
	},
-----Lowrider wheels------
	lowriderwheels = {
		{name = "Stock", wtype = 2, mod = -1, price = 500},
		{name = "Flare", wtype = 2, mod = 0, price = 500},
		{name = "Wired", wtype = 2, mod = 1, price = 500},
		{name = "Triplegolds", wtype = 2, mod = 2, price = 500},
		{name = "Bigworm", wtype = 2, mod = 3, price = 500},
		{name = "Sevenfives", wtype = 2, mod = 4, price = 500},
		{name = "Splitsix", wtype = 2, mod = 5, price = 500},
		{name = "Freshmesh", wtype = 2, mod = 6, price = 500},
		{name = "Leadsled", wtype = 2, mod = 7, price = 500},
		{name = "Turbine", wtype = 2, mod = 8, price = 500},
		{name = "Superfin", wtype = 2, mod = 9, price = 500},
		{name = "Classicrod", wtype = 2, mod = 10, price = 500},
		{name = "Dollar", wtype = 2, mod = 11, price = 500},
		{name = "Dukes", wtype = 2, mod = 12, price = 500},
		{name = "Lowfive", wtype = 2, mod = 13, price = 500},
		{name = "Gooch", wtype = 2, mod = 14, price = 500},
	},
-----Muscle wheels-----
	musclewheels = {
		{name = "Stock", wtype = 1, mod = -1, price = 500},
		{name = "Classicfive", wtype = 1, mod = 0, price = 500},
		{name = "Dukes", wtype = 1, mod = 1, price = 500},
		{name = "Musclefreak", wtype = 1, mod = 2, price = 500},
		{name = "Kracka", wtype = 1, mod = 3, price = 500},
		{name = "Azrea", wtype = 1, mod = 4, price = 500},
		{name = "Mecha", wtype = 1, mod = 5, price = 500},
		{name = "Blacktop", wtype = 1, mod = 6, price = 500},
		{name = "Dragspl", wtype = 1, mod = 7, price = 500},
		{name = "Revolver", wtype = 1, mod = 8, price = 500},
		{name = "Classicrod", wtype = 1, mod = 9, price = 500},
		{name = "Spooner", wtype = 1, mod = 10, price = 500},
		{name = "Fivestar", wtype = 1, mod = 11, price = 500},
		{name = "Oldschool", wtype = 1, mod = 12, price = 500},
		{name = "Eljefe", wtype = 1, mod = 13, price = 500},
		{name = "Dodman", wtype = 1, mod = 14, price = 500},
		{name = "Sixgun", wtype = 1, mod = 15, price = 500},
		{name = "Mercenary", wtype = 1, mod = 16, price = 500},
	},
	
---------Trim color--------
	trim = {
		colors = colors,
		price = 250
	},
	
----------Mods-----------
	mods = {
	
----------Liveries--------
	[48] = {
		startprice = 2000,
		increaseby = 1000
	},
	
----------Windows--------
	[46] = {
		startprice = 2000,
		increaseby = 1000
	},
	
----------Tank--------
	[45] = {
		startprice = 2000,
		increaseby = 1000
	},
	
----------Trim--------
	[44] = {
		startprice = 2000,
		increaseby = 1000
	},
	
----------Aerials--------
	[43] = {
		startprice = 2000,
		increaseby = 1000
	},

----------Arch cover--------
	[42] = {
		startprice = 2000,
		increaseby = 1000
	},

----------Struts--------
	[41] = {
		startprice = 2000,
		increaseby = 1000
	},
	
----------Air filter--------
	[40] = {
		startprice = 2000,
		increaseby = 1000
	},
	
----------Engine block--------
	[39] = {
		startprice = 2000,
		increaseby = 1000
	},

----------Hydraulics--------
	[38] = {
		startprice = 5000,
		increaseby = 2500
	},
	
----------Trunk--------
	[37] = {
		startprice = 5000,
		increaseby = 1250
	},

----------Speakers--------
	[36] = {
		startprice = 2000,
		increaseby = 1250
	},

----------Plaques--------
	[35] = {
		startprice = 2000,
		increaseby = 1250
	},
	
----------Shift leavers--------
	[34] = {
		startprice = 2000,
		increaseby = 1250
	},
	
----------Steeringwheel--------
	[33] = {
		startprice = 2000,
		increaseby = 1250
	},
	
----------Seats--------
	[32] = {
		startprice = 2000,
		increaseby = 1250
	},
	
----------Door speaker--------
	[31] = {
		startprice = 2000,
		increaseby = 1250
	},

----------Dial--------
	[30] = {
		startprice = 2000,
		increaseby = 1250
	},
----------Dashboard--------
	[29] = {
		startprice = 2000,
		increaseby = 1250
	},
	
----------Ornaments--------
	[28] = {
		startprice = 2000,
		increaseby = 1250
	},
	
----------Trim--------
	[27] = {
		startprice = 2000,
		increaseby = 1250
	},
	
----------Vanity plates--------
	[26] = {
		startprice = 2000,
		increaseby = 1250
	},
	
----------Plate holder--------
	[25] = {
		startprice = 2000,
		increaseby = 1250
	},
	
---------Headlights---------
	[22] = {
		{name = "Stock Lights", mod = 0, price = 0},
		{name = "Xenon Lights", mod = 1, price = 250},
	},
	
----------Turbo---------
	[18] = {
		{ name = "None", mod = 0, price = 0},
		{ name = "Turbo Tuning", mod = 1, price = 10000},
	},
	
-----------Armor-------------
	-- [16] = {
	-- 	{name = "Armor Upgrade 20%",modtype = 16, mod = 0, price = 10000},
	-- 	{name = "Armor Upgrade 40%",modtype = 16, mod = 1, price = 250000},
	-- 	{name = "Armor Upgrade 60%",modtype = 16, mod = 2, price = 500000},
	-- 	{name = "Armor Upgrade 80%",modtype = 16, mod = 3, price = 750000},
	-- 	{name = "Armor Upgrade 100%",modtype = 16, mod = 4, price = 1000000},
	-- },

---------Suspension-----------
	[15] = {
		{name = "Lowered Suspension",mod = 0, price = 500},
		{name = "Street Suspension",mod = 1, price = 1000},
		{name = "Sport Suspension",mod = 2, price = 2000},
		{name = "Competition Suspension",mod = 3, price = 3000},
	},

-----------Horn----------
	[14] = {
		{name = "Teherautó Duda", mod = 0, price = 500},
		{name = "Rendőr Duda", mod = 1, price = 500},
		{name = "Bohóc Duda", mod = 2, price = 500},
		{name = "Zenés Duda 1", mod = 3, price = 500},
		{name = "Zenés Duda 2", mod = 4, price = 500},
		{name = "Zenés Duda 3", mod = 5, price = 500},
		{name = "Zenés Duda 4", mod = 6, price = 500},
		{name = "Zenés Duda 5", mod = 7, price = 500},
		{name = "Sadtrombone Horn", mod = 8, price = 500},
		{name = "Klasszikus Duda 1", mod = 9, price = 500},
		{name = "Klasszikus Duda 2", mod = 10, price = 500},
		{name = "Klasszikus Duda 3", mod = 11, price = 500},
		{name = "Klasszikus Duda 4", mod = 12, price = 500},
		{name = "Klasszikus Duda 5", mod = 13, price = 500},
		{name = "Klasszikus Duda 6", mod = 14, price = 500},
		{name = "Klasszikus Duda 7", mod = 15, price = 500},
		{name = "Scaledo Horn", mod = 16, price = 500},
		{name = "Scalere Horn", mod = 17, price = 500},
		{name = "Scalemi Horn", mod = 18, price = 500},
		{name = "Scalefa Horn", mod = 19, price = 500},
		{name = "Scalesol Horn", mod = 20, price = 500},
		{name = "Scalela Horn", mod = 21, price = 500},
		{name = "Scaleti Horn", mod = 22, price = 500},
		{name = "Scaledo Horn High", mod = 23, price = 500},
		{name = "Jazz Horn 1", mod = 25, price = 500},
		{name = "Jazz Horn 2", mod = 26, price = 500},
		{name = "Jazz Horn 3", mod = 27, price = 500},
		{name = "Jazzloop Horn", mod = 28, price = 500},
		{name = "Starspangban Horn 1", mod = 29, price = 500},
		{name = "Starspangban Horn 2", mod = 30, price = 500},
		{name = "Starspangban Horn 3", mod = 31, price = 500},
		{name = "Starspangban Horn 4", mod = 32, price = 500},
		{name = "Classicalloop Horn 1", mod = 33, price = 500},
		{name = "Classicalloop Horn 2", mod = 34, price = 500},
		{name = "Classicalloop Horn 3", mod = 35, price = 500},
	},

----------Transmission---------
	[13] = {
		{name = "Utcai Átvitel", mod = 0, price = 5000},
		{name = "Sport Sebességváltó", mod = 1, price = 10000},
		{name = "Versenyátvitel", mod = 2, price = 15000},
	},
	
-----------Brakes-------------
	[12] = {
		{name = "Utcai Fék", mod = 0, price = 5000},
		{name = "Sport Fék", mod = 1, price = 10000},
		{name = "Verseny Fék", mod = 2, price = 15000},
	},
	
------------Engine----------
	[11] = {
		{name = "EMS Upgrade, Level 2", mod = 0, price = 15000},
		{name = "EMS Upgrade, Level 3", mod = 1, price = 30000},
		{name = "EMS Upgrade, Level 4", mod = 2, price = 45000},
	},
	
-------------Roof----------
	[10] = {
		startprice = 500,
		increaseby = 500
	},
	
------------Fenders---------
	[8] = {
		startprice = 500,
		increaseby = 500
	},
	
------------Hood----------
	[7] = {
		startprice = 500,
		increaseby = 500
	},
	
----------Grille----------
	[6] = {
		startprice = 500,
		increaseby = 500
	},
	
----------Roll cage----------
	[5] = {
		startprice = 500,
		increaseby = 500
	},
	
----------Exhaust----------
	[4] = {
		startprice = 500,
		increaseby = 500
	},
	
----------Skirts----------
	[3] = {
		startprice = 500,
		increaseby = 500
	},
	
-----------Rear bumpers----------
	[2] = {
		startprice = 500,
		increaseby = 500
	},
	
----------Front bumpers----------
	[1] = {
		startprice = 500,
		increaseby = 500
	},
	
----------Spoiler----------
	[0] = {
		startprice = 500,
		increaseby = 500
	},
	}
	
}

------Model Blacklist--------
--Does'nt allow specific vehicles to be upgraded
LSC_Config.ModelBlacklist = {
	"police",
}

--Sets if garage will be locked if someone is inside it already
LSC_Config.lock = false

--Enable/disable old entering way
LSC_Config.oldenter = false

--Menu settings
LSC_Config.menu = {

-------Controls--------
	controls = {
		menu_up = 27,
		menu_down = 173,
		menu_left = 174,
		menu_right = 175,
		menu_select = 201,
		menu_back = 177
	},

	
-------Menu position-----
	--Possible positions:
	--Left
	--Right
	--Custom position, example: position = {x = 0.2, y = 0.2}
	position = "left",

-------Menu theme--------
	--Possible themes: light, darkred, bluish, greenish
	--Custom example:
	--[[theme = {
		text_color = { r = 255,g = 255, b = 255, a = 255},
		bg_color = { r = 0,g = 0, b = 0, a = 155},
		--Colors when button is selected
		stext_color = { r = 0,g = 0, b = 0, a = 255},
		sbg_color = { r = 255,g = 255, b = 0, a = 200},
	},]]
	theme = "light",
	
--------Max buttons------
	--Default: 10
	maxbuttons = 10,

-------Size---------
	--[[
	Default:
	width = 0.24
	height = 0.36
	]]
	width = 0.24,
	height = 0.36

}


-- Citizen.CreateThread(function()
-- 	while true do
--       if ( LSC_Config.menu ) then
--             local veh = GetVehiclePedIsIn( -1, false )	
--             DisableControlAction( 0, 80, true ) -- Cinematic View	
--         end  
--         Citizen.Wait(0)
--     end
-- end)
