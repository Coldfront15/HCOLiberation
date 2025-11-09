
KPLIB_initPresets = false;

private _start = diag_ticktime;
if (isServer) then {
    ["----- Server starts preset initialization -----", "PRESETS"] call KPLIB_fnc_log;
    ["Not found vehicles listed below are not an issue in general. It just sorts out vehicles from not loaded mods.", "PRESETS"] call KPLIB_fnc_log;
    ["Only if you e.g. use a CUP preset and you get messages about missing CUP classes, then check your loaded mods.", "PRESETS"] call KPLIB_fnc_log;
};

switch (KP_liberation_preset_blufor) do {
    default  {[] call compileFinal preprocessFileLineNumbers "presets\blufor\custom.sqf";};
};

switch (KP_liberation_preset_opfor) do {
    default  {[] call compileFinal preprocessFileLineNumbers "presets\opfor\custom.sqf";};
};

switch (KP_liberation_preset_resistance) do {
    default  {[] call compileFinal preprocessFileLineNumbers "presets\resistance\custom.sqf";};
};

switch (KP_liberation_preset_civilians) do {
    default  {[] call compileFinal preprocessFileLineNumbers "presets\civilians\custom.sqf";};
};

// Prices for the blufor infantry squads (supplies, ammo, fuel)
KPLIB_b_allSquads = [
    [blufor_squad_inf_light,0,0,0],
    [blufor_squad_inf,0,0,0],
    [blufor_squad_at,0,0,0],
    [blufor_squad_aa,0,0,0],
    [blufor_squad_recon,0,0,0],
    [blufor_squad_para,0,0,0]
];

// Squad names for build menu
squads_names = [
    localize "STR_LIGHT_RIFLE_SQUAD",
    localize "STR_RIFLE_SQUAD",
    localize "STR_AT_SQUAD",
    localize "STR_AA_SQUAD",
    localize "STR_RECON_SQUAD",
    localize "STR_PARA_SQUAD"
];

// Classnames of objects which should be ignored when building
GRLIB_ignore_colisions_when_building = [
    "SPE_US_G503_MB",
    "SPE_US_G503_MB_Armoured",
    "SPE_US_G503_MB_M1919",
    "SPE_US_G503_MB_M1919_Armoured",
    "SPE_US_G503_MB_M2",
    "SPE_US_G503_MB_M2_Armoured",
    "SPE_CCKW_353",
    "SPE_US_G503_MB_M2_PATROL",
    "SPE_US_G503_MB_M1919_PATROL",
    "SPE_CCKW_353_M2",
    "LIB_US_Scout_M3",
    "LIB_US_Scout_M3_FFV",
    "SPE_M20_AUC",
    "SPE_US_G503_MB_Ambulance",
    "SPE_CCKW_353_Ambulance",
    "SPE_CCKW_353_Repair",
    "SPE_CCKW_353_Fuel",
    "SPE_CCKW_353_Ammo",
    "SPE_CCKW_353_Open",
    "SPE_105mm_M3_WDC",
    "SPE_US_M16_Halftrack",
    "SPE_M8_LAC",
    "SPE_M8_LAC_ringMount",
    "LIB_M3A3_Stuart",
    "LIB_M5A1_Stuart",
    "SPE_M4A0_75_Early",
    "SPE_M4A0_composite",
    "SPE_M4A0_75",
    "SPE_M4A1_75",
    "SPE_M4A3_75",
    "SPE_M10",
    "SPE_M18_Hellcat",
    "SPE_M4A1_76",
    "SPE_M4A3_76",
    "SPE_M4A0_105",
    "SPE_M4A3_105",
    "SPE_M4A1_T34_Calliope_Direct",
    "SPE_M4A1_T34_Calliope",
    "SPEX_HORSA",
    "SPEX_HORSA_MK2",
    "SPEX_GC4_WACO_Cargo",
    "SPEX_CG4_WACO",
    "SPEX_C47_Skytrain",
    "LIB_US_P39",
    "LIB_US_P39_2",
    "sab_fl_p51d",
    "SPE_P47",
    "sab_sw_p38",
    "sab_sw_a26",
    "sab_sw_b17",
    "SPE_M1919_M2",
    "SPE_M1919_M2_Trench_Deployed",
    "SPE_M1919A6_Bipod",
    "SPE_M2_M3_Trench",
    "SPE_M2_M3",
    "SPE_M45_Quadmount",
    "LIB_M2_60",
    "SPE_M1_81",
    "SPE_57mm_M1",
    "SignAd_SponsorS_ARMEX_F",
    "SignAd_SponsorS_ION_F",
    "SignAd_SponsorS_Larkin_F",
    "SignAd_SponsorS_Vrana_F",
    "Land_Billboard_03_blank_F",
    "Land_Billboard_F",
    "Land_Billboard_03_bluking_F",
    "Land_Billboard_03_aan_F",
    "Land_Billboard_03_cheese_F",
    "SPE_Sign_US_Supply_02",
    "SPE_Sign_US_Snipers",
    "SPE_Sign_US_Supply_01",
    "SPE_Sign_US_Motor_01",
    "SPE_Sign_US_Hospital_01",
    "SPE_Sign_US_Hospital_02",
    "SPE_Sign_US_Minefield",
    "SPE_Sign_US_HQ_01",
	"SPE_Sign_US_HQ_02",
    "SPE_Sign_US_Bridge",
    "SPE_Sign_US_Danger",
    "Land_SPE_Tarp_Corner_R",
    "Land_SPE_Tarp_Corner_L",
    "Land_SPE_Tarp_Rectangle_01",
    "Land_SPE_Tarp_Rectangle_02",
    "Land_SPE_Tarp_Side",
    "Land_SPE_Tarp_Small_01",
    "Land_SPE_Tarp_Small_02_L",
    "Land_SPE_Tarp_Small_02_R",
    "Land_SPE_Ammocrate_US_05",
    "Land_SPE_Ammocrate_US_06",
    "Land_SPE_Ammocrate_US_06_Stack",
    "Land_SPE_Ammocrate_US_07",
	"Land_SPE_Ammocrate_US_07_Cover",
	"Land_SPE_Ammocrate_US_07_Stack",
    "Land_SPE_Ammocrate_US_08",
    "Land_SPE_Ammocrate_US_08_Cover",
    "Land_SPE_Ammocrate_US_08_Stack",
    "Land_SPE_Decoy_02",
    "Land_SPE_Decoy_01",
	"Land_SPE_BarbedWire_04",
	"Land_SPE_BarbedWire_03",
    "Land_SPE_BarbedWire_01",
    "Land_SPE_BarbedWire_02",
    "Land_SPE_BarbedWire_Posts",
    "Land_SPE_BarbedWire_End",
    "Land_SPE_Netting_02",
	"Land_SPE_Netting_01",
	"Land_WW2_CamoNet_NATO_Var1",
	"Land_WW2_CamoNet_Tank",
	"Land_SPE_Slit_Trench_support",
	"Land_Target_Line_01_F",
    "Land_Target_Pistol_01_F", 
    "Land_Target_Single_01_F", 
    "Land_DisturbedSoil_02_decal_F", 
    "Land_DirtPatch_05_F", 
    "CraterLong_02_F",
    "CraterLong_02_small_F",
    "Land_ManurePile_01_F",
    "Land_SPE_Dugout_Decal_01",
    "Land_SPE_Dugout_Decal_02",
    "Land_SPE_Dugout_Decal_03",
    "Land_SPE_Dugout_3m_sandbags",
    "Land_SPE_Dugout_6m",
    "Land_SPE_Dugout_6m315",
    "Land_SPE_Dugout_6m315_sandbags",
    "Land_SPE_Dugout_6m45",
    "Land_SPE_Dugout_6m45_sandbags",
    "Land_SPE_Dugout_6m_sandbags",
    "Land_SPE_Dugout_Cover",
    "Land_SPE_Guardbox",
    "Land_SPE_HedgeHog",
    "Land_SPE_Sandbag_Curve",
    "Land_SPE_Sandbag_Gun_Hole",
    "Land_SPE_Sandbag_Long",
    "Land_SPE_Sandbag_Long_Line",
    "Land_SPE_Sandbag_Long_Thick",
    "Land_SPE_Sandbag_Nest",
    "Land_SPE_Sandbag_Short",
    "Land_SPE_Sandbag_Short_Low",
    "Land_SPE_Sandbag_Single",
    "Land_SPE_Tent_03",
    "Land_SPE_Tent_02",
    "Land_SPE_Tent_01",
    "Land_SPE_US_Tent",
    "Land_SPE_Mound_Long",
    "Land_SPE_Mound_Low_01",
    "Land_SPE_Mound_Low_02",
    "Land_SPE_Mound_Short",
    "Land_SPE_Wood_TrenchLogWall_01_4m_v3",
    "Land_SPE_Wood_TrenchLogWall_01_4m_v2",
    "Land_SPE_Wood_TrenchLogWall_01_4m_v1",
    "Land_SPE_Artillery_Rounds_US", 
    "Land_SPE_Ammocrate_US_04", 
    "Land_SPE_Ammocrate_US_02", 
    "Land_SPE_Ammocrate_US_01", 
    "Land_SPE_Foodcrate_US_A", 
    "Land_SPE_Foodcrate_US_B",
    "Land_SPE_Foodcrate_US_C", 
    "Land_SPE_Fuel_Barrel_US",
    "Land_SPE_Foodcrate_US_D", 
    "Land_WW2_SWU_British_Mine_Sign", 
    "Land_SPE_FuelCan_US", 
    "Land_SPE_Jerrycan", 
    "Land_SPE_Stretcher", 
    "Land_SPE_Litter_Long", 
    "Land_SPE_Litter_Square3", 
    "Land_SPE_Litter_Square5", 
    "Land_Setka_Car", 
    "Land_SPE_US_Lamp", 
    "SPE_FlagCarrier_USA",
	"Base_WarfareBBarrier10xTall",
    "Land_HBarrierWall6_F",
    "Land_HBarrierWall4_F",
    "Land_HBarrierWall_corner_F",
    "Land_HBarrierWall_corridor_F",
    "Land_HBarrierTower_F",
    "Land_Fort_Watchtower_EP1",
    "Land_HBarrier_Big_F",
    "Land_HBarrier_5_F",
    "Land_HBarrier_3_F",
    "land_pmc_opx_hesco_stack",
    "Land_HBarrier1",
    "Land_Billboard_F",
    "Land_Billboard_03_blank_F",
    "Land_Billboard_03_aan_F",
	"Land_Billboard_03_koke_F",
	"Land_Billboard_03_cheese_F",
    "Land_Billboard_03_bluking_F",
    "Land_Billboard_03_ionbase_F",
    "Land_Billboard_03_lyfe_F",
    "Land_Billboard_03_argois_F",
    "Land_Billboard_03_ygont_F",
    "Land_Billboard_03_pate_F",
    "SignAd_SponsorS_Suatmm_F",
    "SignAd_SponsorS_Fuel_white_F",
    "SignAd_SponsorS_Larkin_F",
    "Land_BagFence_Short_F",
	"SignAd_SponsorS_ARMEX_F",
	"SignAd_SponsorS_ION_F",
    "Land_Billboard_03_ygont_F",
    "SignAd_SponsorS_Suatmm_F",
    "SignAd_SponsorS_Fuel_white_F",
    "SignAd_SponsorS_Larkin_F",
    "Land_BagFence_Short_F",
	"SignAd_SponsorS_ARMEX_F",
	"SignAd_SponsorS_ION_F",
	"SignAd_SponsorS_Larkin_F",
	"SignAd_SponsorS_Quontrol_F",
	"SignAd_SponsorS_Vrana_F",
    "SignAd_SponsorS_Larkin_F",
    "Land_Sign_WarningMilitaryArea_F", 
    "Land_Sign_WarningMilAreaSmall_F", 
    "Land_Sign_WarningMilitaryVehicles_F", 
    "Land_Sign_WarningNoWeapon_F", 
    "US_WarfareBFieldhHospital_Base_EP1",
    "Land_Barrack2_EP1",
    "Land_Mil_Guardhouse_EP1",
    "WarfareBCamp",
    "Fortress2",
    "Land_fortified_nest_big_EP1",
    "Fortress1",
    "Land_fortified_nest_small_EP1",
    "ShedSmall",
    "Land_fort_artillery_nest_EP1",
    "Land_fort_rampart_EP1",
    "Land_GuardShed",
    "Hedgehog",
    "Land_Army_hut_storrage",
    "Land_jezekbeton",
    "Land_fort_bagfence_round",
    "Land_fort_bagfence_corner",
    "Land_fort_bagfence_long",
    "Land_BagFence_Round_F",
    "Land_BagFence_Short_F",
    "Land_BagFence_Long_F",
    "Land_BagFence_Corner_F",
    "Land_BagFence_End_F",
    "land_pmc_opx_tx_barrier",
    "land_pmc_opx_tx_barrier_2",
    "land_pmc_opx_alaska1",
    "Land_CncBarrierMedium_F",
    "Land_CncBarrierMedium4_F",
    "Land_Concrete_SmallWall_4m_F",
    "Land_Concrete_SmallWall_8m_F",
    "land_pmc_opx_c_bar1",
    "Land_HelipadCircle_F",
    "Land_HelipadRescue_F",
    "Land_runway_edgelight",
    "Land_runway_edgelight_blue_F",
    "Land_Flush_Light_yellow_F",
    "Land_Flush_Light_green_F",
    "Land_Flush_Light_red_F",
    "Land_PortableLight_single_F",
    "Land_PortableLight_double_F",
    "Land_LampHarbour_F",
    "Land_LampHalogen_F",
    "Flag_NATO_F",
    "Flag_US_F", 
    "Flag_CW_US_ARMY", 
    "Flag_CW_US_NAVY", 
    "Flag_CW_US_AIR", 
    "Flag_UK_F", 
    "UnitedKingdom_Army_Flag",
    "FlagCarrierINDFOR_EP1", 
    "FlagCarrierBLUFOR_EP1", 
    "FlagCarrierOPFOR_EP1", 
    "FlagCarrierWhite_EP1", 
    "Flag_FD_Purple_F", 
    "Flag_FD_Orange_F", 
    "ITC_Land_loudspeakers2",
    "US_WarfareBUAVterminal_Base_EP1", 
    "PowGen_Big_EP1", 
    "Land_CamoNet_NATO_EP1", 
    "Land_CamoNetVar_NATO_EP1", 
    "Land_CamoNetB_NATO_EP1", 
    "Land_CampingChair_V1_F", 
    "Land_CampingChair_V2_F", 
    "Land_CampingTable_F", 
    "MapBoard_altis_F", 
    "MapBoard_stratis_F", 
    "Land_BarGate_F",
    "land_pmc_opx_speedbump",
    "Land_Pallet_MilBoxes_F",
    "Land_PaperBox_open_empty_F",
    "Land_PaperBox_open_full_F",
    "Land_PaperBox_closed_F",
    "Land_DieselGroundPowerUnit_01_F",
    "Land_ToolTrolley_02_F",
    "Land_WeldingTrolley_01_F",
    "Land_Workbench_01_F",
    "Land_Fuel_tank_big",
    "Land_Fuel_tank_stairs",
    "Land_GasTank_01_yellow_F",
    "Land_GasTank_02_F",
    "Land_BarrelWater_F",
    "Land_BarrelWater_grey_F",
    "Land_WaterBarrel_F",
    "Land_WaterTank_F",
	"B_Slingload_01_Repair_F",
	"B_Slingload_01_Ammo_F",
	"B_Slingload_01_Fuel_F",
	"Land_Cargo20_military_green_F",
	"WarfareBDepot",
	"B_Slingload_01_Cargo_F",
	"B_supplyCrate_F",
	"ContainmentArea_02_sand_F",
	"ContainmentArea_01_sand_F",
	"Land_Mil_Repair_center_EP1",
	"Land_Airport_01_controlTower_F",
	"Land_HelipadCircle_F",
	"Land_TentHangar_V1_F",
	"CargoNet_01_box_F",
	"B_CargoNet_01_ammo_F",
	"CargoNet_01_barrels_F",
    "Sign_Sphere100cm_F",
    "FlexibleTank_01_forest_F",
    "Land_ClutterCutter_large_F",
    "wdc_artillery_SPE_M3_M67_HEAT_box",
    "wdc_artillery_SPE_M3_M60_WP_box",
    "wdc_artillery_SPE_M3_M1_HE_PD_box",
    "wdc_artillery_SPE_M3_M1_HE_VT_box",
    "LAND_TEM_Utah_Beach_Water2",
    "LAND_TEM_Utah_Beach_Water2_Light",
    "LAND_TEM_Utah_Beach_Water3",
    "LAND_TEM_Utah_Beach_Water3_Light",
    "LAND_TEM_Utah_Beach_Water5",
    "LAND_TEM_Utah_Beach_Water5_Light",
    "LAND_Utah_Beach_Trench_T_Dirt",
    "LAND_Utah_Beach_Trench_Short_Dirt",
    "LAND_Utah_Beach_Trench_Entrance_Dirt",
    "LAND_Utah_Beach_Trench_End_Dirt",
    "LAND_Utah_Beach_Trench_Corner_Dirt",
    "LAND_Utah_Beach_Trench_Corner_60_Dirt"
];

// Checking all preset arrays for missing mods and sort out not available classnames

// BLUFOR
infantry_units                              = infantry_units                            select {[( _x select 0)] call KPLIB_fnc_checkClass};
light_vehicles                              = light_vehicles                            select {[( _x select 0)] call KPLIB_fnc_checkClass};
recon_vehicles                              = recon_vehicles                            select {[( _x select 0)] call KPLIB_fnc_checkClass};
medical_vehicles                            = medical_vehicles                          select {[( _x select 0)] call KPLIB_fnc_checkClass};
groundlogi_vehicles                         = groundlogi_vehicles                       select {[( _x select 0)] call KPLIB_fnc_checkClass};
artillery_vehicles                          = artillery_vehicles                        select {[( _x select 0)] call KPLIB_fnc_checkClass};
atgm_vehicles                               = atgm_vehicles                             select {[( _x select 0)] call KPLIB_fnc_checkClass};
aa_vehicles                                 = aa_vehicles                               select {[( _x select 0)] call KPLIB_fnc_checkClass};
heavy_vehicles                              = heavy_vehicles                            select {[( _x select 0)] call KPLIB_fnc_checkClass};
rotarylogi_vehicles                         = rotarylogi_vehicles                       select {[( _x select 0)] call KPLIB_fnc_checkClass};
rotarycas_vehicles                          = rotarycas_vehicles                        select {[( _x select 0)] call KPLIB_fnc_checkClass};
fixedwing_vehicles                          = fixedwing_vehicles                        select {[( _x select 0)] call KPLIB_fnc_checkClass};
static_vehicles                             = static_vehicles                           select {[( _x select 0)] call KPLIB_fnc_checkClass};
buildings                                   = buildings                                 select {[( _x select 0)] call KPLIB_fnc_checkClass};
support_vehicles                            = support_vehicles                          select {[( _x select 0)] call KPLIB_fnc_checkClass};
blufor_squad_inf_light                      = blufor_squad_inf_light                    select {[_x] call KPLIB_fnc_checkClass};
blufor_squad_inf                            = blufor_squad_inf                          select {[_x] call KPLIB_fnc_checkClass};
blufor_squad_at                             = blufor_squad_at                           select {[_x] call KPLIB_fnc_checkClass};
blufor_squad_aa                             = blufor_squad_aa                           select {[_x] call KPLIB_fnc_checkClass};
blufor_squad_recon                          = blufor_squad_recon                        select {[_x] call KPLIB_fnc_checkClass};
blufor_squad_para                           = blufor_squad_para                         select {[_x] call KPLIB_fnc_checkClass};
elite_vehicles                              = elite_vehicles                            select {[_x] call KPLIB_fnc_checkClass};

// OPFOR
militia_squad                               = militia_squad                             select {[_x] call KPLIB_fnc_checkClass};
militia_vehicles                            = militia_vehicles                          select {[_x] call KPLIB_fnc_checkClass};
opfor_vehicles                              = opfor_vehicles                            select {[_x] call KPLIB_fnc_checkClass};
opfor_vehicles_low_intensity                = opfor_vehicles_low_intensity              select {[_x] call KPLIB_fnc_checkClass};
opfor_battlegroup_vehicles                  = opfor_battlegroup_vehicles                select {[_x] call KPLIB_fnc_checkClass};
opfor_battlegroup_vehicles_low_intensity    = opfor_battlegroup_vehicles_low_intensity  select {[_x] call KPLIB_fnc_checkClass};
opfor_troup_transports                      = opfor_troup_transports                    select {[_x] call KPLIB_fnc_checkClass};
opfor_choppers                              = opfor_choppers                            select {[_x] call KPLIB_fnc_checkClass};
opfor_air                                   = opfor_air                                 select {[_x] call KPLIB_fnc_checkClass};

// Resistance
KP_liberation_guerilla_units                = KP_liberation_guerilla_units              select {[_x] call KPLIB_fnc_checkClass};
KP_liberation_guerilla_vehicles             = KP_liberation_guerilla_vehicles           select {[_x] call KPLIB_fnc_checkClass};

// Civilians
civilians                                   = civilians                                 select {[_x] call KPLIB_fnc_checkClass};
civilian_vehicles                           = civilian_vehicles                         select {[_x] call KPLIB_fnc_checkClass};

// Misc
KPLIB_transportConfigs                      = KPLIB_transportConfigs                    select {[_x select 0] call KPLIB_fnc_checkClass};
KPLIB_aiResupplySources                     = KPLIB_aiResupplySources                   select {[_x] call KPLIB_fnc_checkClass};

/*
    Fetch arrays with only classnames from the blufor preset build arrays
    Beware that all classnames are converted to lowercase. Important for e.g. `in` checks, as it's case-sensitive.
*/
KPLIB_b_infantry_classes                    = infantry_units                            apply {toLower (_x select 0)};
KPLIB_b_light_classes                       = light_vehicles                            apply {toLower (_x select 0)};
KPLIB_b_recon_classes                       = recon_vehicles                            apply {toLower (_x select 0)};
KPLIB_b_medical_classes                     = medical_vehicles                          apply {toLower (_x select 0)};
KPLIB_b_groundlogi_classes                  = groundlogi_vehicles                       apply {toLower (_x select 0)};
KPLIB_b_artillery_classes                   = artillery_vehicles                        apply {toLower (_x select 0)};
KPLIB_b_atgm_classes                        = atgm_vehicles                             apply {toLower (_x select 0)};
KPLIB_b_aa_classes                          = aa_vehicles                               apply {toLower (_x select 0)};
KPLIB_b_heavy_classes                       = heavy_vehicles                            apply {toLower (_x select 0)};
KPLIB_b_rotarylogi_classes                  = rotarylogi_vehicles                       apply {toLower (_x select 0)};
KPLIB_b_rotarycas_classes                   = rotarycas_vehicles                        apply {toLower (_x select 0)};
KPLIB_b_fixedwing_classes                   = fixedwing_vehicles                        apply {toLower (_x select 0)};
KPLIB_b_air_classes                         = KPLIB_b_rotarylogi_classes + KPLIB_b_rotarycas_classes + KPLIB_b_fixedwing_classes;
KPLIB_b_static_classes                      = static_vehicles                           apply {toLower (_x select 0)};
KPLIB_b_buildings_classes                   = buildings                                 apply {toLower (_x select 0)};
KPLIB_b_support_classes                     = support_vehicles                          apply {toLower (_x select 0)};
KPLIB_transport_classes                     = KPLIB_transportConfigs                    apply {toLower (_x select 0)};

KPLIB_b_infantry_classes append (blufor_squad_inf_light + blufor_squad_inf + blufor_squad_at + blufor_squad_aa + blufor_squad_recon + blufor_squad_para);
KPLIB_b_infantry_classes                    = KPLIB_b_infantry_classes                  apply {toLower _x};
KPLIB_b_infantry_classes                    = KPLIB_b_infantry_classes                  arrayIntersect KPLIB_b_infantry_classes;

/*
    Opfor squad compositions
*/
KPLIB_o_squadStd    = [opfor_squad_leader, opfor_machinegunner, opfor_rifleman, opfor_rifleman, opfor_rifleman, opfor_rpg];
KPLIB_o_squadInf    = [opfor_squad_leader, opfor_machinegunner, opfor_heavygunner, opfor_grenadier, opfor_rpg, opfor_rpg];
KPLIB_o_squadTank   = [opfor_squad_leader, opfor_machinegunner, opfor_grenadier, opfor_rpg];
KPLIB_o_squadAir    = [opfor_para_squad_leader, opfor_para_team_leader, opfor_para_rpg, opfor_para_rpg, opfor_para_rifleman, opfor_para_grenadier, opfor_para_rifleman, opfor_para_rifleman, opfor_para_machinegunner ];

/*
    Liberation specific collections
*/

private _airBuildList = rotarylogi_vehicles + rotarycas_vehicles + fixedwing_vehicles;

// Combines recon vehicles into light vehicles list for building
KPLIB_buildList         = [[], infantry_units, light_vehicles + recon_vehicles + medical_vehicles, heavy_vehicles, _airBuildList, static_vehicles + artillery_vehicles + atgm_vehicles + aa_vehicles, buildings, support_vehicles + groundlogi_vehicles, KPLIB_b_allSquads];
KPLIB_crates            = [KP_liberation_supply_crate, KP_liberation_ammo_crate, KP_liberation_fuel_crate];
KPLIB_airSlots          = [KP_liberation_heli_slot_building, KP_liberation_plane_slot_building];
KPLIB_storageBuildings  = [KP_liberation_small_storage_building, KP_liberation_large_storage_building];
KPLIB_upgradeBuildings  = [KP_liberation_recycle_building, KP_liberation_air_vehicle_building, KP_liberation_heli_slot_building, KP_liberation_plane_slot_building];
KPLIB_aiResupplySources append [Respawn_truck_typename, huron_typename, Arsenal_typename];

KPLIB_crates            = KPLIB_crates              apply {toLower _x};
KPLIB_airSlots          = KPLIB_airSlots            apply {toLower _x};
KPLIB_storageBuildings  = KPLIB_storageBuildings    apply {toLower _x};
KPLIB_upgradeBuildings  = KPLIB_upgradeBuildings    apply {toLower _x};
KPLIB_aiResupplySources = KPLIB_aiResupplySources   apply {toLower _x};

/*
    Classname collections
*/
// All land vehicle classnames
KPLIB_allLandVeh_classes = [[], [huron_typename]] select (huron_typename isKindOf "Air");
{
    KPLIB_allLandVeh_classes append _x;
} forEach [
    militia_vehicles apply {toLower _x},
    opfor_vehicles apply {toLower _x},
    opfor_vehicles_low_intensity apply {toLower _x},
    opfor_battlegroup_vehicles apply {toLower _x},
    opfor_battlegroup_vehicles_low_intensity apply {toLower _x},
    opfor_troup_transports apply {toLower _x},
    KPLIB_b_light_classes,
    KPLIB_b_recon_classes,
    KPLIB_b_medical_classes,
    KPLIB_b_groundlogi_classes,
    KPLIB_b_artillery_classes,
    KPLIB_b_atgm_classes,
    KPLIB_b_aa_classes,
    KPLIB_b_heavy_classes,
    KPLIB_b_support_classes select {_x isKindOf "Car" || _x isKindOf "Tank"}
];
KPLIB_allLandVeh_classes = KPLIB_allLandVeh_classes arrayIntersect KPLIB_allLandVeh_classes;

// All air vehicle classnames
KPLIB_allAirVeh_classes = [[], [huron_typename]] select (huron_typename isKindOf "Air");
{
    KPLIB_allAirVeh_classes append _x;
} forEach [opfor_choppers apply {toLower _x}, opfor_air apply {toLower _x}, KPLIB_b_air_classes, KPLIB_b_support_classes select {_x isKindOf "Air"}];

// All blufor vehicle (land and air) classnames
KPLIB_b_allVeh_classes = [];
{
    KPLIB_b_allVeh_classes append _x;
} forEach [KPLIB_b_light_classes, KPLIB_b_recon_classes, KPLIB_b_medical_classes, KPLIB_b_groundlogi_classes, KPLIB_b_artillery_classes, KPLIB_b_atgm_classes, KPLIB_b_aa_classes, KPLIB_b_heavy_classes, KPLIB_b_air_classes, KPLIB_b_static_classes, KPLIB_b_support_classes];

// All opfor vehicle (land and air) classnames
KPLIB_o_allVeh_classes  = [];
{
    KPLIB_o_allVeh_classes append _x;
} forEach [
    militia_vehicles,
    opfor_vehicles,
    opfor_vehicles_low_intensity,
    opfor_battlegroup_vehicles,
    opfor_battlegroup_vehicles_low_intensity,
    opfor_troup_transports,
    opfor_choppers,
    opfor_air
];
KPLIB_o_allVeh_classes = KPLIB_o_allVeh_classes apply {toLower _x};
KPLIB_o_allVeh_classes = KPLIB_o_allVeh_classes arrayIntersect KPLIB_o_allVeh_classes;

// All regular opfor soldier classnames
KPLIB_o_inf_classes = [opfor_sentry, opfor_aat, opfor_rifleman, opfor_grenadier, opfor_squad_leader, opfor_team_leader, opfor_marksman, opfor_machinegunner, opfor_heavygunner, opfor_medic, opfor_rpg, opfor_at, opfor_aa, opfor_officer, opfor_sharpshooter, opfor_sniper,opfor_engineer,opfor_paratrooper,opfor_rto, opfor_para_squad_leader, opfor_para_team_leader, opfor_para_rifleman, opfor_para_rpg, opfor_para_grenadier, opfor_para_machinegunner, opfor_para_heavygunner, opfor_para_marksman, opfor_para_at, opfor_para_medic, opfor_para_rto];
KPLIB_o_inf_classes = KPLIB_o_inf_classes apply {toLower _x};

/*
    Vehicle type permission arrays
*/
KPLIB_typeLightClasses = +KPLIB_b_light_classes;
KPLIB_typeReconClasses = +KPLIB_b_recon_classes;
KPLIB_typeMedicalClasses = +KPLIB_b_medical_classes;
KPLIB_typeGroundLogiClasses = +KPLIB_b_groundlogi_classes;
KPLIB_typeArtilleryClasses = +KPLIB_b_artillery_classes;
KPLIB_typeATGMClasses = +KPLIB_b_atgm_classes;
KPLIB_typeAAClasses = +KPLIB_b_aa_classes;
KPLIB_typeHeavyClasses = +KPLIB_b_heavy_classes;
KPLIB_typeRotaryLogiClasses = +KPLIB_b_rotarylogi_classes;
KPLIB_typeRotaryCasClasses = +(KPLIB_b_rotarycas_classes + [""]);
KPLIB_typeFixedWingClasses = +KPLIB_b_fixedwing_classes;
{
    switch (true) do {
        case (_x isKindOf "Tank"):  {KPLIB_typeHeavyClasses      pushBack _x};
        case (_x isKindOf "Air"):   {KPLIB_typeRotaryLogiClasses pushBack _x};
        default                     {KPLIB_typeLightClasses      pushBack _x};
    };
} forEach (KPLIB_b_support_classes + [toLower huron_typename]);

// Military alphabet used for FOBs and convois
military_alphabet = ["Able", "Baker", "Charlie", "Dog", "Easy", "Fox", "Golf", "Hotel", "India", "Juliet", "Kilo", "Lima", "Mike", "November", "Oscar", "Papa", "Quebec", "Romeo", "Sierra", "Tango", "Uniform", "Victor", "Whiskey", "X-Ray", "Yankee", "Zulu"];

// Misc variables
markers_reset = [99999,99999,0];
zeropos = [0,0,0];
KPLIB_sarWreck = "SPE_P47_MRWreck";
KPLIB_sarFire = "test_EmptyObjectForFireBig";

KPLIB_initPresets = true;

if (isServer) then {[format ["----- Preset initialization finished. Time needed: %1 seconds -----", diag_ticktime - _start], "PRESETS"] call KPLIB_fnc_log;};
