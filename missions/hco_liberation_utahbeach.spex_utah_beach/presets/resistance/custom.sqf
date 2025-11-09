/*
    Needed Mods:


    Optional Mods:
    - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KP_liberation_guerilla_units = [
    "SPE_FFI_CellLeader",
    "SPE_FFI_Doctor",
    "SPE_FFI_Fighter_G43",
    "SPE_FFI_Fighter_Garand",
    "SPE_FFI_MGunner",
    "SPE_FFI_Autorifleman",
    "SPE_FFI_Tankhunter",
    "SPE_FFI_Sapper_Mle208"
];

// Armed vehicles
KP_liberation_guerilla_vehicles = [
    "SPE_FFI_SdKfz250_1",
    "SPE_FR_M3_Halftrack",
    "SPE_FFI_R200_Unarmed",
    "SPE_FFI_R200_MG34",
    "SPE_FFI_R200_Hood"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KP_liberation_guerilla_weapons_1 = [
    ["SPE_MAS_36","SPE_5Rnd_75x54",15,"",""],
    ["SPE_M1_Garand","SPE_8Rnd_762x63_t",16,"",""],
    ["LIB_K98","LIB_5Rnd_792x57_t",16,"",""],
    ["SPE_MP40","SPE_32rnd_9x19_t",8,"",""],
    ["SPE_Fusil_Mle_208_12","SPE_2Rnd_12x65_Pellets",25,"",""],
    ["SPE_FM_24_M29","SPE_25Rnd_75x54",10,"",""]
];

KP_liberation_guerilla_weapons_2 = [
    ["SPE_MAS_36","SPE_5Rnd_75x54",15,"",""],
    ["SPE_M1_Garand","SPE_8Rnd_762x63_t",16,"",""],
    ["SPE_FM_24_M29","SPE_25Rnd_75x54",10,"",""],
    ["SPE_Sten_Mk2","SPE_32Rnd_9x19_Sten",8,"",""],
    ["SPE_G43","SPE_10Rnd_792x57_SMK",16,"",""]
];

KP_liberation_guerilla_weapons_3 = [
    ["SPE_M1918A2_BAR","SPE_20Rnd_762x63_M2_AP",16,"",""],
    ["SPE_No3_Mk1_Enfield","SPE_5Rnd_770x56",15,"",""],
    ["SPE_MAS_36","SPE_5Rnd_75x54",24,"",""],
    ["SPE_M1919A4","SPE_50Rnd_762x63_M1",4,"",""],
    ["SPE_M1903A4_Springfield","SPE_5Rnd_762x63_t",16,"",""],
    ["SPE_FM_24_M29","SPE_25Rnd_75x54_35P_AP",16,"",""]
];

// Uniforms
KP_liberation_guerilla_uniforms_1 = [
    "U_SPE_FFI_Casual_4_trop",
    "U_SPE_FFI_Worker_4_trop",
    "U_SPE_FFI_Casual_5",
    "U_SPE_FFI_Jacket_zwart_Alt",
    "U_SPE_FFI_Worker_1_trop",
    "U_SPE_FFI_Casual_7",
    "U_SPE_FFI_Casual_3",
    "U_SPE_FFI_Casual_3_trop",
    "U_SPE_FFI_Casual_4"
];

KP_liberation_guerilla_uniforms_2 = [
    "U_SPE_FFI_Casual_4_trop",
    "U_SPE_FFI_Worker_4_trop",
    "U_SPE_FFI_Casual_5",
    "U_SPE_FFI_Jacket_zwart_Alt",
    "U_SPE_FFI_Worker_1_trop",
    "U_SPE_FFI_Casual_7",
    "U_SPE_FFI_Casual_3",
    "U_SPE_FFI_Casual_3_trop",
    "U_SPE_FFI_Casual_4",
    "U_SPE_US_CC_EM_trop",
    "U_SPE_US_CC_EM",
    "U_SPE_US_CC_EM_roll"
];

KP_liberation_guerilla_uniforms_3 = [
    "U_SPE_US_CC_HBT_EM",
    "U_SPE_US_CC_HBT_EM_roll",
    "U_SPE_US_CC_HBT_EM_trop",
    "U_SPE_US_CC_HBT_EM_trop_roll",
    "U_SPE_US_HBT44_roll",
    "U_SPE_US_HBT44",
    "U_SPE_US_HBT44_trop",
    "U_SPE_US_HBT44_Half",
    "U_SPE_US_HBT44_late"
];

// Vests
KP_liberation_guerilla_vests_1 = [
    "V_SPE_FFI_Vest_Pouch",
    "V_SPE_FFI_Vest_Pouch_frag",
    "V_SPE_FFI_Vest_rifle",
    "V_SPE_FFI_Vest_rifle_frag",
    "V_SPE_FFI_Vest_rifle_pouch",
    "V_SPE_FFI_Vest_SMG",
    "V_SPE_FFI_Vest_SMG_frag",
    "V_SPE_FFI_Vest_SMG_pouch"
];

KP_liberation_guerilla_vests_2 = [
    "V_SPE_FFI_Vest_Pouch",
    "V_SPE_FFI_Vest_Pouch_frag",
    "V_SPE_FFI_Vest_rifle",
    "V_SPE_FFI_Vest_rifle_frag",
    "V_SPE_FFI_Vest_rifle_pouch",
    "V_SPE_FFI_Vest_SMG",
    "V_SPE_FFI_Vest_SMG_frag",
    "V_SPE_FFI_Vest_SMG_pouch",
    "V_SPE_US_Vest_Asst_MG",
    "V_SPE_US_Vest_Carbine",
    "V_SPE_US_Vest_Carbine_eng",
    "V_SPE_US_Vest_Thompson_nco"
];

KP_liberation_guerilla_vests_3 = [
    "V_SPE_US_Vest_Garand_M43",
    "V_SPE_US_Vest_Bar",
    "V_SPE_US_Vest_Grenadier",
    "V_SPE_US_Vest_Thompson_nco",
    "V_SPE_US_Vest_Asst_MG",
    "V_SPE_US_Vest_Asst_MG",
    "V_SPE_US_Vest_Carbine",
    "V_SPE_US_Vest_Carbine_eng",
    "V_SPE_US_Vest_Thompson_nco"
];

// Headgear
KP_liberation_guerilla_headgear_1 = [
    "",
    "",
    "",
    "",
    "H_SPE_CIV_Fedora_Cap_5",
    "H_SPE_CIV_Fedora_Cap_6",
    "H_SPE_CIV_Fedora_Cap_1",
    "H_SPE_CIV_Fedora_Cap_4",
    "H_SPE_CIV_Worker_Cap_2",
    "H_SPE_CIV_Worker_Cap_3",
    "H_SPE_CIV_Worker_Cap_1"
];

KP_liberation_guerilla_headgear_2 = [
    "H_SPE_CIV_Fedora_Cap_5",
    "H_SPE_CIV_Fedora_Cap_6",
    "H_SPE_CIV_Fedora_Cap_1",
    "H_SPE_CIV_Fedora_Cap_4",
    "H_SPE_CIV_Worker_Cap_2",
    "H_SPE_CIV_Worker_Cap_3",
    "H_SPE_CIV_Worker_Cap_1",
    "H_SPE_FR_Adrian_ns"
];

KP_liberation_guerilla_headgear_3 = [
    "H_SPE_FR_Adrian_ns",
    "H_SPE_FR_Adrian",
    "H_SPE_FR_US_Helmet",
    "H_SPE_FR_US_Helmet_ns"
];

// Facegear. Applies for tier 2 and 3.
KP_liberation_guerilla_facegear = [
    "",
    ""
];