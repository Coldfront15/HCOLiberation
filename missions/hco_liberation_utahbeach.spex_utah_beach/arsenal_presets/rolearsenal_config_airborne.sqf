// HEY IF YOU NEED TO CHANGE FACTIONS, DO SO HERE:
// KC_Liberation_Master_Framework\arsenal_presets\rolearsenal.sqf

// This gear is selected from when someone respawns in onPlayerRespawn.sqf
RA_StartingHeadwear = [
	// hat
	"Garrison_cap_AB"
];
RA_StartingGoggles = [
	// GOGGLES
	"G_Nomex",
	"G_Scharf",
	"G_Scharf_sutra", 
	"G_SPE_Ful_Vue",
	"G_SPE_Ful_Vue_Reinforced",
	"G_SPE_Sunglasses_US_Red",
	"G_SPE_Sunglasses_US_Yellow"
];
RA_StartingUniforms = [
	// UNIFORMS
	"U_SPE_US_AB_Uniform_M42_padded_CC2"
];

RA_StartingItems = [
	// MISC
	"ItemMap",
	"SPE_US_ItemWatch",
	"SPE_US_ItemCompass"

];
RA_StartingLoadout = RA_StartingHeadwear + RA_StartingGoggles + RA_StartingUniforms + RA_StartingItems;

RA_DefaultGearAmmo = [
	// AMMO
	"SPE_7Rnd_45ACP_1911",
	"spe_m1918a2_bar_bipod", 
	"SPE_M1918A2_BAR_Handle", 
	"SPE_ACC_M1_Bayo"
];
RA_DefaultGear = [
	// WEAPONS
	"SPE_M1911",
	// VEST
	"V_SPE_US_Vest_AB_Garand", 
	// HEADGEAR
	"Garrison_cap_AB",
	// UNIFORM
	"U_SPE_US_AB_Uniform_M42_padded_CC2",
	// BACKPACK
    "B_SPE_US_T5_M7",
	"B_SPE_US_T5_erla",
	"B_SPE_US_T5_M6",
	// MISC
	"ItemMap",
	"SPE_US_FL_TL122",
	"SPE_US_ItemWatch",
	"SPE_US_ItemCompass",
	// GRENADES
	"SPE_US_Mk_3", 
	"SPE_US_Mk_2", 
	"SPE_US_Mk_1",
	"SPEX_CW_No82_Heavy",
	"SPEX_CW_No75_Grenade", 
	"SPE_US_AN_M14", 
	"SPE_US_M18", 
	"SPE_US_M15", 
	"SPE_US_M18_Green",
    "SPE_US_M18_Red", 
	"SPE_US_M18_Violet", 
	"SPE_US_M18_Yellow",
	"SPE_Type_A1_Lamp_Blue",
	"SPE_Type_A1_Lamp_Green",
	"SPE_Type_A1_Lamp_Orange",
	"SPE_Type_A1_Lamp_Red",
	"SPE_Type_A1_Lamp_White",
	"cigs_cigars_cigarbox_5",
	"cigs_lucky_strike_cigpack",
	"cigs_lighter",
	"cigs_matches",
	// ACE
	"ACE_bodyBag_white",
	"ACE_bodyBag_blue",
	"ACE_bodyBag",
	"ACE_PlottingBoard",
	"ACE_Banana",
	"ACE_Humanitarian_Ration",
	"wdc_flastlight_tl22",
	"ACE_MapTools",   
	"ACE_RangeCard", 
	"ACE_EarPlugs",
	"ACE_ConcertinaWireCoil",  
	"ACE_SpareBarrel", 
	"ACE_Sandbag_empty", 
	"ACE_SpraypaintBlack", 
	"ACE_SpraypaintGreen", 
	"ACE_SpraypaintRed", 
	"ACE_SpraypaintBlue", 
	"wdc_EntrenchingTool_m28",
	"wdc_EntrenchingTool_m43",  
	"wdc_atropineSyrette", 
	"wdc_carlisleLarge", 
	"wdc_triangleBandage", 
	"wdc_carlisleSmall", 
	"wdc_bloodPlasmaIV_500", 
	"wdc_bloodPlasmaIV_250", 
	"ACE_bodyBag",  
	"wdc_morphineSyrette", 
	"wdc_gauzeBandage", 
	"wdc_Sulfa",
	"wdc_US_Tourniquet", 
	"ACE_rope12", 
	"ACE_rope15", 
	"ACE_rope18", 
	"ACE_rope27", 
	"ACE_rope36", 
	"wdc_US_Splint",
	"simc_canteen_m1910_weap",
	"simc_canteen_m1910_Empty_weap",
	"simc_canteen_m1910_Half_weap",
	"simc_canteen_m1943_weap",
	"simc_canteen_m1943_Empty_weap",
	"simc_canteen_m1943_Half_weap",
	"simc_krat_e_b_weap",
	"simc_krat_l_b_weap",
	"simc_krat_e_d_weap",
	"simc_krat_l_d_weap",
	"simc_krat_e_s_weap",
	"simc_krat_l_s_weap",
	"ACE_CableTie",
	"ace_marker_flags_red",
	"ACE_HandFlare_Green",
	"ACE_HandFlare_Red",
	"ACE_HandFlare_White",
	"ACE_HandFlare_Yellow",
	"ace_flags_red",
	"ace_flags_yellow",
	"ace_flags_green",
	"ace_flags_blue"

] + RA_StartingLoadout + RA_DefaultGearAmmo;

RA_TeamLeaderVests = [
	// VESTS
	"V_SPE_US_Vest_AB_Garand", 
	"V_SPE_US_Vest_AB_Garand_gp", 
	"V_SPE_US_Vest_AB_Garand_nco", 
	"V_SPE_US_Vest_AB_padded_Garand_45", 
	"V_SPE_US_Vest_AB_Garand_45",
	"V_SPE_US_Vest_AB_Grenadier", 
	"V_SPE_US_Vest_AB_padded_Garand_gp",
	"V_SPE_US_Vest_AB_padded_Garand_nco",
	"V_SPE_US_Vest_AB_padded_Grenadier", 
	"V_SPE_US_Vest_AB_padded_2", 
	"V_SPE_US_Vest_AB_padded_nco", 
	"V_SPE_US_Vest_AB_padded_M1919", 
	"V_SPE_US_Vest_AB_padded_mk2", 
	"V_SPE_US_Vest_AB_padded_1",
	"V_SPE_US_Vest_AB_padded_thompson",
	"V_SPE_US_Vest_AB_early_2",
	"V_SPE_US_Vest_AB_late_2", 
	"V_SPE_US_Vest_AB_late_nco", 
	"V_SPE_US_Vest_AB_late_M1919",
	"V_SPE_US_Vest_AB_late_mk2", 
	"V_SPE_US_Vest_AB_late_1", 
	"V_SPE_US_Vest_AB_late_thompson", 
	"V_SPE_US_Vest_AB_early_mk2",
	"V_SPE_US_Vest_AB_early_1", 
	"V_SPE_US_Vest_AB_early_thompson"
	
];
RA_BasicInfVests = [
	// VESTS
	"V_SPE_US_Vest_AB_Garand", 
	"V_SPE_US_Vest_AB_Garand_gp", 
	"V_SPE_US_Vest_AB_padded_Garand_45", 
	"V_SPE_US_Vest_AB_Garand_45",
	"V_SPE_US_Vest_AB_Grenadier", 
	"V_SPE_US_Vest_AB_padded_Garand_gp",
	"V_SPE_US_Vest_AB_padded_Grenadier", 
	"V_SPE_US_Vest_AB_padded_2", 
	"V_SPE_US_Vest_AB_padded_M1919", 
	"V_SPE_US_Vest_AB_padded_mk2", 
	"V_SPE_US_Vest_AB_padded_1",
	"V_SPE_US_Vest_AB_early_2",
	"V_SPE_US_Vest_AB_late_2", 
	"V_SPE_US_Vest_AB_late_M1919",
	"V_SPE_US_Vest_AB_late_mk2", 
	"V_SPE_US_Vest_AB_late_1", 
	"V_SPE_US_Vest_AB_early_mk2",
	"V_SPE_US_Vest_AB_early_1",
	"V_SPE_US_Vest_AB_early_45",
	"V_SPE_US_Vest_AB_early_thompson_45_bag",
	"V_SPE_US_Vest_AB_late_45", 
	"V_SPE_US_Vest_AB_late_thompson_45",
	"V_SPE_US_Vest_AB_late_45_map"
];
RA_LongRangeBackpacks = [
	// BACKPACKS
	"B_SPE_US_Radio",
	"B_SPE_US_Radio_alt",
	"B_SPE_US_Radio_packboard_light",
	"B_SPE_US_Radio_packboard",
	"ACRE_VHF30108",
	//ACRE2 
	"ACRE_PRC77"

];
RA_InfBackpacks = [
	// BACKPACKS
	"B_SPE_US_M36_Bandoleer_duplet", 
	"B_SPE_US_M36", 
	"B_SPE_US_M36_Bandoleer_mk2", 
	"B_SPE_US_M36_roll_2", 
	"B_SPE_US_M36_roll", 
	"B_SPE_US_M36_m7",
	"B_SPE_US_M36_m7_Bandoleer",  
	"B_SPE_US_M36_m6",  
	"B_SPE_US_M36_m6_Bandoleer",
	"B_SPE_US_M36_Rocketbag",
	"B_SPE_US_M36_Rope",  
	"B_SPE_US_MGbag",  
	"B_SPE_US_Suspender_band",  
	"B_SPE_US_Suspender_band_left",  
	"B_SPE_US_Suspender_RocketBag", 
	"B_SPE_US_Suspender"

];

RA_InfHelmets = [
	// HEADGEAR add this to dertime role so everyone gets helmets you want
	// Headgear
	//
	"H_SPE_US_AB_Helmet_502_Net", 
	"H_SPE_US_AB_Helmet_502_CO_Net",
	"H_SPE_US_AB_Helmet_502_CO_Net_ns", 
	"H_SPE_US_AB_Helmet_502_Net_ns",
	"H_SPE_US_AB_Helmet_502_Net_up",
	"H_SPE_US_AB_Helmet_502_NCO_Net",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns", 
	"H_SPE_US_AB_Helmet_502_Net_os", 
	"H_SPE_US_AB_Helmet_502_polar",
	"H_SPE_US_AB_Helmet_502_polar_ns", 
	"H_SPE_US_AB_Helmet_502_polar_net", 
	"H_SPE_US_AB_Helmet_502_polar_net_ns",
	"H_SPE_US_AB_Helmet_502_polar_net_os", 
	"H_SPE_US_AB_Helmet_502_polar_os",
	"H_SPE_US_AB_Helmet_502_polar_Scrim",
	"H_SPE_US_AB_Helmet_502_polar_Scrim_ns",
	"H_SPE_US_AB_Helmet_502_polar_Scrim_os",
	"H_SPE_US_AB_Helmet_502_Scrim",
	"H_SPE_US_AB_Helmet_502_CO_Scrim",
	"H_SPE_US_AB_Helmet_502_CO_Scrim_ns",
	"H_SPE_US_AB_Helmet_502_Scrim_ns",
	"H_SPE_US_AB_Helmet_502_Scrim_up",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns",
	"H_SPE_US_AB_Helmet_502_Scrim_os",

	"H_SPE_US_AB_Helmet_502_ShrimpNet", 
	"H_SPE_US_AB_Helmet_502_CO_ShrimpNet",
	"H_SPE_US_AB_Helmet_502_CO_Net_ns", 
	"H_SPE_US_AB_Helmet_502_CO_ShrimpNet_ns",
	"H_SPE_US_AB_Helmet_502_ShrimpNet_ns",
	"H_SPE_US_AB_Helmet_502_ShrimpNet_up",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns",
	"H_SPE_US_AB_Helmet_502_ShrimpNet_os", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_archer", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_archer",
	"H_SPE_US_AB_Helmet_502_NCO_archer", 
	"H_SPE_US_AB_Helmet_502_NCO_ns_archer",
	"H_SPE_US_AB_Helmet_502_NCO_Net_archer",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_archer",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_archer",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_archer",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_briel",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_briel",
	"H_SPE_US_AB_Helmet_502_NCO_briel",
	"H_SPE_US_AB_Helmet_502_NCO_ns_briel",
	"H_SPE_US_AB_Helmet_502_NCO_Net_briel",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_briel",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_briel",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_briel", 
	"H_SPE_US_AB_Helmet_502_CO_ShrimpNet_cooper",
	"H_SPE_US_AB_Helmet_502_CO_ShrimpNet_ns_cooper", 
	"H_SPE_US_AB_Helmet_502_CO_cooper",
	"H_SPE_US_AB_Helmet_502_CO_ns_cooper",
	"H_SPE_US_AB_Helmet_502_CO_Net_cooper",
	"H_SPE_US_AB_Helmet_502_CO_Net_ns_cooper", 
	"H_SPE_US_AB_Helmet_502_CO_Scrim_cooper", 
	"H_SPE_US_AB_Helmet_502_CO_Scrim_ns_cooper",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_hardy", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_hardy", 
	"H_SPE_US_AB_Helmet_502_NCO_hardy",
	"H_SPE_US_AB_Helmet_502_NCO_ns_hardy", 
	"H_SPE_US_AB_Helmet_502_NCO_Net_hardy",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_hardy",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_hardy",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_hardy",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_huot",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_huot",
	"H_SPE_US_AB_Helmet_502_NCO_huot",
	"H_SPE_US_AB_Helmet_502_NCO_ns_huot",
	"H_SPE_US_AB_Helmet_502_NCO_Net_huot",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_huot",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_huot",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_huot",

	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ledford", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_ledford",
	"H_SPE_US_AB_Helmet_502_NCO_ledford", 
	"H_SPE_US_AB_Helmet_502_NCO_ns_ledford",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ledford",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_ledford",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ledford", 
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_ledford", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_mantle", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_mantle", 
	"H_SPE_US_AB_Helmet_502_NCO_mantle",
	"H_SPE_US_AB_Helmet_502_NCO_ns_mantle", 
	"H_SPE_US_AB_Helmet_502_NCO_Net_mantle",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_mantle",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_mantle",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_mantle",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_marshall",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_marshall",
	"H_SPE_US_AB_Helmet_502_NCO_marshall",
	"H_SPE_US_AB_Helmet_502_NCO_ns_marshall",
	"H_SPE_US_AB_Helmet_502_NCO_Net_marshall",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_marshall",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_marshall",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_marshall",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_molohon", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_molohon",
	"H_SPE_US_AB_Helmet_502_NCO_molohon", 
	"H_SPE_US_AB_Helmet_502_NCO_ns_molohon",
	"H_SPE_US_AB_Helmet_502_NCO_Net_molohon",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_molohon",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_molohon", 
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_molohon", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_mordica",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_mordica", 
	"H_SPE_US_AB_Helmet_502_NCO_mordica", 
	"H_SPE_US_AB_Helmet_502_NCO_ns_mordica",
	"H_SPE_US_AB_Helmet_502_NCO_Net_mordica", 
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_mordica",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_mordica",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_mordica",
	"H_SPE_US_AB_Helmet_502_polar_Shrimpnet",
	"H_SPE_US_AB_Helmet_502_polar_Shrimpnet_ns",
	"H_SPE_US_AB_Helmet_502_polar_Shrimpnet_os",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_randazzo",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_randazzo",
	"H_SPE_US_AB_Helmet_502_NCO_randazzo",
	"H_SPE_US_AB_Helmet_502_NCO_ns_randazzo",
	"H_SPE_US_AB_Helmet_502_NCO_Net_randazzo",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_randazzo",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_randazzo", 
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_randazzo",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_robinson", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_robinson",
	"H_SPE_US_AB_Helmet_502_NCO_robinson",
	"H_SPE_US_AB_Helmet_502_NCO_Net_robinson",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_robinson", 
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_robinson", 
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_robinson",
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_smith", 
	"H_SPE_US_AB_Helmet_502_NCO_ShrimpNet_ns_smith", 
	"H_SPE_US_AB_Helmet_502_NCO_smith",
	"H_SPE_US_AB_Helmet_502_NCO_ns_smith", 
	"H_SPE_US_AB_Helmet_502_NCO_Net_smith",
	"H_SPE_US_AB_Helmet_502_NCO_Net_ns_smith",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_smith",
	"H_SPE_US_AB_Helmet_502_NCO_Scrim_ns_smith",

	"H_SPE_US_AB_Helmet_321", 
	"H_SPE_US_AB_Helmet_321_ShrimpNet",
	"H_SPE_US_AB_Helmet_321_CO_ShrimpNet", 
	"H_SPE_US_AB_Helmet_321_CO_ShrimpNet_ns",
	"H_SPE_US_AB_Helmet_321_ShrimpNet_ns",
	"H_SPE_US_AB_Helmet_321_ShrimpNet_up",
	"H_SPE_US_AB_Helmet_321_NCO_ShrimpNet", 
	"H_SPE_US_AB_Helmet_321_NCO_ShrimpNet_ns", 
	"H_SPE_US_AB_Helmet_321_ShrimpNet_os",
	"H_SPE_US_AB_Helmet_321_NCO_ShrimpNet_briel", 
	"H_SPE_US_AB_Helmet_321_NCO_ShrimpNet_ns_briel", 
	"H_SPE_US_AB_Helmet_321_NCO_briel",
	"H_SPE_US_AB_Helmet_321_NCO_ns_briel", 
	"H_SPE_US_AB_Helmet_321_NCO_Net_briel",
	"H_SPE_US_AB_Helmet_321_NCO_Net_ns_briel",
	"H_SPE_US_AB_Helmet_321_NCO_Scrim_briel",
	"H_SPE_US_AB_Helmet_321_NCO_Scrim_ns_briel",
	"H_SPE_US_AB_Helmet_321_CO",
	"H_SPE_US_AB_Helmet_321_CO_ns",
	"H_SPE_US_AB_Helmet_321_ns",
	"H_SPE_US_AB_Helmet_321_NCO_ShrimpNet_molohon",
	"H_SPE_US_AB_Helmet_321_NCO_ShrimpNet_ns_molohon",
	"H_SPE_US_AB_Helmet_321_NCO_molohon",
	"H_SPE_US_AB_Helmet_321_NCO_ns_molohon",
	"H_SPE_US_AB_Helmet_321_NCO_Net_molohon",
	"H_SPE_US_AB_Helmet_321_NCO_Net_ns_molohon", 
	"H_SPE_US_AB_Helmet_321_NCO_Scrim_molohon",
	"H_SPE_US_AB_Helmet_321_NCO_Scrim_ns_molohon", 
	"H_SPE_US_AB_Helmet_321_NCO_ShrimpNet_mordica",
	"H_SPE_US_AB_Helmet_321_NCO_ShrimpNet_ns_mordica",
	"H_SPE_US_AB_Helmet_321_NCO_mordica",
	"H_SPE_US_AB_Helmet_321_NCO_ns_mordica", 
	"H_SPE_US_AB_Helmet_321_NCO_Net_mordica", 
	"H_SPE_US_AB_Helmet_321_NCO_Net_ns_mordica",
	"H_SPE_US_AB_Helmet_321_NCO_Scrim_mordica", 
	"H_SPE_US_AB_Helmet_321_NCO_Scrim_ns_mordica", 
	"H_SPE_US_AB_Helmet_321_NCO",
	"H_SPE_US_AB_Helmet_321_NCO_ns", 
	"H_SPE_US_AB_Helmet_321_CO_Net",
	"H_SPE_US_AB_Helmet_321_CO_Net_ns",
	"H_SPE_US_AB_Helmet_321_NCO_Net",
	"H_SPE_US_AB_Helmet_321_NCO_Net_ns",
	"H_SPE_US_AB_Helmet_321_polar",
	"H_SPE_US_AB_Helmet_321_polar_Shrimpnet",
	"H_SPE_US_AB_Helmet_321_polar_Shrimpnet_ns",
	"H_SPE_US_AB_Helmet_321_polar_Shrimpnet_os",
	"H_SPE_US_AB_Helmet_321_polar_ns",
	"H_SPE_US_AB_Helmet_321_polar_net",
	"H_SPE_US_AB_Helmet_321_polar_net_ns",
	"H_SPE_US_AB_Helmet_321_polar_net_os",
	"H_SPE_US_AB_Helmet_321_polar_os",
	"H_SPE_US_AB_Helmet_321_polar_Scrim",
	"H_SPE_US_AB_Helmet_321_polar_Scrim_ns",
	"H_SPE_US_AB_Helmet_321_polar_Scrim_os",
	"H_SPE_US_AB_Helmet_321_os",
	"H_SPE_US_AB_Helmet_321_Scrim", 
	"H_SPE_US_AB_Helmet_321_CO_Scrim",
	"H_SPE_US_AB_Helmet_321_CO_Scrim_ns", 
	"H_SPE_US_AB_Helmet_321_Scrim_ns",
	"H_SPE_US_AB_Helmet_321_Scrim_up",
	"H_SPE_US_AB_Helmet_321_NCO_Scrim",
	"H_SPE_US_AB_Helmet_321_NCO_Scrim_ns", 
	"H_SPE_US_AB_Helmet_321_Scrim_os", 
	"H_SPE_US_AB_Helmet_321_NCO_ShrimpNet_smith",
	"H_SPE_US_AB_Helmet_321_NCO_Net_smith", 
	"H_SPE_US_AB_Helmet_321_NCO_ns_smith", 
	"H_SPE_US_AB_Helmet_321_NCO_Net_smith",
	"H_SPE_US_AB_Helmet_321_NCO_Net_ns_smith", 
	"H_SPE_US_AB_Helmet_321_NCO_Scrim_smith",
	"H_SPE_US_AB_Helmet_321_NCO_Scrim_ns_smith",
	"H_SPE_US_jeep_cap",
	"H_SPE_US_jeep_cap_polar",
	"H_SPE_US_jeep_cap_rear",
	"LIB_GER_Gloves4",
	"LIB_GER_Gloves5",
	"LIB_GER_Gloves2",
	"LIB_GER_Gloves1",
	"LIB_GER_Gloves3",
	"G_LIB_Watch2",
	"G_LIB_Watch1",
	"G_LIB_GER_Gloves3",
	"G_LIB_GER_Gloves1",
	"G_LIB_GER_Gloves2",
	"G_LIB_GER_Gloves5",
	"G_LIB_GER_Gloves4"
];
RA_InfGear = [
	// UNIFORMS

	"U_SPE_US_AB_Uniform_M42_padded_CC2",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_glove",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_glove_knife",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_knife",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_506",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_506_glove",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_506_glove_knife",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_506_glove_pfak",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_roll",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_roll_knife",
	"U_SPE_US_AB_Uniform_M42_padded_gas",
	"U_SPE_US_AB_Uniform_M42_padded_gas_glove",
	"U_SPE_US_AB_Uniform_M42_padded_gas_glove_knife",
	"U_SPE_US_AB_Uniform_M42_padded_gas_knife",
	"U_SPE_US_AB_Uniform_M42_padded_gas_506",
	"U_SPE_US_AB_Uniform_M42_padded_gas_506_glove",
	"U_SPE_US_AB_Uniform_M42_padded_gas_506_glove_knife",
	"U_SPE_US_AB_Uniform_M42_padded_gas_506_knife"

] + RA_InfHelmets;

RA_InfWeapsAmmo = [
    // AMMO
	"JPSP_1Rnd_60mm_M10",
	"JPSP_1Rnd_60mm_T31",
	"SPEX_1Rnd_60mmWP_M2_M302",
	"SPEX_1Rnd_60mmHE_M2_M49A2",
	"SPEX_1Rnd_60mmIllu_M2_M83",
	"SPE_1Rnd_60mm_M6A3",
	"SPE_1Rnd_60mm_M6",
	"SPE_8Rnd_762x63",
	"SPE_8Rnd_762x63_M1",
	"SPE_8Rnd_762x63_t",
	"SPE_8Rnd_762x63_M2_AP",
	"SPE_5Rnd_762x63",
	"SPE_5Rnd_762x63_M1",
	"SPE_5Rnd_762x63_t",
	"SPE_5Rnd_762x63_M2_AP",
	"SPE_100Rnd_762x63_M2_AP",
	"SPE_100Rnd_762x63_M1",
	"SPE_100Rnd_762x63",
	"SPE_50Rnd_762x63",
	"SPE_50Rnd_762x63_M1",
	"SPE_50Rnd_762x63_M2_AP",
	"SPE_20Rnd_762x63",
	"SPE_20Rnd_762x63_M1",
	"SPE_20Rnd_762x63_M2_AP",
	"SPE_15Rnd_762x33", 
	"SPE_15Rnd_762x33_t",
	"SPE_30Rnd_Thompson_45ACP",
	"SPE_30Rnd_Thompson_45ACP_t", 
	"SPE_20Rnd_Thompson_45ACP", 
	"SPE_20Rnd_Thompson_45ACP_t",
	"SPE_30Rnd_M3_GreaseGun_45ACP", 
	"SPE_30Rnd_M3_GreaseGun_45ACP_t",
	"LIB_1Rnd_flare_white", 
	"LIB_1Rnd_flare_red", 
	"LIB_1Rnd_flare_green", 
	"LIB_1Rnd_flare_yellow",
	"SPE_1Rnd_G_Mk2", 
	"SPE_1Rnd_G_M9A1",
	"SPE_1Rnd_G_M2_AN_M14", 
	"SPE_1Rnd_G_M2_ANM8", 
	"SPE_1Rnd_G_M2_M18_Red", 
	"SPE_1Rnd_G_M2_M18_Green", 
	"SPE_1Rnd_G_M2_M18_Yellow", 
	"SPE_1Rnd_G_M2_M18_Violet",
	"SPE_1Rnd_G_M17A1", 
	"SPE_1Rnd_G_M19A1", 
	"SPE_1Rnd_G_M21A1", 
	"SPE_1Rnd_G_M51A1",
	"SPE_5Rnd_12x70_No4_Buck",
	"SPE_5Rnd_12x70_Slug",
	"SPE_5Rnd_12x70_Pellets",
	"SPE_Carbine_pouch",
	"SPE_Carbine_pouch_od7",
	"SPE_ACC_M1905_Bayo",
	"SPE_ACC_M1917_Bayo"

];

RA_InfWeaps = [

	"SPE_M1_Garand",
	"ff_us_m1_garand",
	"ff_sling_canva",
	"ff_us_m1_garand_laat",
	"ff_sling_1907",
	"SPE_M1_Carbine",
	"SPE_M1903A3_Springfield",
	"ff_us_m1903a0_Springfield",
	"SPE_M1A1_Carbine",
	"SPE_M1A1_Thompson"

] + RA_InfWeapsAmmo;
// --------------------------------- Goblin ---------------------------------


// Grenadier weapons/ammo are used in a few other roles so define them first
RA_GrenadierAmmo = [
	// AMMO
	"SPE_8Rnd_762x63",
	"SPE_8Rnd_762x63_M1",
	"SPE_8Rnd_762x63_t",
	"SPE_8Rnd_762x63_M2_AP",
	"SPE_5Rnd_762x63",
	"SPE_5Rnd_762x63_M1",
	"SPE_5Rnd_762x63_t",
	"SPE_5Rnd_762x63_M2_AP",
	"SPE_15Rnd_762x33", 
	"SPE_15Rnd_762x33_t",
	"SPE_1Rnd_G_Mk2", 
	"SPE_1Rnd_G_M9A1",
	"SPE_1Rnd_G_M2_AN_M14", 
	"SPE_1Rnd_G_M2_ANM8", 
	"SPE_1Rnd_G_M2_M18_Red", 
	"SPE_1Rnd_G_M2_M18_Green", 
	"SPE_1Rnd_G_M2_M18_Yellow", 
	"SPE_1Rnd_G_M2_M18_Violet",
	"SPE_1Rnd_G_M17A1", 
	"SPE_1Rnd_G_M19A1", 
	"SPE_1Rnd_G_M21A1", 
	"SPE_1Rnd_G_M51A1",
	"SPE_5Rnd_12x70_No4_Buck",
	"SPE_5Rnd_12x70_Slug",
	"SPE_5Rnd_12x70_Pellets",
	"SPE_Carbine_pouch",
	"SPE_Carbine_pouch_od7",
	"SPE_ACC_M1905_Bayo",
	"SPE_ACC_M1917_Bayo"
];
RA_GrenadierWeapons = [
	// WEAPONS
	"SPE_M1_Garand",
	"ff_us_m1_garand",
	"ff_sling_canva",
	"ff_us_m1_garand_laat",
	"ff_sling_1907",
	"SPE_M1_Carbine",
	"SPE_M1903A3_Springfield",
	"ff_us_m1903a0_Springfield",
	"SPE_ACC_GL_M8",
	"SPE_ACC_GL_M7",
	"SPE_ACC_GL_M1"

	// Attachments are shared with RA_InfWeaps via RA_InfWeapsAttachments
] + RA_GrenadierAmmo;
RA_Grenadier = [
	// VESTS
	"V_SPE_US_Vest_AB_Garand", 
	"V_SPE_US_Vest_AB_Garand_gp", 
	"V_SPE_US_Vest_AB_padded_Garand_45", 
	"V_SPE_US_Vest_AB_Garand_45",
	"V_SPE_US_Vest_AB_Grenadier", 
	"V_SPE_US_Vest_AB_padded_Garand_gp",
	"V_SPE_US_Vest_AB_padded_Grenadier", 
	"V_SPE_US_Vest_AB_padded_2", 
	"V_SPE_US_Vest_AB_padded_M1919", 
	"V_SPE_US_Vest_AB_padded_mk2", 
	"V_SPE_US_Vest_AB_padded_1",
	"V_SPE_US_Vest_AB_early_2",
	"V_SPE_US_Vest_AB_late_2", 
	"V_SPE_US_Vest_AB_late_M1919",
	"V_SPE_US_Vest_AB_late_mk2", 
	"V_SPE_US_Vest_AB_late_1", 
	"V_SPE_US_Vest_AB_early_mk2",
	"V_SPE_US_Vest_AB_early_1"
		
] + RA_InfBackpacks + RA_GrenadierWeapons + RA_GrenadierAmmo + RA_InfWeapsAmmo;

// ---------------------------------- LEADERSHIP ----------------------------------
RA_GroundLeader = [
	// UNIFORM
	// VESTS
	//
	// HATS
	// MISC
	"ACE_artilleryTable",
	"p_sig_trench_whistle",
	"ACRE_SEM52SL",
	"SPE_M3_GreaseGun",
	"SPE_M1A1_Thompson",
	"V_SPE_US_Vest_AB_early_45",
	"V_SPE_US_Vest_AB_early_thompson_45_bag",
	"V_SPE_US_Vest_AB_late_45", 
	"V_SPE_US_Vest_AB_late_thompson_45",
	"V_SPE_US_Vest_AB_late_45_map", 
	"V_SPE_US_Vest_AB_late_thompson_45_gp", 
	"V_SPE_US_Vest_AB_late_thompson_45_map",
	"V_SPE_US_Vest_AB_early_45_map",
	"V_SPE_US_Vest_AB_early_thompson_45",
	"V_SPE_US_Vest_AB_padded_Garand_nco",
	"V_SPE_US_Vest_AB_padded_nco",
	"V_SPE_US_Vest_AB_padded_Garand_eng",
	"V_SPE_US_Vest_AB_late_nco",
	"V_SPE_US_Vest_AB_early_eng",
	"SPE_Binocular_US",
	"LIB_FLARE_PISTOL",
	"SPE_US_TNT_half_pound_mag", 
	"SPE_US_TNT_4pound_mag",
	"G_rajio_handi_fore",
	"G_rajio_handi_fore_bandoleer_rear",
	"G_rajio_handi_fore_bandoleer", 
	"G_rajio_handi_rear_bandoleer_2",
	"G_rajio_handi_fore_m6", 
	"G_rajio_handi_fore_map", 
	"G_rajio_handi_rear",
	"G_rajio_handi_rear_bandoleer_1",
	"G_rajio_handi_rear_m6",
	"G_rajio_handi_rear_m6_bandoleer",
	"G_rajio_handi_rear_map",
	"G_mapcase",
	"G_mapcase_2",
	"G_mapcase_od7"

] + RA_BasicInfVests + RA_InfBackpacks; 
RA_TeamLeader = [
	// UNIFORM
	// VESTS
	//
	// HATS
	// MISC
	"SPE_ACC_GL_M8",
	"SPE_ACC_GL_M7",
	"SPE_ACC_GL_M1"

] + RA_BasicInfVests + RA_InfBackpacks;

// ---------------------------------- MEDIC ----------------------------------

RA_Med = [
	// UNIFORM
	// medic bags
	"U_SPE_US_AB_Uniform_M42_padded_CC2_Medic",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_Medic_glove",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_Medic_roll",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_flag_Medic",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_flag_Medic_glove",
	"U_SPE_US_AB_Uniform_M42_padded_CC2_flag_Medic_roll",
	"V_SPE_US_Vest_AB_Garand_medic", 
	"V_SPE_US_Vest_AB_early_medic",
	"V_SPE_US_Vest_AB_late_medic",
	"V_SPE_US_Vest_AB_padded_Garand_medic",
	"V_SPE_US_Vest_AB_padded_medic",
	"wdc_US_personalAidKit",
	"wdc_US_surgicalKit",
	"wdc_ammoniaAmpule",  
	"wdc_bloodIV_250", 
	"wdc_bloodIV_500"

] + RA_InfBackpacks;

// ---------------------------------- INFANTRY ----------------------------------


RA_ARiflemanAmmo = [
	// AMMO
    "SPE_20Rnd_762x63",
	"SPE_20Rnd_762x63_M1",
	"SPE_20Rnd_762x63_M2_AP",
	"ACE_SpareBarrel"

];

RA_ARifleman = [
	// Uniform
	// BACKPACKS
	// VESTS
	"V_SPE_US_Vest_Bar",
	"V_SPE_US_Vest_Bar_M43",
	"V_SPE_US_Vest_Bar_assist",
	// M249 PARA
	"SPE_M1918A0_BAR",
	"SPE_M1918A2_BAR",
	"SPE_M1918A2_erla_BAR"

] + RA_InfBackpacks + RA_ARiflemanAmmo;

RA_RiflemanAmmo = [
	// AMMO
	// Will also get ammo from RA_InfWeaps

];

RA_Rifleman = [
	// GRIPS AND ATTACHMENTS
	// VESTS
	// BACKPACKS

] + RA_InfBackpacks + RA_BasicInfVests + RA_RiflemanAmmo;

// ---------------------------------- WEAPONS ----------------------------------
RA_MGunnerAmmo = [
    // AMMO
    "SPE_100Rnd_762x63_M2_AP",
	"SPE_100Rnd_762x63_M1",
	"SPE_100Rnd_762x63",
	"SPE_50Rnd_762x63",
	"SPE_50Rnd_762x63_M1",
	"SPE_50Rnd_762x63_M2_AP",
	// MISC
	"ACE_SpareBarrel"

];
RA_MGunner = [
	// VESTS
	// WEAPONS
    "SPE_M1919A4",
	"SPE_M1919A6",
	"ACE_SpareBarrel"

] + RA_InfBackpacks + RA_MGunnerAmmo;

RA_MGAmmoBearer = [
	// BACKPACKS
	// VESTS
	// MISC
	"ACE_SpareBarrel",
	"SPE_M2_Tripod"

] + RA_InfBackpacks + RA_BasicInfVests + RA_MGunnerAmmo + RA_GrenadierAmmo; // Assistant Machine Gunner is focussed on supporting their MGs

// ---------------------------------- SCOUTS ---------------------------------------
RA_Marksman = [
	// Weapons
	"SPE_M1903A4_Springfield",
	// AMMO
	"SPE_5Rnd_762x63",
	"SPE_5Rnd_762x63_M1",
	"SPE_5Rnd_762x63_t",
	"SPE_5Rnd_762x63_M2_AP",
	"SPE_Binocular_US",
	"ACE_RangeCard"

] + RA_BasicInfVests + RA_InfBackpacks + RA_InfWeapsAmmo;

RA_Scout = [
	// AMMO
	"SPE_8Rnd_762x63",
	"SPE_8Rnd_762x63_M1",
	"SPE_8Rnd_762x63_t",
	"SPE_8Rnd_762x63_M2_AP",
	"SPE_5Rnd_762x63",
	"SPE_5Rnd_762x63_M1",
	"SPE_5Rnd_762x63_t",
	"SPE_5Rnd_762x63_M2_AP",
	"SPE_100Rnd_762x63_M2_AP",
	"SPE_100Rnd_762x63_M1",
	"SPE_100Rnd_762x63",
	"SPE_50Rnd_762x63",
	"SPE_50Rnd_762x63_M1",
	"SPE_50Rnd_762x63_M2_AP",
	"SPE_20Rnd_762x63",
	"SPE_20Rnd_762x63_M1",
	"SPE_20Rnd_762x63_M2_AP",
	"SPE_15Rnd_762x33", 
	"SPE_15Rnd_762x33_t",
	"SPE_30Rnd_Thompson_45ACP",
	"SPE_30Rnd_Thompson_45ACP_t", 
	"SPE_20Rnd_Thompson_45ACP", 
	"SPE_20Rnd_Thompson_45ACP_t",
	"SPE_30Rnd_M3_GreaseGun_45ACP", 
	"SPE_30Rnd_M3_GreaseGun_45ACP_t",
	"LIB_1Rnd_flare_white", 
	"LIB_1Rnd_flare_red", 
	"LIB_1Rnd_flare_green", 
	"LIB_1Rnd_flare_yellow",
	"SPE_1Rnd_G_Mk2", 
	"SPE_1Rnd_G_M9A1",
	"SPE_1Rnd_G_M2_AN_M14", 
	"SPE_1Rnd_G_M2_ANM8", 
	"SPE_1Rnd_G_M2_M18_Red", 
	"SPE_1Rnd_G_M2_M18_Green", 
	"SPE_1Rnd_G_M2_M18_Yellow", 
	"SPE_1Rnd_G_M2_M18_Violet",
	"SPE_1Rnd_G_M17A1", 
	"SPE_1Rnd_G_M19A1", 
	"SPE_1Rnd_G_M21A1", 
	"SPE_1Rnd_G_M51A1",
	"SPE_5Rnd_12x70_No4_Buck",
	"SPE_5Rnd_12x70_Slug",
	"SPE_5Rnd_12x70_Pellets",
	//Accessories
	"SPE_Binocular_US", 
	"SPE_ACC_GL_M8",
	"SPE_ACC_GL_M7",
	"SPE_ACC_GL_M1",
	//General Weapons
	"SPE_M1_Garand",
	"SPE_M1_Carbine",
	"SPE_M1903A3_Springfield",
	"SPE_M1A1_Carbine",
	"SPE_M1A1_Thompson",
	"SPE_M3_GreaseGun",
	"ff_us_m1_garand",
	"ff_sling_canva",
	"ff_us_m1_garand_laat",
	"ff_sling_1907",
	"ff_us_m1903a0_Springfield",
	// MISC
    "ToolKit",
	"SPE_Ladung_Small_MINE_mag", 
	"SPE_Ladung_Big_MINE_mag", 
	"SPE_US_M1A1_ATMINE_mag", 
	"SPE_US_Bangalore_mag",
	"SPE_US_M3_Pressure_MINE_mag", 
	"SPE_US_M3_MINE_mag", 
	"SPE_US_TNT_half_pound_mag", 
	"SPE_US_TNT_4pound_mag", 
	"ACE_M26_Clacker", 
	"ACE_DefusalKit",  
	"ACE_wirecutter",
	"U_SPE_US_AB_Uniform_M42_camo",
	"U_SPE_US_AB_Uniform_M42_camo_glove",
	"U_SPE_US_AB_Uniform_M42_camo_roll",
	"V_SPE_US_Vest_AB_early_45",
	"V_SPE_US_Vest_AB_early_thompson_45_bag",
	"V_SPE_US_Vest_AB_late_45", 
	"V_SPE_US_Vest_AB_late_thompson_45",
	"V_SPE_US_Vest_AB_late_45_map", 
	"V_SPE_US_Vest_AB_late_thompson_45_gp", 
	"V_SPE_US_Vest_AB_late_thompson_45_map",
	"V_SPE_US_Vest_AB_early_45_map",
	"V_SPE_US_Vest_AB_early_thompson_45",
	"V_SPE_US_Vest_AB_padded_Garand_nco",
	"V_SPE_US_Vest_AB_padded_nco",
	"V_SPE_US_Vest_AB_padded_Garand_eng",
	"V_SPE_US_Vest_AB_late_nco",
	"V_SPE_US_Vest_AB_early_eng"

] + RA_BasicInfVests + RA_InfBackpacks;

// ---------------------------------- TRADER ----------------------------------

RA_EngiBaseAmmo = [
	// AMMO
	"SPE_M2_Flamethrower_Mag",
	"SPE_Model_37_Riotgun",
	"SPE_Model_37_Trenchgun",
	"SPE_8Rnd_762x63",
	"SPE_8Rnd_762x63_M1",
	"SPE_8Rnd_762x63_t",
	"SPE_8Rnd_762x63_M2_AP",
	"SPE_5Rnd_762x63",
	"SPE_5Rnd_762x63_M1",
	"SPE_5Rnd_762x63_t",
	"SPE_5Rnd_762x63_M2_AP",
	"SPE_100Rnd_762x63_M2_AP",
	"SPE_100Rnd_762x63_M1",
	"SPE_100Rnd_762x63",
	"SPE_50Rnd_762x63",
	"SPE_50Rnd_762x63_M1",
	"SPE_50Rnd_762x63_M2_AP",
	"SPE_20Rnd_762x63",
	"SPE_20Rnd_762x63_M1",
	"SPE_20Rnd_762x63_M2_AP",
	"SPE_15Rnd_762x33", 
	"SPE_15Rnd_762x33_t",
	"SPE_30Rnd_Thompson_45ACP",
	"SPE_30Rnd_Thompson_45ACP_t", 
	"SPE_20Rnd_Thompson_45ACP", 
	"SPE_20Rnd_Thompson_45ACP_t",
	"SPE_30Rnd_M3_GreaseGun_45ACP", 
	"SPE_30Rnd_M3_GreaseGun_45ACP_t",
	"LIB_1Rnd_flare_white", 
	"LIB_1Rnd_flare_red", 
	"LIB_1Rnd_flare_green", 
	"LIB_1Rnd_flare_yellow",
	"SPE_1Rnd_G_Mk2", 
	"SPE_1Rnd_G_M9A1",
	"SPE_1Rnd_G_M2_AN_M14", 
	"SPE_1Rnd_G_M2_ANM8", 
	"SPE_1Rnd_G_M2_M18_Red", 
	"SPE_1Rnd_G_M2_M18_Green", 
	"SPE_1Rnd_G_M2_M18_Yellow", 
	"SPE_1Rnd_G_M2_M18_Violet",
	"SPE_1Rnd_G_M17A1", 
	"SPE_1Rnd_G_M19A1", 
	"SPE_1Rnd_G_M21A1", 
	"SPE_1Rnd_G_M51A1",
	"SPE_5Rnd_12x70_No4_Buck",
	"SPE_5Rnd_12x70_Slug",
	"SPE_5Rnd_12x70_Pellets",
	"MineDetector",
	"SPE_M3_GreaseGun",
	"SPE_30Rnd_M3_GreaseGun_45ACP_t",
	"SPE_30Rnd_M3_GreaseGun_45ACP",
	"B_SPE_US_packboard_ammo",
	"B_SPE_US_packboard_eng",
	
	// MISC
	"ACE_SpareBarrel"

];
RA_EngiBaseGear = [
	// HATS
	// HEADGEAR
	// MISC
	"SPE_M2_Flamethrower",
	"B_SPE_US_M2Flamethrower",
	"ACE_SpareBarrel",
	"ToolKit",
	"SPE_ToolKit",
	"SPE_Ladung_Small_MINE_mag", 
	"SPE_Ladung_Big_MINE_mag", 
	"SPE_US_M1A1_ATMINE_mag", 
	"SPE_US_Bangalore_mag",
	"SPE_US_M3_Pressure_MINE_mag", 
	"SPE_US_M3_MINE_mag", 
	"SPE_US_TNT_half_pound_mag", 
	"SPE_US_TNT_4pound_mag", 
	"ACE_Clacker", 
	"ACE_M26_Clacker", 
	"ACE_DefusalKit",  
	"ACE_wirecutter",
	"ACE_VMM3"
];

RA_EngiTL = [
	// GEAR
	"SPE_Binocular_US",
	//ACRE2
	"B_SPE_US_Radio",
	"B_SPE_US_Radio_alt",
	"B_SPE_US_Radio_packboard_light",
	"B_SPE_US_Radio_packboard",
	//ACRE2 
	"ACRE_PRC77"

] + RA_InfBackpacks + RA_BasicInfVests + RA_EngiBaseGear + RA_EngiBaseAmmo; // Engi can pull all other mags as well, added at the end of file

RA_Engi = [
	// GEAR
	"SPE_Binocular_US"

] + RA_InfBackpacks + RA_BasicInfVests + RA_EngiBaseGear + RA_EngiBaseAmmo; // Engi can pull all other mags as well, added at the end of file

// ---------------------------------- TANK ----------------------------------
RA_TankCommanderAmmo = [
	// AMMO
	"SPE_15Rnd_762x33", 
	"SPE_15Rnd_762x33_t",
	"SPE_30Rnd_Thompson_45ACP",
	"SPE_30Rnd_Thompson_45ACP_t", 
	"SPE_20Rnd_Thompson_45ACP", 
	"SPE_20Rnd_Thompson_45ACP_t",
	"SPE_30Rnd_M3_GreaseGun_45ACP", 
	"SPE_30Rnd_M3_GreaseGun_45ACP_t"
];
RA_TankCommander = [

	// HEADGEAR
	"H_SPE_US_Helmet_Tank_Nun", 
	"H_SPE_US_Helmet_Tank",
	"H_SPE_US_Helmet_Tank_M1_NS", 
	"H_SPE_US_Helmet_Tank_M1_OS", 
	"H_SPE_US_Helmet_Tank_M1_Scrim",
	"H_SPE_US_Helmet_Tank_polar_low", 
	"H_SPE_US_Helmet_Tank_polar", 
	"H_SPE_US_Helmet_Tank_polar_tapes",
	"H_SPE_US_Helmet_Tank_tapes",
	"H_SPE_US_jeep_cap",
	"H_SPE_US_jeep_cap_polar",
	"H_SPE_US_jeep_cap_rear",
	"LIB_GER_Gloves4",
	"LIB_GER_Gloves5",
	"LIB_GER_Gloves2",
	"LIB_GER_Gloves1",
	"LIB_GER_Gloves3",
	"G_LIB_Watch2",
	"G_LIB_Watch1",
	"G_LIB_GER_Gloves3",
	"G_LIB_GER_Gloves1",
	"G_LIB_GER_Gloves2",
	"G_LIB_GER_Gloves5",
	"G_LIB_GER_Gloves4",
	// WEAPONS
	"SPE_M3_GreaseGun",
	"SPE_M1A1_Thompson",
	"SPE_M1_Carbine",
	// UNIFORMS
	"U_SPE_US_Tank_Coverall", 
	"U_SPE_US_Tank_Coverall_Legging", 
	"U_SPE_US_Tank_Coverall_Trop", 
	"U_SPE_US_Tank_Coverall_Trop_Legging",
	"U_SPE_US_Tank_Crew", 
	"U_SPE_US_Tank_Crew_camo", 
	"U_SPE_US_Tank_Crew_camo2", 
	"U_SPE_US_Tank_Crew6",
	"U_SPE_US_Tank_Crew2", 
	"U_SPE_US_Tank_Crew5", 
	"U_SPE_US_Tank_Crew4", 
	"U_SPE_US_Tank_Crew3",
	// VESTS
	"V_SPE_US_Vest_Thompson",
	"V_SPE_US_Vest_Thompson_M43",
	"V_SPE_US_Vest_Carbine",
	"B_SPE_US_MGbag",
	"B_SPE_US_Radio",
	"B_SPE_US_Radio_alt",
	"B_SPE_US_Radio_packboard_light",
	"B_SPE_US_Radio_packboard",
	//ACRE2 
	"ACRE_PRC77",
	// MISC
	"ToolKit",
	"SPE_Binocular_US"

] + RA_TankCommanderAmmo;

RA_TankCrewAmmo = [
	// AMMO
	"SPE_15Rnd_762x33", 
	"SPE_15Rnd_762x33_t",
	"SPE_30Rnd_Thompson_45ACP",
	"SPE_30Rnd_Thompson_45ACP_t", 
	"SPE_20Rnd_Thompson_45ACP", 
	"SPE_20Rnd_Thompson_45ACP_t",
	"SPE_30Rnd_M3_GreaseGun_45ACP", 
	"SPE_30Rnd_M3_GreaseGun_45ACP_t"

];
RA_TankDriver = [
	// HEADGEAR
	"H_SPE_US_Helmet_Tank_Nun", 
	"H_SPE_US_Helmet_Tank",
	"H_SPE_US_Helmet_Tank_M1_NS", 
	"H_SPE_US_Helmet_Tank_M1_OS", 
	"H_SPE_US_Helmet_Tank_M1_Scrim",
	"H_SPE_US_Helmet_Tank_polar_low", 
	"H_SPE_US_Helmet_Tank_polar", 
	"H_SPE_US_Helmet_Tank_polar_tapes",
	"H_SPE_US_Helmet_Tank_tapes",
	"H_SPE_US_jeep_cap",
	"H_SPE_US_jeep_cap_polar",
	"H_SPE_US_jeep_cap_rear",
	"LIB_GER_Gloves4",
	"LIB_GER_Gloves5",
	"LIB_GER_Gloves2",
	"LIB_GER_Gloves1",
	"LIB_GER_Gloves3",
	"G_LIB_Watch2",
	"G_LIB_Watch1",
	"G_LIB_GER_Gloves3",
	"G_LIB_GER_Gloves1",
	"G_LIB_GER_Gloves2",
	"G_LIB_GER_Gloves5",
	"G_LIB_GER_Gloves4",
	// WEAPONS
	"SPE_M3_GreaseGun",
	"SPE_M1A1_Thompson",
	"SPE_M1_Carbine",
	// UNIFORMS
	"U_SPE_US_Tank_Coverall", 
	"U_SPE_US_Tank_Coverall_Legging", 
	"U_SPE_US_Tank_Coverall_Trop", 
	"U_SPE_US_Tank_Coverall_Trop_Legging",
	"U_SPE_US_Tank_Crew", 
	"U_SPE_US_Tank_Crew_camo", 
	"U_SPE_US_Tank_Crew_camo2", 
	"U_SPE_US_Tank_Crew6",
	"U_SPE_US_Tank_Crew2", 
	"U_SPE_US_Tank_Crew5", 
	"U_SPE_US_Tank_Crew4", 
	"U_SPE_US_Tank_Crew3",
	// VESTS
	"V_SPE_US_Vest_Thompson",
	"V_SPE_US_Vest_Thompson_M43",
	"V_SPE_US_Vest_Carbine",
	"B_SPE_US_MGbag",
	// MISC
	"ToolKit"

] + RA_TankCrewAmmo;

RA_TankGunner = [
	// HEADGEAR
	"H_SPE_US_Helmet_Tank_Nun", 
	"H_SPE_US_Helmet_Tank",
	"H_SPE_US_Helmet_Tank_M1_NS", 
	"H_SPE_US_Helmet_Tank_M1_OS", 
	"H_SPE_US_Helmet_Tank_M1_Scrim",
	"H_SPE_US_Helmet_Tank_polar_low", 
	"H_SPE_US_Helmet_Tank_polar", 
	"H_SPE_US_Helmet_Tank_polar_tapes",
	"H_SPE_US_Helmet_Tank_tapes",
	"H_SPE_US_jeep_cap",
	"H_SPE_US_jeep_cap_polar",
	"H_SPE_US_jeep_cap_rear",
	"LIB_GER_Gloves4",
	"LIB_GER_Gloves5",
	"LIB_GER_Gloves2",
	"LIB_GER_Gloves1",
	"LIB_GER_Gloves3",
	"G_LIB_Watch2",
	"G_LIB_Watch1",
	"G_LIB_GER_Gloves3",
	"G_LIB_GER_Gloves1",
	"G_LIB_GER_Gloves2",
	"G_LIB_GER_Gloves5",
	"G_LIB_GER_Gloves4",
	// WEAPONS
	"SPE_M3_GreaseGun",
	"SPE_M1A1_Thompson",
	"SPE_M1_Carbine",
	// UNIFORMS
	"U_SPE_US_Tank_Coverall", 
	"U_SPE_US_Tank_Coverall_Legging", 
	"U_SPE_US_Tank_Coverall_Trop", 
	"U_SPE_US_Tank_Coverall_Trop_Legging",
	"U_SPE_US_Tank_Crew", 
	"U_SPE_US_Tank_Crew_camo", 
	"U_SPE_US_Tank_Crew_camo2", 
	"U_SPE_US_Tank_Crew6",
	"U_SPE_US_Tank_Crew2", 
	"U_SPE_US_Tank_Crew5", 
	"U_SPE_US_Tank_Crew4", 
	"U_SPE_US_Tank_Crew3",
	// VESTS
	"V_SPE_US_Vest_Thompson",
	"V_SPE_US_Vest_Thompson_M43",
	"V_SPE_US_Vest_Carbine",
	"B_SPE_US_MGbag",
	// MISC
	"ToolKit"

] + RA_TankCrewAmmo;

// ---------------------------------- Mortars ----------------------------------
RA_MortarsAmmo = [
    // AMMO GET SAME GEAR NOW IN DETERMINEROLE
	// WEAPON ATTACHMENTS
	"SPEX_M2_60_Barrel",
	"SPEX_M2_60_Stand",
	"SPEX_1Rnd_60mmWP_M2_M302",
	"SPEX_1Rnd_60mmHE_M2_M49A2",
	"SPEX_1Rnd_60mmIllu_M2_M83"
	// HATS
	// HEADGEAR
	
];

RA_Mortars = [
	"ACE_artilleryTable"

] + RA_MortarsAmmo + RA_BasicInfVests + RA_InfBackpacks;


// ---------------------------------- Artillery ----------------------------------
RA_ArtilleryAmmo = [
    // AMMO GET SAME GEAR NOW IN DETERMINEROLE
	// WEAPON ATTACHMENTS
	"ACE_artilleryTable",
	"U_SPE_US_Private",
	"U_SPE_US_Corp",
	"U_SPE_US_Private_1st",
	"U_SPE_US_Sergeant",
	"U_SPE_US_Technician"
	// HATS
	// HEADGEAR
	
];
RA_ArtilleryLeader = [

	// MISC
	"SPE_Binocular_US",
	"ACE_RangeTable_82mm",
	"ACE_artilleryTable",
	"B_SPE_US_Radio",
	"B_SPE_US_Radio_alt",
	"B_SPE_US_Radio_packboard_light",
	"B_SPE_US_Radio_packboard",
	//ACRE2 
	"ACRE_PRC77",
	"ACRE_VHF30108",
	"ACRE_SEM52SL"

] + RA_ArtilleryAmmo + RA_TeamLeaderVests + RA_InfBackpacks;

RA_Artillery = [

	// MISC
	"ACE_RangeTable_82mm",
	"ACE_artilleryTable"

] + RA_ArtilleryAmmo + RA_BasicInfVests + RA_InfBackpacks;

// ---------------------------------- ROTARY/FIXED ----------------------------------

RA_FixedPilotGear = [
	// VESTS
	"H_SPE_US_Helmet_Pilot_Op", 
	"H_SPE_US_Helmet_Pilot", 
	"H_SPE_US_Helmet_Pilot_Glasses_Up", 
	"H_SPE_US_Helmet_Pilot_Glasses_Down",
	"H_SPE_US_Helmet_Pilot_Respirator", 
	"H_SPE_US_Helmet_Pilot_Respirator_Glasses_Up", 
	"H_SPE_US_Helmet_Pilot_Respirator_Glasses_Down", 
	"H_SPE_US_Helmet_Pilot_SWDG_Respirator", 
	"H_SPE_US_Helmet_Pilot_SWDG_low_Respirator",
	"H_SPE_US_Helmet_H15", 
	"H_SPE_US_Helmet_H15_SWDG",
	"H_SPE_US_Helmet_H15_SWDG_low", 
	"H_SPE_US_Helmet_H15_O2", 
	"H_SPE_US_Helmet_H15_B7_O2", 
	"H_SPE_US_Helmet_H15_B7_low_O2", 
	"H_SPE_US_Helmet_H15_SWDG_O2", 
	"H_SPE_US_Helmet_H15_SWDG_low_O2", 
	"H_SPE_US_Helmet_H15_Op",
	// uniform
	"U_SPE_US_Pilot_lthr", 
	"U_SPE_US_Pilot_lthr_boot", 
	"U_SPE_US_Pilot_lthr_glove",
	"U_SPE_US_Pilot", 
	"U_SPE_US_Pilot_boot", 
	"U_SPE_US_Pilot_glove",
	"U_SPE_US_S31_erla", 
	"U_SPE_US_S31_erla_boot", 
	"U_SPE_US_S31_erla_glove",
	"U_SPE_US_S31A", 
	"U_SPE_US_S31A_boot", 
	"U_SPE_US_S31A_glove",
	// backpack
	"V_SPE_US_LifeVest",
	"B_SPE_US_TypeA3",  
	// MISC
	"ToolKit",
	"LIB_FLARE_PISTOL",  
	"SPE_ToolKit",
	// WEAPONS
	"SPE_M1_Carbine",
	// AMMO
	"SPE_15Rnd_762x33"
];


// Used for ignoring all magazines/ammo types and allowing them to be crossloaded
RA_AllAmmoTypes = RA_DefaultGearAmmo +
	RA_InfWeapsAmmo +
	RA_GrenadierAmmo +
	RA_ARiflemanAmmo +
	RA_RiflemanAmmo +
	RA_MGunnerAmmo +
	RA_EngiBaseAmmo +
	RA_TankCommanderAmmo +
	RA_TankCrewAmmo +
	RA_ArtilleryAmmo;
RA_AllAmmoTypes = RA_AllAmmoTypes arrayIntersect RA_AllAmmoTypes; // Remove duplicates

// Engi can pull all ammo types
RA_EngiTL = RA_EngiTL + RA_AllAmmoTypes;
RA_Engi = RA_Engi + RA_AllAmmoTypes;

// SL/TL can also pull ammo for their Autorifleman/Machinegunner
RA_GroundLeader = RA_GroundLeader + RA_ARiflemanAmmo + RA_MGunnerAmmo;
RA_TeamLeader = RA_TeamLeader + RA_ARiflemanAmmo + RA_MGunnerAmmo;

// Used for checking whether something is in our arsenal whitelist system or not
RA_FullArsenal = RA_DefaultGear +
	RA_InfGear +
	RA_InfWeaps +
	RA_Grenadier +
	RA_GroundLeader +
	RA_TeamLeader +
	RA_Marksman +
	RA_Scout +
	RA_Med +
	RA_ARifleman +
	RA_Rifleman +
	RA_MGunner +
	RA_MGAmmoBearer +
	RA_EngiTL +
	RA_Engi +
	RA_FixedPilotGear +
	RA_TankCommander +
	RA_TankDriver +
	RA_TankGunner +
	RA_ArtilleryLeader +
	RA_Artillery;
RA_FullArsenal = RA_FullArsenal arrayIntersect RA_FullArsenal; // Remove duplicates
