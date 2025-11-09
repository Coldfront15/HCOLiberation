// HEY IF YOU NEED TO CHANGE FACTIONS, DO SO HERE:
// KC_Liberation_Master_Framework\presets\init_presets.sqf

FOB_typename = "SPE_Radio_Us";                                     	            // FOB HQ building
FOB_box_typename = "Land_SPE_Covered_Pallets_01_Olive";                         // FOB Container
FOB_truck_typename = "SPE_US_M3_Halftrack_Unarmed";            		            // FOB Truck
Arsenal_typename = "Land_SPE_Ammocrate_US_08_Cover";                			// Arsenal crate
Respawn_truck_typename = "SPE_US_M3_Halftrack_Ambulance";    							            		// Unused Mobile Respawn
crewman_classname = "SPE_US_Pilot";                    										// Unused AI
pilot_classname = "SPE_US_Pilot";                          			                        // Unused AI

huron_typename = "";
KP_liberation_smallhelo_classname = "SPEX_CG4_WACO";
KP_liberation_medhelo_classname = "SPEX_CG4_WACO";
KP_liberation_midhelo_classname = "SPEX_GC4_WACO_Cargo";
KP_liberation_bighelo_classname = "SPEX_C47_Skytrain";
KP_liberation_atkhelo_classname = "SPE_P47";
KP_liberation_car_classname = "SPE_US_G503_MB_Open";
KP_liberation_atcar_classname = "SPE_US_G503_MB_M2";
KP_liberation_truck_classname = "SPE_CCKW_353";
KP_liberation_medcar_classname = "SPE_US_G503_MB_Ambulance";
KP_liberation_zodiac_classname = "SPEX_LCVP";
KP_liberation_rhib_classname = "LIB_LCI";
KP_liberation_ifv_classname = "SPE_M20_AUC";
KP_liberation_apc_classname = "SPE_US_M3_Halftrack";
KP_liberation_cas_classname = "SPE_P47";
KP_liberation_cap_classname = "SPE_P47";
KP_liberation_rearm_classname = "SPE_CCKW_353_Ammo";
KP_liberation_repair_classname = "SPE_CCKW_353_Repair";
KP_liberation_fuel_classname = "SPE_CCKW_353_Fuel";

KP_liberation_small_storage_building = "ContainmentArea_02_forest_F";     		// Small storage
KP_liberation_large_storage_building = "ContainmentArea_01_forest_F";     		// Large storage
KP_liberation_recycle_building = "Land_Mil_Repair_center_EP1";          		// Salvage depot
KP_liberation_air_vehicle_building = "Land_MobileRadar_01_radar_F";  		    // Air control object
KP_liberation_heli_slot_building = "Land_SPE_maintenanceCrane";              		// Helicopter slot object
KP_liberation_plane_slot_building = "Land_SPE_maintenanceCrane";             		        // Fixed wing slot object
KP_liberation_supply_crate = "Land_SPE_Ammocrate_US_07_Cover";                       		// Supply crate
KP_liberation_ammo_crate = "Land_SPE_Ammocrate_US_07_Stack";                      		// Ammo crate
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     		// Fuel crate

// Format: ["vehicle_classname",supplies,ammunition,fuel,"Custom Name",unlockCost]

infantry_units = [];

light_vehicles = [
    ["SPE_US_G503_MB",25,0,25],
    ["SPE_US_G503_MB_Armoured",25,0,25],
    ["SPE_US_G503_MB_M1919",25,25,25],
    ["SPE_US_G503_MB_M1919_Armoured",50,25,25],
    ["SPE_US_G503_MB_M2",25,50,25],
    ["SPE_US_G503_MB_M2_Armoured",50,50,25],                 
    ["SPE_CCKW_353",50,0,35],
    ["SPE_US_G503_MB_M2_PATROL",50,50,25],                               
    ["SPE_US_G503_MB_M1919_PATROL",50,50,25],                              
    ["SPE_CCKW_353_M2",50,50,35],
    ["LIB_US_Scout_M3",50,50,25],
    ["LIB_US_Scout_M3_FFV",50,50,25]                                  
    
];

recon_vehicles = [
    ["SPE_M20_AUC",50,50,50]                                                
];

// Don't add air vehicles into this list
medical_vehicles = [
    ["SPE_US_G503_MB_Ambulance",25,0,25],
    ["SPE_CCKW_353_Ambulance",50,0,25],
    ["SPE_US_M3_Halftrack_Ambulance",50,0,25],
    [Respawn_truck_typename,500,0,100]
];

// Engi Specific Vehicles
groundlogi_vehicles = [
    ["SPE_CCKW_353_Repair",200,0,25],
    ["SPE_CCKW_353_Fuel",100,0,100],
    ["SPE_CCKW_353_Ammo",100,100,25],
    ["SPE_CCKW_353_Open",100,0,25]
];

// Thunder
artillery_vehicles = [     
    ["SPE_105mm_M3_WDC",150,150,0]
];

atgm_vehicles = [
];

aa_vehicles = [
    ["SPE_US_M16_Halftrack",100,150,25]
];

heavy_vehicles = [
    ["SPEV_T17E1",150,100,25],
    ["SPE_M8_LAC",150,100,50],
    ["SPE_M8_LAC_ringMount",150,100,50],                              
    ["LIB_M3A3_Stuart",150,100,75],                          
    ["LIB_M5A1_Stuart",150,100,75],                        
    ["SPE_M4A0_75_Early",200,100,100],   
    ["SPE_M4A0_composite",200,100,100],                       
    ["SPE_M4A0_75",200,100,100],                         
    ["SPE_M4A1_75",250,100,100],
    ["SPE_M4A3_75",250,150,100],                               
    ["SPE_M10",200,100,100],                         
    ["SPE_M18_Hellcat",250,200,100],                               
    ["SPE_M4A1_76",250,200,100],                                  
    ["SPE_M4A3_76",250,200,150],                                  
    ["SPE_M4A0_105",300,250,200], 
    ["SPE_M4A3_105",400,250,200],                                                                  
    ["SPE_M4A1_T34_Calliope_Direct",500,400,200],                          
    ["SPE_M4A1_T34_Calliope",500,400,200]               	                
];

rotarylogi_vehicles = [
    ["SPEX_CG4_WACO",25,0,0],
    ["SPEX_GC4_WACO_Cargo",25,0,0],                                           
    ["SPEX_HORSA",50,0,0],
    ["SPEX_HORSA_MK2",50,0,0],
    ["SPEX_C47_Skytrain",200,0,100]
           
];

rotarycas_vehicles = 
[                                     
];

fixedwing_vehicles = [
    ["LIB_US_P39",200,250,100],                                        
    ["LIB_US_P39_2",250,250,100],
    ["sab_fl_p51d",400,300,150],                                         
    ["SPE_P47",600,350,150],
    ["sab_sw_p38",600,250,200],
    ["sab_sw_a26",850,450,300], 
    ["sab_sw_b17",1000,500,750]                                      
];

static_vehicles = [
    ["SPE_M1919_M2",25,40,0],                                            
    ["SPE_M1919_M2_Trench_Deployed",25,40,0],                              
    ["SPE_M1919A6_Bipod",25,40,0],
    ["SPE_M2_M3_Trench",50,75,0],  
    ["SPE_M2_M3",50,75,0],                                        
    ["SPE_M45_Quadmount",50,75,0],                                                          
    ["SPE_M1_81",35,60,0],                                      
    ["SPE_57mm_M1",45,60,0],
    ["SPEX_T3_Trailer",45,0,0],
    ["SPEX_T3_Trailer_Ammo",25,25,0],
    ["SPEX_T3_Trailer_Fuel",25,0,25],
    ["SPEX_T3_Trailer_Repair",25,0,0]
];

buildings = [
    ["Land_Billboard_03_blank_F",0,0,0,"Administrators Sign"],
    ["Land_Billboard_F",0,0,0,"Server Rules Sign"],
    ["Land_Billboard_03_bluking_F",0,0,0,"Da Rulez Sign"],
    ["Land_Billboard_03_aan_F",0,0,0,"Radio Communications Sign"],
    ["Land_Billboard_03_cheese_F",0,0,0,"Keybind Sign"],
    ["SPE_Sign_US_Supply_02",0,0,0],
    ["SPE_Sign_US_Supply_01",0,0,0],
    ["SPE_Sign_US_Snipers",0,0,0],
    ["SPE_Sign_US_Motor_01",0,0,0],
    ["SPE_Sign_US_Motor_02",0,0,0],
    ["SPE_Sign_US_Hospital_01",0,0,0],
    ["SPE_Sign_US_Hospital_02",0,0,0],
    ["SPE_Sign_US_Minefield",0,0,0],
    ["SPE_Sign_US_HQ_01",0,0,0],
    ["SPE_Sign_US_HQ_02",0,0,0],
    ["SPE_Sign_US_Bridge",0,0,0],
    ["SPE_Sign_US_Danger",0,0,0],
    ["Land_SPE_Tarp_Corner_R",0,0,0],
    ["Land_SPE_Tarp_Corner_L",0,0,0],
    ["Land_SPE_Tarp_Rectangle_01",0,0,0],
    ["Land_SPE_Tarp_Rectangle_02",0,0,0],
    ["Land_SPE_Tarp_Side",0,0,0],
    ["Land_SPE_Tarp_Small_01",0,0,0],
    ["Land_SPE_Tarp_Small_02_L",0,0,0],
    ["Land_SPE_Tarp_Small_02_R",0,0,0],
    ["Land_SPE_Ammocrate_US_05",0,0,0],
    ["Land_SPE_Ammocrate_US_06",0,0,0],
    ["Land_SPE_Ammocrate_US_06_Stack",0,0,0],
    ["Land_SPE_Ammocrate_US_07",0,0,0],
    ["Land_SPE_Ammocrate_US_07_Cover",0,0,0],
    ["Land_SPE_Ammocrate_US_07_Stack",0,0,0],
    ["Land_SPE_Ammocrate_US_08",0,0,0],
    ["Land_SPE_Ammocrate_US_08_Cover",0,0,0],
    ["Land_SPE_Ammocrate_US_08_Stack",0,0,0],
    ["Land_SPE_Decoy_02",0,0,0],
    ["Land_SPE_Decoy_01",0,0,0],
    ["Land_SPE_BarbedWire_04",0,0,0],
    ["Land_SPE_BarbedWire_03",0,0,0],
    ["Land_SPE_BarbedWire_01",0,0,0],
    ["Land_SPE_BarbedWire_02",0,0,0],
    ["Land_SPE_BarbedWire_Posts",0,0,0],
    ["Land_SPE_BarbedWire_End",0,0,0],
    ["Land_SPE_Netting_02",0,0,0],
    ["Land_SPE_Netting_01",0,0,0],
    ["Land_WW2_CamoNet_NATO_Var1",0,0,0],
    ["Land_WW2_CamoNet_Tank",0,0,0],
    ["Land_SPE_Slit_Trench_support",0,0,0],
    ["Land_Target_Line_01_F",0,0,0],
    ["Land_Target_Pistol_01_F",0,0,0],
    ["Land_Target_Single_01_F",0,0,0],
    ["Land_DisturbedSoil_02_decal_F",0,0,0],
    ["Land_DirtPatch_05_F",0,0,0],
    ["CraterLong_02_F",0,0,0],
    ["CraterLong_02_small_F",0,0,0],
    ["Land_ManurePile_01_F",0,0,0],
    ["Land_SPE_Dugout_Decal_01",0,0,0],
    ["Land_SPE_Dugout_Decal_02",0,0,0],
    ["Land_SPE_Dugout_Decal_03",0,0,0],
    ["Land_SPE_Dugout_3m_sandbags",0,0,0],
    ["Land_SPE_Dugout_6m",0,0,0],
    ["Land_SPE_Dugout_6m315",0,0,0],
    ["Land_SPE_Dugout_6m315_sandbags",0,0,0],
    ["Land_SPE_Dugout_6m45",0,0,0],
    ["Land_SPE_Dugout_6m45_sandbags",0,0,0],
    ["Land_SPE_Dugout_6m_sandbags",0,0,0],
    ["Land_SPE_Dugout_Cover",0,0,0],
    ["Land_SPE_Guardbox",0,0,0],
    ["Land_SPE_HedgeHog",0,0,0],
    ["Land_SPE_Sandbag_Curve",0,0,0],
    ["Land_SPE_Sandbag_Gun_Hole",0,0,0],                                
    ["Land_SPE_Sandbag_Long",0,0,0],                                     
    ["Land_SPE_Sandbag_Long_Line",0,0,0],
    ["Land_SPE_Sandbag_Long_Thick",0,0,0],
    ["Land_SPE_Sandbag_Nest",0,0,0],
    ["Land_SPE_Sandbag_Short",0,0,0],
    ["Land_SPE_Sandbag_Short_Low",0,0,0],
    ["Land_SPE_Sandbag_Single",0,0,0],
    ["Land_SPE_Tent_03",0,0,0],
    ["Land_SPE_Tent_02",0,0,0],
    ["Land_SPE_Tent_01",0,0,0],
    ["Land_SPE_US_Tent",0,0,0],
    ["Land_SPE_Mound_Long",0,0,0],
    ["Land_SPE_Mound_Low_01",0,0,0],
    ["Land_SPE_Mound_Low_02",0,0,0],
    ["Land_SPE_Mound_Short",0,0,0],
    ["Land_SPE_Wood_TrenchLogWall_01_4m_v3",0,0,0],
    ["Land_SPE_Wood_TrenchLogWall_01_4m_v2",0,0,0],
    ["Land_SPE_Wood_TrenchLogWall_01_4m_v1",0,0,0],
    ["Land_SPE_57MM_shellcase_01",0,0,0],
    ["Land_SPE_57MM_shellcase_03",0,0,0],
    ["Land_SPE_Artillery_Rounds_US",0,0,0],
    ["Land_SPE_Ammocrate_US_04",0,0,0],
    ["Land_SPE_Ammocrate_US_02",0,0,0],
    ["Land_SPE_Ammocrate_US_01",0,0,0],
    ["Land_SPE_Foodcrate_US_A",0,0,0],
    ["Land_SPE_Foodcrate_US_B",0,0,0],
    ["Land_SPE_Foodcrate_US_C",0,0,0],
    ["Land_SPE_Foodcrate_US_D",0,0,0],
    ["Land_SPE_Fuel_Barrel_US",0,0,0],	
    ["Land_WW2_SWU_British_Mine_Sign",0,0,0],	
    ["Land_SPE_FuelCan_US",0,0,0],
    ["Land_SPE_Jerrycan",0,0,0],
    ["Land_SPE_Stretcher",0,0,0],
    ["Land_SPE_Litter_Long",0,0,0],
    ["Land_SPE_Litter_Square3",0,0,0],
    ["Land_SPE_Litter_Square5",0,0,0],
    ["Land_Setka_Car",0,0,0],
    ["Land_SPE_US_Lamp",0,0,0],
    ["LAND_TEM_Utah_Beach_Water2",0,0,0],
    ["LAND_TEM_Utah_Beach_Water2_Light",0,0,0],
    ["LAND_TEM_Utah_Beach_Water3",0,0,0],
    ["LAND_TEM_Utah_Beach_Water3_Light",0,0,0],
    ["LAND_TEM_Utah_Beach_Water5",0,0,0],
    ["LAND_TEM_Utah_Beach_Water5_Light",0,0,0],
    ["LAND_Utah_Beach_Trench_T_Dirt",0,0,0],
    ["LAND_Utah_Beach_Trench_Short_Dirt",0,0,0],
    ["LAND_Utah_Beach_Trench_Entrance_Dirt",0,0,0],
    ["LAND_Utah_Beach_Trench_End_Dirt",0,0,0],
    ["LAND_Utah_Beach_Trench_Corner_Dirt",0,0,0],
    ["LAND_Utah_Beach_Trench_Corner_60_Dirt",0,0,0],
    ["SPE_FlagCarrier_USA",0,0,0]
];

support_vehicles = [
    [Arsenal_typename,								0,		25,	    0,		"Arsenal Box"],					// Arsenal Box
    ["SPE_AmmoCrate_VehicleAmmo_US",			100,	100,	0,		"Resupply Point"], 				    // Resupply Point
    [KP_liberation_recycle_building,				200,	0,		0],										// Salvage Depot
    [KP_liberation_air_vehicle_building,			400,	0,		0],										// Flight Control
    [KP_liberation_small_storage_building,			0,		0,		0],										// Small Storage Flat
    [KP_liberation_large_storage_building,			0,		0,		0],										// Large Storage Flat
    [KP_liberation_heli_slot_building,				75,	    0,		0],										// Heli Slot Helipad
    [KP_liberation_plane_slot_building,				75,	0,		0],										// Plane Slot Hangar
    ["ACE_Wheel",									5,		0,		0],										// Spare Wheel
    ["ACE_Track",									5,		0,		0],										// Spare Track
    ["wdc_artillery_SPE_M3_M1_HE_VT_box",			4,		0,		0],										// Spare Track
    ["wdc_artillery_SPE_M3_M1_HE_PD_box",			2,		0,		0],										// Spare Track
    ["wdc_artillery_SPE_M3_M67_HEAT_box",			2,		0,		0],										// Spare Track
    ["wdc_artillery_SPE_M3_M60_WP_box",			    2,		0,		0],										// Spare Track
    [FOB_box_typename,								1500,	0,		400],									// FOB Container
    [FOB_truck_typename,							1800,	0,		500]  									// FOB Truck
];

blufor_squad_inf_light = [];
blufor_squad_inf = [];
blufor_squad_at = [];
blufor_squad_aa = [];
blufor_squad_recon = [];
blufor_squad_para = [];

elite_vehicles = [];
bypass_perm_vehicles = [
    "SPEX_CG4_WACO", 
    "SPEX_HORSA",  
    "SPEX_HORSA_MK2",                                         
    "SPEX_GC4_WACO_Cargo"
];
