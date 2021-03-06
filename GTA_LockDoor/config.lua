Config = {}

Config.DoorList = {

	--
	-- Mission Row First Floor
	--
	-- Entrance Doors
	{
		objName = 'v_ilev_ph_door01',
		objCoords  = {x = 434.747, y = -980.618, z = 30.839},
		textCoords = {x = 434.747, y = -981.50, z = 31.50},
		codeSecret = 5555,
		codeAdmin = 0102,
		doorLock = false,
		permission = false,
		distance = 5.0
	},

	{
		objName = 'v_ilev_ph_door002',
		objCoords  = {x = 434.747, y = -983.215, z = 30.839},
		textCoords = {x = 434.747, y = -982.50, z = 31.50},
		codeSecret = 5555,
		codeAdmin = 0102,
		doorLock = false,
		permission = false,
		distance = 5.0
	},

	-- To locker room & roof
	{
		objName = 'v_ilev_ph_gendoor004',
		objCoords  = {x = 449.698, y = -986.469, z = 30.689},
		textCoords = {x = 450.104, y = -986.388, z = 31.739},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.0
	},

	-- Rooftop
	{
		objName = 'v_ilev_gtdoor02',
		objCoords  = {x = 464.361, y = -984.678, z = 43.834},
		textCoords = {x = 464.361, y = -984.050, z = 44.834},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.0
	},

	-- Hallway to roof
	{
		objName = 'v_ilev_arm_secdoor',
		objCoords  = {x = 461.286, y = -985.320, z = 30.839},
		textCoords = {x = 461.50, y = -986.00, z = 31.50},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.0
	},

	-- Armory
	{
		objName = 'v_ilev_arm_secdoor',
		objCoords  = {x = 452.618, y = -982.702, z = 30.689},
		textCoords = {x = 453.079, y = -982.600, z = 31.739},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.0
	},

	-- Captain Office
	{
		objName = 'v_ilev_ph_gendoor002',
		objCoords  = {x = 447.238, y = -980.630, z = 30.689},
		textCoords = {x = 447.200, y = -980.010, z = 31.739},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.0
	},

	-- To downstairs (double doors)
	{
		objName = 'v_ilev_ph_gendoor005',
		objCoords  = {x = 443.97, y = -989.033, z = 30.6896},
		textCoords = {x = 444.020, y = -989.445, z = 31.739},
		codeSecret = 5555,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.0
	},

	{
		objName = 'v_ilev_ph_gendoor005',
		objCoords  = {x = 445.37, y = -988.705, z = 30.6896},
		textCoords = {x = 445.350, y = -989.445, z = 31.739},
		codeSecret = 5555,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.0
	},

	-- 
	-- Mission Row Cells
	--

	-- Main Cells
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 463.815, y = -992.686, z = 24.9149},
		textCoords = {x = 463.30, y = -992.686, z = 25.10},
		codeSecret = 5555,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 1.5
	},

	-- Cell 1
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.381, y = -993.651, z = 24.914},
		textCoords = {x = 461.806, y = -993.308, z = 25.064},
		codeSecret = 5555,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 1.5
	},

	-- Cell 2
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.331, y = -998.152, z = 24.914},
		textCoords = {x = 461.806, y = -998.800, z = 25.064},
		codeSecret = 5555,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 1.5
	},

	-- Cell 3
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.704, y = -1001.92, z = 24.9149},
		textCoords = {x = 461.806, y = -1002.450, z = 25.064},
		codeSecret = 5555,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 1.5
	},

	-- To Back
	{
		objName = 'v_ilev_gtdoor',
		objCoords  = {x = 463.478, y = -1003.538, z = 25.005},
		textCoords = {x = 464.00, y = -1003.50, z = 25.50},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 3.0
	},

	--
	-- Mission Row Back
	--

	-- Back (double doors)
	{
		objName = 'v_ilev_rc_door2',
		objCoords  = {x = 467.371, y = -1014.452, z = 26.536},
		textCoords = {x = 468.09, y = -1014.452, z = 27.1362},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.5
	},

	{
		objName = 'v_ilev_rc_door2',
		objCoords  = {x = 469.967, y = -1014.452, z = 26.536},
		textCoords = {x = 469.35, y = -1014.452, z = 27.136},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.5
	},

	-- Back Gate
	{
		objName = 'hei_prop_station_gate',
		objCoords  = {x = 488.894, y = -1017.210, z = 27.146},
		textCoords = {x = 488.894, y = -1020.210, z = 30.00},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.5
	},

	--
	-- Sandy Shores
	--

	-- Entrance
	{
		objName = 'v_ilev_shrfdoor',
		objCoords  = {x = 1855.105, y = 3683.516, z = 34.266},
		textCoords = {x = 1855.105, y = 3683.516, z = 35.00},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = false,
		permission = false,
		distance = 5.5
	},

	--
	-- Paleto Bay
	--

	-- Entrance (double doors)
	{
		objName = 'v_ilev_shrf2door',
		objCoords  = {x = -443.14, y = 6015.685, z = 31.716},
		textCoords = {x = -443.14, y = 6015.685, z = 32.00},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = false,
		permission = false,
		distance = 5.0
	},

	{
		objName = 'v_ilev_shrf2door',
		objCoords  = {x = -443.951, y = 6016.622, z = 31.716},
		textCoords = {x = -443.951, y = 6016.622, z = 32.00},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = false,
		permission = false,
		distance = 5.0
	},

	--
	-- Bolingbroke Penitentiary
	--

	-- Entrance (Two big gates)
	{
		objName = 'prop_gate_prison_01',
		objCoords  = {x = 1844.998, y = 2604.810, z = 44.638},
		textCoords = {x = 1844.998, y = 2608.50, z = 48.00},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.0
	},

	{
		objName = 'prop_gate_prison_01',
		objCoords  = {x = 1818.542, y = 2604.812, z = 44.611},
		textCoords = {x = 1818.542, y = 2608.40, z = 48.00},
		codeSecret = 1234,
		codeAdmin = 0102,
		doorLock = true,
		permission = false,
		distance = 5.0
	},

	{
		objName = 'v_ilev_bl_shutter2',----laboHuman1
        objCoords  = {x = 3627.89, y = 3747.06, z = 28.69},
        textCoords = {x = 3627.89, y = 3747.06, z = 28.69},
		codeSecret = 123456,
		codeAdmin = 0102,
        doorLock = true,
        permission = false,
        distance = 5.5
    },

    {
        objName = 'v_ilev_bl_shutter2',----laboHuman2
        objCoords  = {x = 3621.08, y = 3751.06, z = 28.69},
        textCoords = {x = 3621.08, y = 3751.06, z = 28.69},
		codeSecret = 123456,
		codeAdmin = 0102,
        doorLock = true,
        permission = false,
		distance = 5.5
	}
}