// https://github.com/KillahPotatoes/KP-Liberation

/* BLUFOR preset:
0 = Custom */
KP_liberation_preset_blufor = 0;

/* OPFOR preset
0 = Custom */
KP_liberation_preset_opfor = 0;

/* Resistance preset
0 = Custom */
KP_liberation_preset_resistance = 0;

/* Civilians preset
0 = Custom */
KP_liberation_preset_civilians = 0;

/* Arsenal preset
0 = Custom */
KP_liberation_arsenal = 0;

// Idle fuel consumption (min)
KP_liberation_fuel_neutral = 180;

// Normal speed (w) fuel consumption (min)
KP_liberation_fuel_normal = 90;

// Max speed (shift+w) fuel consumption (min)
KP_liberation_fuel_max = 45;

// Name of the savegame namespace inside of the [ServerProfileName].vars.Arma3Profile file
GRLIB_save_key = "KP_LIBERATION_" + (toUpper worldName) + "_SAVEGAME";

// Used to simulate a different role for quickly testing the role arsenal
// Note this changes the role of EVERY player on the server so should be cleared when done.
DEBUG_ARSENAL_ROLE_OVERRIDE = "";

// Used for development to simulate a different player count for e.g. battlespace AI spawns
DEBUG_PLAYER_COUNT_OVERRIDE = -1;

// Also see GRLIB_battlegroup_cap for when Battlegroup units may spawn
// 10 default
BATTLESPACE_UNIT_CAP = 350;

// Depth and Length in actuality adds up to 2x the listed value
// Length / Depth should be a multiple of the Gap
BATTLESPACE_AT_MINE_LENGTH = 25;
BATTLESPACE_AT_MINE_DEPTH = 15;
BATTLESPACE_AT_MINE_GAP = 10;

BATTLESPACE_AP_MINE_LENGTH = 45;
BATTLESPACE_AP_MINE_DEPTH = 20;
BATTLESPACE_AP_MINE_GAP = 8;

// How far a given unit will proc (materialise) from active players
// For how units spawn around a point, see battlespace_ai\defenders\index.sqf
//
// Distance from the current average position of a cluster where a blufor player will be added to the cluster
BLUFOR_CLUSTER_DISTANCE = 250;
// NOTE: Make sure to update GRLIB_sector_size too, that's how far away the sector
// will activate at all to start spawning virtual groups (doesn't despawn until restart)
BATTLESPACE_UNIT_PROC_RANGE = 1100;
BATTLESPACE_MINEFIELD_PROC_RANGE = 1200;
BATTLESPACE_AA_PROC_RANGE = 2500;
BATTLESPACE_AIR_PROC_RANGE = 2500; // How far e.g. CAS defenders will spawn

// How many units should be in each OPFOR squad
BATTLESPACE_SQUAD_SIZE = 7;

KP_liberation_save_interval = 60;            			// Save interval (sec)

GRLIB_side_friendly = west;                  			// Friendly side
GRLIB_side_enemy = east;                     			// Enemy side
GRLIB_side_resistance = independent;          			// Guerilla side
GRLIB_side_civilian = civilian;              			// Civilian side
GRLIB_respawn_marker = "respawn";            			// Respawn marker name

GRLIB_color_friendly = "ColorINDEPENDENT";        			// Friendly sector color
GRLIB_color_enemy = "ColorBLUFOR";            			// Enemy sector color
GRLIB_color_enemy_bright = "ColorBLUFOR";       			// Enemy active sector color

GRLIB_fob_range = 300;                       			// FOB building range
GRLIB_halo_altitude = 0;                     			// HALO jump altitude
GRLIB_secondary_missions_costs = [40,15,5];				// Side mission intel cost [FOB hunt, Convoy ambush, SAR]
GRLIB_secondary_objective_impact = 0.6;      			// FOB hunt awareness hit
GRLIB_recycling_percentage = 0.6;            			// Recycling return
KP_liberation_production_interval = 60;      			// Resource production time (min), when resources multiplier set to 1
KP_liberation_allow_fob_vehcile_building = true;		// Allow building vehicles at FOBs
KP_liberation_allow_fixedwing_at_fobs = true;			// Allow fixed wing aircraft to be built at FOBs (Only applicable if KP_liberation_allow_fob_vehcile_building is false)

GRLIB_sector_size = 1200;                    			// Sector activation range
GRLIB_capture_size = 225;                    			// Sector cap circle size
GRLIB_defended_buildingpos_part = 0.7;       			// Multiplier for defenders in buildings
GRLIB_battlegroup_size = 4;                  			// Battlegroup size
GRLIB_battlegroup_Interval = 3800;
GRLIB_battlegroup_Show_Spawn_Location = false;
GRLIB_vulnerability_timer = 840;             			// OPFOR sector cap timer (sec)
GRLIB_radiotower_size = 1200;                			// Radio tower range
GRLIB_surrender_chance = 80;                 			// Surrender after heavy losses chance

GRLIB_civilians_amount = 1;                 			// Civilian count multiplier
GRLIB_cleanup_delay = 250;                   			// Corpse cleanup time (sec)

GRLIB_blufor_cap = 171;                      			// Cap for BLUFOR
GRLIB_sector_cap = 480;     			// Cap for sector defenders
GRLIB_battlegroup_cap = 350;			// Cap for enemy battlegroups (total Opfor must be under this to check for BG spawns, gets scaled) 3.4 120
GRLIB_patrol_cap = 0;  // Cap for enemy patrols

KP_liberation_cr_kill_penalty = 25;          			// Civrep civilian kill penalty
KP_liberation_cr_building_penalty = 15;      			// Civrep destroy/damage penatly
KP_liberation_cr_vehicle_penalty = 7;        			// Civrep stolen vehicle penalty
KP_liberation_cr_resistance_penalty = 15;    			// Civrep friendly guerilla kill penalty
KP_liberation_cr_sector_gain = 5;           			// Civrep sector capture gain
KP_liberation_cr_wounded_chance = 15;        			// Wounded civ chance
KP_liberation_cr_wounded_gain = 3;           			// Wounded civ healed civrep gain

KP_liberation_civinfo_min = 2200;            			// Civ informant min spawn time (sec)
KP_liberation_civinfo_max = 3500;           			// Civ informant max spawn time (sec)
KP_liberation_civinfo_chance = 80;           			// Civ informant spawn chance
KP_liberation_civinfo_intel = 20;             			// Civ informant intel amount
KP_liberation_civinfo_duration = 1200;       			// Civ informant despawn timer (sec)
KP_liberation_civinfo_task_chance = 100;     			// Chance that informant will spawn a time critical task
KP_liberation_civinfo_task_duration = 900;   			// Duration until the task will despawn if no player is near (sec)

KP_liberation_convoy_ambush_chance = 0;      			// AI logistics (unused)
KP_liberation_convoy_ambush_duration = 0; 				// AI logistics (unused)

KP_liberation_resistance_tier2 = 30;         			// Guerilla strength at tier 2
KP_liberation_resistance_tier3 = 70;         			// Guerilla strength at tier 3
KP_liberation_resistance_at_chance = 50;     			// RPG chance (tier 2 and 3)
KP_liberation_resistance_sector_chance = 75; 			// Guerilla chance to join ongoing attack
KP_liberation_resistance_ambush_chance = 80; 			// Guerilla spawn in BLUFOR sectors at low civrep

KP_liberation_sector_resource_chance = 50;   			// BLUFOR sector random resources chance on capping civvie sector

// Remove terrain objects around battlegroup spawns
KP_liberation_battlegroup_clearance = [];

// Commandant actions access regardless of slot
// NOTE: Remember to update enableDebugConsole in description.ext!!
KP_liberation_commander_actions = [
    "76561198147102089",        // Randazzo
    "76561198033311336",        // Henderson
    "76561198119623807",         // McGuire
    "76561198146909358",         // Zalewska
    "76561198121122486"         // Lengfelder
];

KP_liberation_medical_vehicles = [
    "SPE_US_G503_MB_Ambulance",
    "SPE_CCKW_353_Ambulance",
    "SPE_US_M3_Halftrack_Ambulance"
];

KP_liberation_medical_facilities = [

	"Land_SPE_Tent_03"
];

KP_liberation_ace_crates = [];

// Whitelist for BI support framework access
KP_liberation_suppMod_whitelist = [
    "76561198009578451",
    "76561198066834077"
];

// Randomly selected radio tower classnames
KPLIB_radioTowerClassnames = [
	"LIB_Static_OpelBlitz_Radio"
];

// Obsolete arsenal blacklist
blacklisted_from_arsenal = [];

// Obsolete arsenal whitelist
KP_liberation_allowed_items_extension = [];

/* Vehicle resource loading config
	[
		"vehicle",
		distance behind vehicle to unload crate,
		[+right/-left, +forward/-back, +up/-down]
	]
*/
	
KPLIB_transportConfigs = [
    ["SPE_US_M3_Halftrack_Unarmed_Open", -5, [0,-0.5,0.1], [0,-2.2,0.1]],
    ["SPE_US_M3_Halftrack_Unarmed", -5, [0,-0.5,0.1], [0,-2.2,0.1]],
    ["SPE_US_M3_Halftrack", -5, [0,-2.2,0.1]],
    ["SPE_CCKW_353_Open", -5, [0,-0.3,0.1], [0,-2.0,0.1]],
    ["SPE_CCKW_353", -5, [0,-0.3,0.1], [0,-2.0,0.1]],
    ["SPE_CCKW_353_M2", -5, [0,-0.3,0.1], [0,-2.0,0.1]],
    ["SPE_OpelBlitz_Open", -5, [0,-0.3,0.1], [0,-2.0,0.1]],
    ["SPE_OpelBlitz", -5, [0,-0.3,0.1], [0,-2.0,0.1]]
];

KPLIB_aiResupplySources = [];
vehicle_repair_sources = [];
vehicle_rearm_sources = [];
vehicle_refuel_sources = [];

// Boat classnames, enables building on water
boats_names = [
];

KP_liberation_suppMod_artyVeh = [];

// Intel objects
KPLIB_intelObjectClasses = [
    "Land_File1_F",
    "Land_Document_01_F"
];

// Buildings that can spawn intel
KPLIB_intelBuildingClasses = [
	//
    "Land_SPE_Abbaye_Church",
    "Land_SPE_Abbaye_Crypt",
    "Land_SPE_Abbaye_Library",
    "Land_SPE_Abbaye_R_Tower",
    "Land_SPE_Chapel_01",
    "Land_SPE_Church_Evroult_ShortTower",
    "Land_SPE_Church_Evroult_TallTower",
    "Land_SPE_Church_Evroult_Wings",
    "Land_SPE_Church_Evroult_Hall",
    "Land_SPE_Chateau_01",
    "Land_SPE_Corner_house_01",
    "Land_SPE_Corner_house_01b",
    "Land_SPE_Corner_house_01c",
    "Land_SPE_Corner_house_02",
    "Land_SPE_Corner_house_03",
    "Land_SPE_Corner_house_04",
    "Land_SPE_Corner_house_05",
    "Land_SPE_Corner_house_06",
    "Land_SPE_House_Small_01",
    "Land_SPE_Townhouse_03",
    "Land_SPE_Townhouse_02",
    "Land_SPE_Townhouse_01",
    "Land_SPE_Mine_Office",
    "Land_SPE_TrainStation",
    "Land_Cargo_Patrol_V1_F","Land_Cargo_Patrol_V2_F","Land_Cargo_Patrol_V3_F","Land_Cargo_Patrol_V4_F","LAND_Utah_Beach_Trench_Long_Dirt","LAND_Utah_Beach_Trench_Corner_60_Dirt","LAND_Utah_Beach_Trench_Corner_Dirt","LAND_Utah_Beach_Trench_End_Dirt","LAND_Utah_Beach_Trench_Entrance_Dirt","LAND_Utah_Beach_Trench_Short_Dirt","LAND_Utah_Beach_Trench_T_Dirt", "LAND_Utah_Beach_Trench_T","LAND_Utah_Beach_Trench_Short","LAND_Utah_Beach_Trench_Entrance","LAND_Utah_Beach_Trench_End","LAND_Utah_Beach_Trench_Corner","LAND_Utah_Beach_Trench_Corner_60","LAND_Utah_Beach_Trench_Long","Land_SPE_58C","Land_SPE_H134","Land_SPE_H607","Land_SPE_H612","Land_SPE_H622","Land_SPE_H630","Land_SPE_H667","Land_SPE_H669","Land_SPE_H679"
];

// Large storage area crate config
KP_liberation_large_storage_positions = [
    [-5.59961,3.60938,0.6],
    [-3.99902,3.60938,0.6],
    [-2.39941,3.60938,0.6],
    [-0.799805,3.60938,0.6],
    [0.800781,3.60938,0.6],
    [2.40039,3.60938,0.6],
    [4.00098,3.60938,0.6],
    [5.60059,3.60938,0.6],
    [-5.59961,1.80859,0.6],
    [-3.99902,1.80859,0.6],
    [-2.39941,1.80859,0.6],
    [-0.799805,1.80859,0.6],
    [0.800781,1.80859,0.6],
    [2.40039,1.80859,0.6],
    [4.00098,1.80859,0.6],
    [5.60059,1.80859,0.6],
    [-5.59961,0.00976563,0.6],
    [-3.99902,0.00976563,0.6],
    [-2.39941,0.00976563,0.6],
    [-0.799805,0.00976563,0.6],
    [0.800781,0.00976563,0.6],
    [2.40039,0.00976563,0.6],
    [4.00098,0.00976563,0.6],
    [5.60059,0.00976563,0.6],
    [-5.59961,-1.79102,0.6],
    [-3.99902,-1.79102,0.6],
    [-2.39941,-1.79102,0.6],
    [-0.799805,-1.79102,0.6],
    [0.800781,-1.79102,0.6],
    [2.40039,-1.79102,0.6],
    [4.00098,-1.79102,0.6],
    [5.60059,-1.79102,0.6],
    [-5.59961,-3.58984,0.6],
    [-3.99902,-3.58984,0.6],
    [-2.39941,-3.58984,0.6],
    [-0.799805,-3.58984,0.6],
    [0.800781,-3.58984,0.6],
    [2.40039,-3.58984,0.6],
    [4.00098,-3.58984,0.6],
    [5.60059,-3.58984,0.6]
];	// 40 crates

// Small storage area crate config
KP_liberation_small_storage_positions = [
    [-2.34961,1.80078,0.6],
    [-0.75,1.80078,0.6],
    [0.850586,1.80078,0.6],
    [2.4502,1.80078,0.6],
    [-2.34961,0,0.6],
    [-0.75,0,0.6],
    [0.850586,0,0.6],
    [2.4502,0,0.6],
    [-2.34961,-1.79883,0.6],
    [-0.75,-1.79883,0.6],
    [0.850586,-1.79883,0.6],
    [2.4502,-1.79883,0.6]
];	// 12 crates

// DO NOT CHANGE (unless you know what you are doing)
GRLIB_endgame = 0;
// KP_liberation_production_interval = ceil (KP_liberation_production_interval / GRLIB_resources_multiplier);
GRLIB_battlegroup_size = GRLIB_battlegroup_size * (sqrt GRLIB_unitcap) * (sqrt GRLIB_csat_aggressivity);
GRLIB_civilians_amount = GRLIB_civilians_amount * GRLIB_civilian_activity;
GRLIB_blufor_cap = (GRLIB_blufor_cap * GRLIB_unitcap) min 100;
GRLIB_sector_cap = GRLIB_sector_cap * GRLIB_unitcap;
GRLIB_battlegroup_cap = GRLIB_battlegroup_cap * GRLIB_unitcap;
GRLIB_patrol_cap = GRLIB_patrol_cap * GRLIB_unitcap;
GRLIB_EvilDoers_trucks = [];//"vn_o_wheeled_z157_01_vcmf"
GRLIB_battlegroup_delay = 1200;
