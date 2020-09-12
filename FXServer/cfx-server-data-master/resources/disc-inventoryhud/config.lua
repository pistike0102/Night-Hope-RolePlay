Config = {}

Config.OpenControl = 289
Config.TrunkOpenControl = 47
Config.DeleteDropsOnStart = false

Config.Shops = {
    ['My Shop Of Awesome Things'] = {
        coords = {
            vector3(-1223.52, -907.38, 12.33),
            vector3(-707.67, -914.66, 19.22),
			vector3(1163.18, -323.29, 69.21),
			vector3(127.82, -1285.08, 29.28),
			vector3(-48.06, -1757.16, 29.42),
			vector3(-2968.11, 391.28, 15.04),
			vector3(1166.05, 2708.95, 38.16),
			vector3(1698.4, 4924.5, 42.06),
			vector3(1729.21, 6414.13, 35.03),
			vector3(-93.4, 6410.36, 31.64),
        },
        items = {
            { name = "bread", price = 1, count = 6 },
            { name = "water", price = 1, count = 6 },
			{ name = "beer", price = 4, count = 1 },
			{ name = "cupcake", price = 1, count = 1 },
			{ name = "bolcacahuetes", price = 1, count = 1 },
			{ name = "bolchips", price = 1, count = 1 },
			{ name = "bolnoixcajou", price = 1, count = 1 },
			{ name = "bolpistache", price = 1, count = 1 },
			{ name = "drpepper", price = 1, count = 1 },
			{ name = "energy", price = 1, count = 1 },
			{ name = "limonade", price = 1, count = 1 },
			{ name = "coffee", price = 1, count = 1 },
			{ name = "WEAPON_PETROLCAN", price = 1, count = 1 },
        },
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        blipColour = 2,
        blipSprite = 52,
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = true,
        job = 'all'
    },
    ['Police LSPD'] = {
        coords = {
            vector3(481.03, -989.61, 24.91),
        },
        items = {
            { name = "bread", price = 1, count = 5 },
            { name = "water", price = 1, count = 5 },
			{ name = "WEAPON_HEAVYPISTOL", price = 100, count = 1 },
			{ name = "WEAPON_STUNGUN", price = 100, count = 1 },
			{ name = "WEAPON_SMG", price = 500, count = 1 },
			{ name = "WEAPON_CARBINERIFLE", price = 1100, count = 1 },
			{ name = "WEAPON_SPECIALCARBINE", price = 1100, count = 1 },
			{ name = "WEAPON_PUMPSHOTGUN", price = 250, count = 1 },
			{ name = "WEAPON_ADVANCEDRIFLE", price = 1100, count = 1 },
			{ name = "WEAPON_FLASHLIGHT", price = 100, count = 1 },
			{ name = "WEAPON_BZGAS", price = 100, count = 1 },
			{ name = "WEAPON_NIGHTSTICK", price = 100, count = 1 },
			{ name = "WEAPON_FLAREGUN", price = 100, count = 1 },
			{ name = "bulletproof", price = 100, count = 1 },
			{ name = "clip", price = 100, count = 1 },
        },
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        blipColour = 2,
        blipSprite = 52,
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = true,
        job = 'police'
    },
    ['EMS'] = {
        coords = {
            vector3(335.24, -585.22, 28.79),
        },
        items = {
            { name = "bread", price = 100, count = 6 },
            { name = "water", price = 100, count = 6 },
			{ name = "oxygen_mask", price = 20, count = 1 },

        },
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        blipColour = 2,
        blipSprite = 52,
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = true,
        job = 'ambulance'
    },
    ['Tienda de armas'] = {
        coords = {
            vector3(21.97, -1107.14, 29.8),
        },
        items = {
            { name = "WEAPON_SNSPISTOL", price = 1200, count = 1 },
			{ name = "clip", price = 120, count = 1 },
			{ name = "WEAPON_KNIFE", price = 300, count = 1 },
			{ name = "WEAPON_BAT", price = 150, count = 1 },

        },
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        blipColour = 1,
        blipSprite = 110,
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = true,
        job = 'all'
    },
    ['Tienda Ilegal'] = {
        coords = {
            vector3(-2167.79, 5204.24, 16.91),
        },
        items = {
            { name = "WEAPON_SNSPISTOL", price = 600, count = 1 },
			{ name = "WEAPON_PISTOL50", price = 2500, count = 1 },
			{ name = "WEAPON_PUMPSHOTGUN", price = 3500, count = 1 },
			{ name = "clip", price = 250, count = 1 },
			{ name = "bulletproof", price = 6000, count = 1 },
			{ name = "WEAPON_ASSAULTRIFLE", price = 7500, count = 1 },
			{ name = "WEAPON_MICROSMG", price = 3200, count = 1 },

        },
        markerType = -1,
        markerColour = { r = 255, g = 255, b = 255 },
        blipColour = 1,
        blipSprite = 1,
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = false,
        job = 'all'
    },
    ['Tienda Ilegal'] = {
        coords = {
            vector3(2571.75, 299.24, 108.73),
        },
        items = {
            { name = "WEAPON_SNSPISTOL", price = 600, count = 1 },
			{ name = "WEAPON_PISTOL50", price = 2500, count = 1 },
			{ name = "clip", price = 250, count = 1 },

        },
        markerType = -1,
        markerColour = { r = 255, g = 255, b = 255 },
        blipColour = 1,
        blipSprite = 1,
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = false,
        job = 'all'
    }
}

Config.Stash = {
    ['Police'] = {
        coords = vector3(477.59, -989.35, 24.91),
        size = vector3(1.0, 1.0, 1.0),
        job = 'police',
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Open Stash ~INPUT_CONTEXT~'
    }
}

Config.Steal = {
    black_money = true,
    cash = true
}

Config.Seize = {
    black_money = true,
    cash = true
}

--Courtesy DoctorTwitch
Config.VehicleSlot = {
    [0] = 10, --Compact
    [1] = 15, --Sedan
    [2] = 20, --SUV
    [3] = 15, --Coupes
    [4] = 5, --Muscle
    [5] = 5, --Sports Classics
    [6] = 5, --Sports
    [7] = 0, --Super
    [8] = 5, --Motorcycles
    [9] = 10, --Off-road
    [10] = 20, --Industrial
    [11] = 20, --Utility
    [12] = 30, --Vans
    [13] = 0, --Cycles
    [14] = 0, --Boats
    [15] = 0, --Helicopters
    [16] = 0, --Planes
    [17] = 20, --Service
    [18] = 20, --Emergency
    [19] = 90, --Military
    [20] = 0, --Commercial
    [21] = 0 --Trains
}