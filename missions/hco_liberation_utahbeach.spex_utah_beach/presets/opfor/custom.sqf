// If changing opfor factions change these:
// presets\init_presets.sqf

// Enemy infantry classes
opfor_officer = "SPE_OST_lieutenant";                          // Officer 
opfor_squad_leader = "SPE_OST_SquadLead";                     // Sergeant 
opfor_team_leader = "SPE_OST_Assist_SquadLead";                    		// Junior Sergeant 
opfor_sentry = "SPE_OST_rifleman";                            // Efreitor 
opfor_rifleman = "SPE_OST_rifleman_2";                            // Rifleman 
opfor_rpg = "SPE_OST_LAT_Klein_Rifleman";                                // Rifleman w/ RPG-26 
opfor_grenadier = "SPE_OST_ober_grenadier";                            	// Grenadier w/ GP-25 
opfor_machinegunner = "SPE_OST_mgunner";				// Autorifleman (PKP)
opfor_heavygunner = "SPE_OST_mgunner2";                 // Machinegunner 
opfor_marksman = "SPE_GER_scout_sniper";                              	// Marksman 
opfor_sharpshooter = "SPE_GER_scout_sniper";                           // Sharpshooter 
opfor_sniper = "SPE_GER_scout_sniper";                                	// Sniper 
opfor_at = "SPE_OST_LAT_Rifleman";                                // AT Specialist 
opfor_aat = "SPE_OST_AT_grenadier";                                // AT Specialist 
opfor_aa = "SPE_OST_HMG_AmmoBearer";                               	// AA Specialist 
opfor_medic = "SPE_OST_Medic";                                    	// Medic 
opfor_engineer = "SPE_OST_sapper_gefr";                              // Engineer 
opfor_paratrooper = "SPE_FSJ_Soldier";						// Rifleman w/ RShG2 
opfor_rto = "SPE_OST_radioman";									// Officer (Armored) EMR
opfor_howitzer = "SPE_leFH18";
opfor_aaa = "SPE_FlaK_36_AA";
opfor_pilot = "SPE_GER_pilot";  


//Fallschirm
opfor_para_squad_leader = "SPE_FSJ_AT_Soldier_SquadLead";                     // Sergeant 
opfor_para_team_leader = "SPE_FSJ_Assist_SquadLead";                    		// Junior Sergeant 
opfor_para_rifleman = "SPE_FSJ_Soldier";                            // Rifleman 
opfor_para_rpg = "SPE_FSJ_LAT_Soldier";                                // Rifleman w/ RPG-26 
opfor_para_grenadier = "SPE_FSJ_grenadier";                            	// Grenadier w/ GP-25 
opfor_para_machinegunner = "SPE_FSJ_Mgunner2";				// Autorifleman (PKP)
opfor_para_heavygunner = "SPE_FSJ_Mgunner";                 // Machinegunner 
opfor_para_marksman = "SPE_FSJ_Sniper";                              	// Marksman 
opfor_para_at = "SPE_FSJ_AT_soldier";                                // AT Specialist 
opfor_para_medic = "SPE_FSJ_medic";                                    	// Medic 
opfor_para_rto = "SPE_FSJ_radioman";									// Officer (Armored) EMR

// From exported arsenal
opfor_rto_loadout = [[["SPE_K98","","","",["SPE_5Rnd_792x57",5],[],""],[],[],["U_SPE_GER_Soldier_camo",[["SPE_GER_FirstAidKit",1],["SPE_ACC_K98_Bayo",1],["SPE_5Rnd_792x57",10,5]]],["V_SPE_GER_VestKar98",[["SPE_5Rnd_792x57",1,5],["SPE_Shg24",2,1]]],["B_SPE_GER_Radio",[["ACRE_PRC77",1]]],"H_SPE_GER_Cap","",[],["ItemMap","","ItemRadio","SPE_GER_ItemCompass_deg","SPE_GER_ItemWatch",""]],[]];

// Enemy vehicles used by secondary objectives.
opfor_mrap = "23pzd_SdKfz251";                                 // GAZ-233011
opfor_mrap_armed = "23pzd_SdKfz251_17";                    // GAZ-233014 (Armed)
opfor_transport_helo = "LIB_Ju87";                    // Mi-8MT (Cargo)
opfor_transport_truck = "SPE_OpelBlitz_Open";                // KamAZ-5350 (Covered)
opfor_ammobox_transport = "SPE_OpelBlitz_Open";                   // KamAZ-5350 Flatbed
opfor_fuel_truck = "SPE_OpelBlitz_Fuel";                             // TZ-8-255B1 (Fuel)
opfor_ammo_truck = "SPE_OpelBlitz_Ammo";                             // KamAZ-5350 (Ammo)
opfor_fuel_container = "Land_SPE_Fuel_Barrel_German";             			// HURON Fuel
opfor_ammo_container = "Land_SPE_Ammobox_German_02_stack";             			// HURON Ammo
opfor_flag = "SPE_FlagCarrier_GER";                                       // RU Flag

// To force add uniform
opfor_uniforms = [
	"U_SPE_GER_Soldier_camo4"
];
// Kit to put in uniform if replacing due to invalid ID
opfor_uniform_kit = [
	["ACE_packingBandage",10],
	["ACE_tourniquet",4],
	["ACE_morphine",1]
];
// Force add a backpack
opfor_backpacks = [
	"B_SPE_GER_Belt_bag"
];
// Force add a vest
opfor_vests = [
	"V_SPE_GER_VestKar98"
];


// TODO: Add actual loadout stuff to force init to?

// Sector defender infantry pool
militia_squad = [
	"SPE_OST_lieutenant",                          // Officer 
	"SPE_OST_SquadLead",                     // Sergeant 
	"SPE_OST_Assist_SquadLead",                    		// Junior Sergeant 
	"SPE_OST_rifleman",                            // Efreitor 
	"SPE_OST_rifleman_2",                            // Rifleman 
	"SPE_OST_LAT_Klein_Rifleman",                                // Rifleman w/ RPG-26 
	"SPE_OST_ober_grenadier",                            	// Grenadier w/ GP-25 
	"SPE_OST_mgunner",				// Autorifleman (PKP)
	"SPE_OST_mgunner2",                 // Machinegunner 
	"SPE_GER_scout_sniper",                              	// Marksman 
	"SPE_GER_scout_sniper",                           // Sharpshooter 
	"SPE_GER_scout_sniper",                                	// Sniper 
	"SPE_OST_LAT_Rifleman",                                // AT Specialist 
	"SPE_OST_AT_grenadier",                                // AT Specialist 
	"SPE_OST_HMG_AmmoBearer",                               	// AA Specialist 
	"SPE_OST_Medic",                                    	// Medic 
	"SPE_OST_sapper_gefr",                              // Engineer 
	"SPE_FSJ_Soldier",						// Rifleman w/ RShG2 
	"SPE_OST_radioman"
];

militia_squad_lower = militia_squad apply {toLower _x};

// NOTE: Still used for now for Lib config stuff
militia_vehicles = [];
opfor_vehicles = [];
opfor_vehicles_low_intensity = [];
opfor_battlegroup_vehicles_low_intensity = [];
opfor_battlegroup_vehicles = [
	"SPE_SdKfz250_1",
	"23pzd_SdKfz251",
	"23pzd_SdKfz251_W40",
	"23pzd_SdKfz251_10",
	"23pzd_SdKfz251_16",
	"23pzd_SdKfz251_17",
	"23pzd_SdKfz251_2",
	"23pzd_SdKfz251_21",
	"23pzd_SdKfz251_22",
	"23pzd_SdKfz251_23",
	"23pzd_SdKfz251_3",
	"23pzd_SdKfz251_7",
	"23pzd_SdKfz251_8",
	"23pzd_SdKfz251_9",
	"SPEV_Sdkfz234_2",
	"SPEV_Sdkfz234_4",
	"SPE_Pak40",
	"SPE_MG42_Lafette_low_Deployed",
	"SPE_MG42_Lafette_Deployed",
	"SPE_MG34_Lafette_Deployed",
	"SPE_MG34_Lafette_low_Deployed",
	"SPE_FlaK_36_AA",
	"SPE_FlaK_38",
	"SPE_GrW278_1",
	"SPE_leFH18_AT",
	"SPE_leFH18",
	"SPE_PzKpfwIII_L",
	"SPE_PzKpfwIV_G",
	"SPE_PzKpfwV_G",
	"SPE_PzKpfwVI_H1",
	"SPE_StuG_III_G_Early",
	"SPE_StuG_III_G_Late",
	"SPE_StuG_III_G_SKB",
	"SPE_StuH_42",
	"SPE_Jagdpanther_G1",
	"SPE_FW190F8",
	"SPE_GER_R200_Unarmed",
	"SPE_GER_R200_Hood",
	"SPE_GER_R200_MG34",
	"23pzd_SdKfz2",
	"SPE_OpelBlitz",
	"SPE_OpelBlitz_Ambulance",
	"SPE_OpelBlitz_Ammo",
	"SPE_OpelBlitz_Flak38",
	"SPE_OpelBlitz_Fuel",
	"SPE_OpelBlitz_Open",
	"SPE_OpelBlitz_Repair"

];

// TODO: Utilize these arrays and add to the overall KPLIB config that it needs
// KPLIB_o_allVeh_classes
// KPLIB_allLandVeh_classes
opfor_tanks = [
	[0,
		[
			"SPE_PzKpfwIII_L",
			"SPE_StuG_III_G_Early"														// T-80BVK
		]	
	],	
	[50, 	
		[	
			"SPE_PzKpfwIII_L",													// 2S25 Sprut
			"SPE_StuG_III_G_Early",														// T-80BVK
			"SPE_StuG_III_G_Late",													// T-80BVK
			"SPE_PzKpfwIV_G"														// T-72B3 (2012)
		]	
	],	
	[100,	
		[	
			"SPE_PzKpfwIV_G",												
			"SPE_PzKpfwV_G",
			"SPE_StuG_III_G_Late",
			"SPE_Jagdpanther_G1",
			"SPE_StuH_42"														// T-80UM
		]	
	],	
	[150,	
		[	
			"SPE_PzKpfwV_G",													
			"SPE_PzKpfwIV_G",
			"SPE_PzKpfwVI_H1",
			"SPE_Jagdpanther_G1",
			"SPE_StuH_42"												// 2S25 Sprut													// T-80UM
		]	
	],
	[250,	
		[	
			"SPE_PzKpfwV_G",													
			"SPE_StuG_III_G_Late",
			"SPE_PzKpfwVI_H1",
			"SPE_Jagdpanther_G1"												// 2S25 Sprut													// T-80UM
		]	
	]		
];	
// Vehicles considered Anti-Air (Only high readiness)	
opfor_sams = [	
	[50,	
		[	
			"SPE_OpelBlitz_Flak38"												// Ural
		]	
	],	
	[100, 	
		[	
			"SPE_OpelBlitz_Flak38",										
			"23pzd_SdKfz251_21"											
		]	
	],	
	[200, 	
		[												// ZSU-23-4V
			"SPE_OpelBlitz_Flak38",												// ZSU-23-4V
			"LIB_SdKfz_7_AA",
			"23pzd_SdKfz251_21"												// ZSU-23-4V
		]
	]
];
// Vehicles considered IFVs (APCs with an autocannon)
opfor_ifvs = 
[
	[0,
		[
			"23pzd_SdKfz251_16"													// BMP-1P
		]
	],
	[50,
		[											// BTR-80a
			"23pzd_SdKfz251_17",
			"23pzd_SdKfz251_16",												// BTR-80a
			"23pzd_SdKfz251_10"												// BMP-3
		]
	],
	[100,
		[
			"23pzd_SdKfz251_17",												// BTR-80a
			"23pzd_SdKfz251_23",													// BMP-1P
			"23pzd_SdKfz251_16"													// BMP-3
		]													// BMD-4M
	],
	[200, 
		[
			"23pzd_SdKfz251_9",												// BTR-80a
			"23pzd_SdKfz251_23",
			"23pzd_SdKfz251_10",													// BMP-1P
			"23pzd_SdKfz251_17"														// T-80BVK
		]
	]
];
// Vehicles considered APCs (machineguns)
opfor_apcs = [
	[0,
		[
			"23pzd_SdKfz251",												// BTR-80
			"23pzd_SdKfz251_3",												// BTR-80
			"23pzd_SdKfz251_7"
		]
	]
];
// Vehicles considered pure troop transport
opfor_transports = [
	[0,
		[
			"SPE_GER_R200_Unarmed",
			"SPE_GER_R200_Hood",
			"SPE_OpelBlitz",
			"SPE_OpelBlitz_Open"
		]
	],
	[75, 
		[
			"23pzd_SdKfz251",
			"SPE_OpelBlitz",
			"SPE_OpelBlitz_Open",
			"LIB_SdKfz_7"	                    					// KamAZ-5350 Covered
		]
	]
];
// Vehicles considered scout cars
opfor_scout_cars = [
	[0,
		[
			"SPE_SdKfz250_1",                         						// GAZ-233011
			"SPE_GER_R200_MG34",
			"LIB_Kfz1_MG42_camo"													// GAZ-233114
		]
	],
	[60, 
		[

			"SPE_GER_R200_MG34",
			"SPEV_Sdkfz234_2",
			"SPEV_Sdkfz234_4",
			"SPE_SdKfz250_1"											// GAZ-233014 (PKM/AGS-30)
		]
	]
];

opfor_halo_air = [
	[0,
		[
			"sab_fl_ju52"                                      
		]
	]
];

// Map from category name to the spawn info
compositionEnumToClassNames = {
	params ["_enum"];

	switch (_enum) do
	{
		case "Tanks": {opfor_tanks};
		case "AA": {opfor_sams};
		case "IFV": {opfor_ifvs};
		case "APC": {opfor_apcs};
		case "Transport": {opfor_transports};
		case "Scouts": {opfor_scout_cars};
	}
};

// These categories will be considered infantry transport and will attempt to fill empty cargo spots with infantry.
compositionEnumIsInfantryTransport = {
	params ["_enum"];
	
	switch (_enum) do
	{
		case "Tanks": {false};
		case "AA": {false};
		case "IFV": {true};
		case "APC": {true};
		case "Transport": {true};
		case "Scouts": {true}; // Scout cars don't hold enough capacity to spawn any crew
		default {false};
	}
};
// These categories will be considered pure transport and the crew will dismount and join with the infantry
compositionEnumWouldDismountTransport = {
	params ["_enum"];

	switch (_enum) do
	{
		case "Tanks": {false};
		case "AA": {false};
		case "IFV": {false};
		case "APC": {true};
		case "Transport": {true};
		case "Scouts": {false};
		default {false};
	}
};
// These categories will prevent from driving around as just a driver without other crew members in the gunner / commander, etc.. seats.
compositionEnumPreventsSingleDriver = {
	params ["_enum"];

	switch (_enum) do
	{
		case "Tanks": {true};
		case "AA": {true};
		case "IFV": {true};
		case "APC": {true};
		case "Transport": {false};
		case "Scouts": {true};
		default {false};
	}
};


// First array is a number that signifies the combat readiness level that must be reached to utilize the composition
// Largest one will be used
// i.e. [10, 20, 30, 40] at alertness 50 will use the composition defined in 40
// The composition should add up to 1 unless you want more stuff to spawn in specific brackets than the calculated battlegroup size or less stuff to spawn
// The numbers inside signify the RATIO of that specific type (rounded)
// It will use the actual battlegroup calculated number * the ratio for what will appear
// This ensures it still follows the scaling amount but the composition will be adjusted properly.
// There's also support for min or max to ensure something will always spawn, or to ensure something doesn't spawn too much
// If min or max is set to 0, it means its ignored and there will be no min or cap for that category.
// Ceil means that the category will ceil up instead of rounding.
opfor_mechanized_battlegroup_compositions = [
	[0, 
		createHashMapFromArray [
			["Tanks", 
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 2],
					["Min", 0]
				]
			],
			["AA",
				createHashMapFromArray [
					["Ratio", 0.1],
					["Max", 2],
					["Min", 1]
				]
			],
			["IFV",
				createHashMapFromArray [
					["Ratio", 0.1],
					["Max", 2],
					["Min", 1]
				]
			],
			["APC",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 3],
					["Min", 1]
				]
			],
			["Transport",
				createHashMapFromArray [
					["Ratio", 0.3],
					["Max", 3],
					["Min", 1]
				]
			],
			["Scouts",
				createHashMapFromArray [
					["Ratio", 0.1],
					["Max", 3],
					["Min", 1]
				]
			]
		]
	],
	[40,
		createHashMapFromArray [
			["Tanks", 
				createHashMapFromArray [
					["Ratio", 0.3],
					["Max", 3],
					["Min", 1]
				]
			],
			["AA",
				createHashMapFromArray [
					["Ratio", 0.1],
					["Max", 1],
					["Min", 1]
				]
			],
			["IFV",
				createHashMapFromArray [
					["Ratio", 0.3],
					["Max", 3],
					["Min", 1]
				]
			],
			["APC",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 2],
					["Min", 1]
				]
			],
			["Transport",
				createHashMapFromArray [
					["Ratio", 0],
					["Max", 0],
					["Min", 0]
				]
			],
			["Scouts",
				createHashMapFromArray [
					["Ratio", 0.1],
					["Max", 3],
					["Min", 2]
				]
			]
		]
	],
	[80,
		createHashMapFromArray [
			["Tanks", 
				createHashMapFromArray [
					["Ratio", 0.3],
					["Max", 3],
					["Min", 2]
				]
			],
			["AA",
				createHashMapFromArray [
					["Ratio", 0.1],
					["Max", 2],
					["Min", 1]
				]
			],
			["IFV",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 3],
					["Min", 2]
				]
			],
			["APC",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 3],
					["Min", 1]
				]
			],
			["Transport",
				createHashMapFromArray [
					["Ratio", 0],
					["Max", 0],
					["Min", 0]
				]
			],
			["Scouts",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 3],
					["Min", 2]
				]
			]
		]
	],
	[120,
		createHashMapFromArray [
			["Tanks", 
				createHashMapFromArray [
					["Ratio", 0.4],
					["Max", 5],
					["Min", 1]
				]
			],
			["AA",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 2],
					["Min", 1]
				]
			],
			["IFV",
				createHashMapFromArray [
					["Ratio", 0.3],
					["Max", 3],
					["Min", 2]
				]
			],
			["APC",
				createHashMapFromArray [
					["Ratio", 0],
					["Max", 3],
					["Min", 1]
				]
			],
			["Transport",
				createHashMapFromArray [
					["Ratio", 0],
					["Max", 0],
					["Min", 0]
				]
			],
			["Scouts",
				createHashMapFromArray [
					["Ratio", 0.1],
					["Max", 3],
					["Min", 2]
				]
			]
		]
	]
];

opfor_motorized_battlegroup_compositions = [
	[0, 
		createHashMapFromArray [
			["Tanks", 
				createHashMapFromArray [
					["Ratio", 0],
					["Max", 0],
					["Min", 0]
				]
			],
			["AA",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 2],
					["Min", 1]
				]
			],
			["IFV",
				createHashMapFromArray [
					["Ratio", 0],
					["Max", 0],
					["Min", 0]
				]
			],
			["APC",
				createHashMapFromArray [
					["Ratio", 0],
					["Max", 4],
					["Min", 1]
				]
			],
			["Transport",
				createHashMapFromArray [
					["Ratio", 0.4],
					["Max", 6],
					["Min", 4]
				]
			],
			["Scouts",
				createHashMapFromArray [
					["Ratio", 0.3],
					["Max", 2],
					["Min", 1]
				]
			]
		]
	],
	[40,
		createHashMapFromArray [
			["Tanks", 
				createHashMapFromArray [
					["Ratio", 0],
					["Max", 0],
					["Min", 0]
				]
			],
			["AA",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 1],
					["Min", 1]
				]
			],
			["IFV",
				createHashMapFromArray [
					["Ratio", 0],
					["Max", 0],
					["Min", 0]
				]
			],
			["APC",
				createHashMapFromArray [
					["Ratio", 0.4],
					["Max", 4],
					["Min", 1]
				]
			],
			["Transport",
				createHashMapFromArray [
					["Ratio", 0.4],
					["Max", 6],
					["Min", 3]
				]
			],
			["Scouts",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 0],
					["Min", 1]
				]
			]
		]
	],
	[80,
		createHashMapFromArray [
			["Tanks", 
				createHashMapFromArray [
					["Ratio", 0.1],
					["Max", 2],
					["Min", 0]
				]
			],
			["AA",
				createHashMapFromArray [
					["Ratio", 0.1],
					["Max", 0],
					["Min", 0]
				]
			],
			["IFV",
				createHashMapFromArray [
					["Ratio", 0.1],
					["Max", 0],
					["Min", 0]
				]
			],
			["APC",
				createHashMapFromArray [
					["Ratio", 0.4],
					["Max", 7],
					["Min", 4]
				]
			],
			["Transport",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 4],
					["Min", 1]
				]
			],
			["Scouts",
				createHashMapFromArray [
					["Ratio", 0],
					["Max", 0],
					["Min", 0]
				]
			]
		]
	],
	[120,
		createHashMapFromArray [
			["Tanks", 
				createHashMapFromArray [
					["Ratio", 0.3],
					["Max", 5],
					["Min", 2]
				]
			],
			["AA",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 4],
					["Min", 0]
				]
			],
			["IFV",
				createHashMapFromArray [
					["Ratio", 0.3],
					["Max", 3],
					["Min", 1]
				]
			],
			["APC",
				createHashMapFromArray [
					["Ratio", 0.4],
					["Max", 7],
					["Min", 3]
				]
			],
			["Transport",
				createHashMapFromArray [
					["Ratio", 0.2],
					["Max", 0],
					["Min", 0]
				]
			],
			["Scouts",
				createHashMapFromArray [
					["Ratio", 0],
					["Max", 0],
					["Min", 0]
				]
			]
		]
	]
];

// Deprecated funtion (?)
opfor_troup_transports = [];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
	"SPE_FW190F8",
	"sab_sw_ju87_3",										// SPE_FW190F8",
	"sab_fl_bf109k",
	"sab_fl_bf109e"
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
	"sab_sw_bf110",											// Mi-8AMTSh Hip (S-8 x6)
    "sab_fl_ju88a",                                        // Mi-24V Hind
	"sab_sw_ju87",
	"sab_sw_ju87_3"
];

opfor_cap = [

	"sab_sw_ju87",
	"sab_fl_bf109e",
	"sab_fl_bf109k",
	"sab_fl_bf109g"										// SPE_FW190F8"
];
// TODO: Move to own file
// There will be one infantry spawning for every X players
// Infantry spawn using the opfor_at, opfor_aa etc.
BATTLESPACE_DEFENDERS_INFANTRY_RATIO = 1 / 2; // Flip to mean X infantry for every one player(s)
// There will be one vehicle for every X players
BATTLESPACE_DEFENDERS_VEHICLE_RATIO = 8;
// There will be one static for every X players
BATTLESPACE_DEFENDERS_STATICS_RATIO = 10;

BATTLESPACE_DEFENDERS_MECHANIZED_PATROL_DEFS = [
	[
		["SPE_SdKfz250_1"],
		BATTLESPACE_SQUAD_SIZE
	],
	[
		["SPE_SdKfz250_1"],
		BATTLESPACE_SQUAD_SIZE
	],
	[
		["23pzd_SdKfz251"],
		BATTLESPACE_SQUAD_SIZE
	],
	[
		["23pzd_SdKfz251"],
		BATTLESPACE_SQUAD_SIZE
	],
	[
		["SPE_SdKfz250_1"],
		BATTLESPACE_SQUAD_SIZE
	]
];

// Return [infantrySquadCount, staticCount]
BATTLESPACE_DEFENDERS_SECTOR_SCALING = {
	params ["_sector"];

	private _numberOfPlayers = ([] call KPLIB_fnc_getPlayerCount);
	private _numberOfStatics = floor(_numberOfPlayers / BATTLESPACE_DEFENDERS_STATICS_RATIO);
	private _numberOfInfantry = floor(_numberOfPlayers / BATTLESPACE_DEFENDERS_INFANTRY_RATIO);

	private _staticCount = _numberOfStatics;
	private _squadCount = round(_numberOfInfantry / BATTLESPACE_SQUAD_SIZE);

	// Size calculations (Statics: 1 per 10 players, Infantry: 2 per 1 players, Squads: 10 per):
	// 10 players, statics 1, squads 2
	// 20 players, statics 2, squads 4
	// 30 players, statics 3, squads 5
	// 50 players, statics 5, squads 9
	// 75 players, statics 7, squads 13
	// 100 players, statics 10, squads 18

	// Sector scaling, ensure minimum/maximum bounds to maintain challenge while accomodating for possible nearby points

	// Small-scale residential, of least strategic value to OPFOR
	if(_sector in sectors_capture) then {
		_squadCount = 2 max _squadCount;
		_squadCount = 3 min _squadCount;
		_staticCount = 1 max _staticCount;
		_staticCount = 2 min _staticCount;
	};

	// Production points, kept under baseline military protection
	if(_sector in sectors_factory) then {
		_squadCount = 2 max _squadCount;
		_squadCount = 3 min _squadCount;
		_staticCount = 1 max _staticCount;
		_staticCount = 2 min _staticCount;
	};

	// Communication hub, defended with garrison
	if(_sector in sectors_tower) then {
		_squadCount = 2 max _squadCount;
		_squadCount = 4 min _squadCount;
		_staticCount = 1 max _staticCount;
		_staticCount = 2 min _staticCount;
	};

	// Military points should be quite tough for lower player counts but possible with good coordination
	if(_sector in sectors_military) then {
		_squadCount = 4 max _squadCount;
		_squadCount = 6 min _squadCount;
		_staticCount = 4 max _staticCount; // Always see some statics, no max
	};

	// Big towns should be basically impossible for lower player counts
	if(_sector in sectors_bigtown) then {
		_squadCount = 6 max _squadCount;
		_squadCount = 8 min _squadCount;
		_staticCount = 4 max _staticCount; // Always see some statics, no max
	};

	[_squadCount, _staticCount]
};


BATTLESPACE_DEFENDERS_VEHICLE_CLASSES = [
	"23pzd_SdKfz251",
	"23pzd_SdKfz251_3",
	"23pzd_SdKfz251_7",
	"23pzd_SdKfz251_8",
	"SPE_GER_R200_Unarmed",
	"SPE_GER_R200_Hood",													// GAZ-233014 (PKM/AGS-30)												// GAZ-233014 (PKM/AGS-30)
	"SPE_OpelBlitz",
	"SPE_OpelBlitz_Open"
];
BATTLESPACE_DEFENDERS_STATIC_CLASSES = [
	"SPE_MG42_Lafette_low_Deployed",												// NSV Minitripod
	"SPE_MG42_Lafette_Deployed",												// NSV Minitripod
	"SPE_MG34_Lafette_Deployed",												// NSV Minitripod
	"SPE_MG34_Lafette_low_Deployed",												// NSV Minitripod
	"SPE_FlaK_36_AA",												// NSV Minitripod
	"SPE_Pak40",												// NSV Minitripod
	"SPE_FlaK_38"
];

// https://community.bistudio.com/wiki/selectBestPlaces
BATTLESPACE_DEFENDERS_STATIC_EXPRESSIONS = [
	"(2 * hills) - (4 * sea) - meadow + houses",
	"(4 * houses) - (4 * sea) - (2 * meadow)",
	"hills + (2 * houses) - (4 * sea) - (2 * meadow)",
	"forest + trees - (4 * sea) - meadow",
	"trees + meadow - (4 * sea)",
	"hills + (2 * trees) - (4 * sea) - (2 * meadow)",
	"hills + forest + (2 * trees) - (4 * sea) - (3 * meadow)",	
	"(2 * houses) + forest + trees - (4 * sea) - (4 * meadow)"
];

BATTLESPACE_MORTAR_OVERRIDE_EXPRESSIONS = [
	"(4 * houses) - (4 * sea) - meadow - hills",
	"(2 * forest) + (2 * trees) - (4 * meadow) - (4 * sea)",
	"(2 * houses) + (2 * trees) - (4 * meadow) - (4 * sea)"
];


// TODO: Move mortar stuff it to its own file eventually
BATTLESPACE_MORTARS = [
	"SPE_GrW278_1"
];

BATTLESPACE_BLACKLIST_MORTAR_FROM_HC = {
	params ["_mortar"];

	_mortar setVariable ["acex_headless_blacklist", true, true];
	{
		_x setVariable ["acex_headless_blacklist", true, true];
	} forEach (crew _mortar);

	(group _mortar) setVariable ["acex_headless_blacklist", true, true];

};

{
	[
		_x,
		"init",
		{
			[(_this#0)] call BATTLESPACE_BLACKLIST_MORTAR_FROM_HC
		},
		true,
		[],
		true
	] call CBA_fnc_addClassEventHandler;
} forEach BATTLESPACE_MORTARS;
