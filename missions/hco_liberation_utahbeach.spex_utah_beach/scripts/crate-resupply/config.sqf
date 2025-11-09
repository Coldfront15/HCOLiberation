/*
    Crates can be grabbed from an ammo source with a limit set to the Squad itself
    Some squads have access to specialty crates
    Some squads can grab more than other squads.
    Some squads can resupply the crates of other squads while the rest cannot.
    Some squads have access to different kinds of specialty crates
    Each specialty crate has a different cooldown that occurs when they grab or refill it.
    Crate refill cooldowns belong to the squad the crate belongs to, not the squad that refills it.
    Some squads may have access to more than just 1 specialty crate they can pull or refill at a time.
    Architecture will be a client-server authoritative as much as it can. Clients send requests. Server will receive and create the crates and fill them via global commands. It will also be the source of truth on current allocations.
*/
"config.sqf" call resupplyLog;


// What provides a source for refililng and grabbing crates
ResupplyCrateSourceClasses = [
	// "B_Slingload_01_Ammo_F" // Huron Ammo Container
    "SPE_AmmoCrate_VehicleAmmo_US" // USMC Vehicle Service Point
];

// Maps a role description name to a shorthand flag that is used by the scripts to determine what ROLE someone belongs to
// Format is:
// [FLAG]: SUBSTRING OF ROLE DESCRIPTION NAME
// They will be cached to have the SL flag.
// Use is primarily for devs, however the search string must be updated if role names are going to be changed to properly set flags.
// i.e. Someone that picks the SL slot for 1-1 will have the role description 'Assassin 1-1 Squad Leader@Assassin 1-1 (Infantry)'
// We read the "Squad Leader" part to set them an SL flag.
// These flags are used in conjunction with the group flags to gain access to a variety of specialty crates, etc..
// i.e. A player with MED flag in 1-1 can have different stuff than a player in 1-6 with MED flag.
// NOTE: Key or value, it doesn't matter as we need to loop through and do a string find anyway. None of the role descriptions match exactly with a key to enable a O(1) lookup.
ResupplyRoleDescriptionsToRoleFlags = createHashMapFromArray [
    ["CO", "Company Commander"],
    ["XO", "Executive Officer"],
    ["PL", "Platoon Commander"],
    ["PSG", "Platoon Sergeant"],
    ["SL", "Squad Leader"],
    ["FTL", "Assistant Squad Leader"],
    ["CWO", "Chief"],
    ["JFO", "RATELO"],
    ["MED", "Medic"],
    ["ENG", "Engineer"],
    ["LOGI", "Motor"],
    ["IDF", "Thunder"]
];
// Maps a role description to a shorthand flag that is used by the scripts to determine what type of SQUAD someone belongs to
// If someone in their role description contains one of these strings then they will be marked to that flag.
// i.e. "Assassin 1-6 Platoon Leader@Assassin 1-6 (Leadership)" will contain Assassin 1-6, thus will be marked as belong to a PLHQ squad.
// Each squad should uniquely belong to only one type... If additional types are required, reOSGTtoring will be required to deconflict Specialty allocations, max crate, caching the squad flags for the player's current squad instead of a singular.

ResupplyRoleDescriptionToSquadFlags = [
    createHashMapFromArray [
        ["FlagName", "JFO"],
        ["SquadNames",
            [
                "Radio Telephone Operator"
            ]
        ]
    ],
    createHashMapFromArray [
        ["FlagName", "GI"],
        ["SquadNames",
            [
                "Squad Leader",
                "Assistant Squad Leader"
            ]
        ]
    ],
    createHashMapFromArray [
        ["FlagName", "PLHQ"],
        ["SquadNames",
            [
                "Platoon Commander",
                "Platoon Sergeant"
            ]
        ]
    ],
    createHashMapFromArray [
        ["FlagName", "CHQ"],
        ["SquadNames",
            [
                "Company Commander",
                "Company Executive Officer"
            ]
        ]
    ],
    createHashMapFromArray [
        ["FlagName", "LOGI"],
        ["SquadNames",
            [
                "Motor Officer",
                "Motor Sergeant",
                "Armorer (Engineer)"
            ]
        ]
    ],
    createHashMapFromArray [
        ["FlagName", "AIR"],
        ["SquadNames",
            [
                "Flight Leader",
                "Aviator"
            ]
        ]
    ],
    createHashMapFromArray [
        ["FlagName", "IDF"],
        ["SquadNames",
            [
                "Kansas Fox Battery"
            ]
        ]
    ]
];


// What type of squad has what type of allocations
/* Format is [SHORTHAND_SQUAD_IDENTIFIER]: {
    "CrateAllocations": number // How many crates they can have out at once
    "SpecialtyAllocations": number // How much specialty resource they have currently
    "WhitelistedFlags": Array<string> // What role flags are allowed to see the crate system within the squad. Empty array means anyone is allowed
    "Resupplier": boolean // Can this role resupply crates from other squads that is not their own
}*/
ResupplyCrateAllocations = createHashMapFromArray [
    [
        "JFO",
        createHashMapFromArray [
            ["CrateAllocations", 1],
            ["SpecialtyAllocations", 1],
            ["WhitelistedFlags", []]
        ]
    ],
    [
        "GI",
        createHashMapFromArray [
            ["CrateAllocations", 1],
            ["SpecialtyAllocations", 1],
            ["WhitelistedFlags", ["SL", "MED"]]
        ]
    ],
    [
        "CHQ",
        createHashMapFromArray [
            ["CrateAllocations", 3],
            ["SpecialtyAllocations", 3],
            ["WhitelistedFlags", ["CO", "XO", "OSGT"]]
        ]
    ],
    [
        "PLHQ",
        createHashMapFromArray [
            ["CrateAllocations", 2],
            ["SpecialtyAllocations", 2],
            ["WhitelistedFlags", ["PL", "PSG", "MED"]]
        ]
    ],
    [
        "LOGI",
        createHashMapFromArray [
            ["CrateAllocations", 8],
            ["SpecialtyAllocations", 2],
            ["WhitelistedFlags", []],
            ["Resupplier", true]
        ]
    ],
    [
        "AIR",
        createHashMapFromArray [
            ["CrateAllocations", 4],
            ["SpecialtyAllocations", 0],
            ["WhitelistedFlags", ["WO", "CWO"]]
        ]
    ],
    [
        "IDF",
        createHashMapFromArray [
            ["CrateAllocations", 3],
            ["SpecialtyAllocations", 0],
            ["WhitelistedFlags", []]
        ]
    ]
];


/*

    "ResupplyCrates": [
            "Crate Name": {
                "SquadLocks": Array<SQUAD NAMES> // An array of the shorthand squad identifiers that this crate will be locked to. If empty then its not locked to any specific squad.
                "WhitelistedRoles": Array<Flags> // What flags can pull this crate specifically, if left as empty array then it will use only blacklist to exclude
                "BlacklistedRoles": Array<Flags> // What flags can not pull this crate specifically, if left as empty array, then only whitelisted flags can pull. If both are empty, then anyone can pull.
                "Specialty"?: boolean // Is this a specialty crate (optional)
                "CustomCooldown"?: number // A custom cooldown can be specified (optional)
                "SpecialtyCost"?: number // A custom cost can be added too. (optional)
                "Model": string, // Crate model
                "Items": {
                    [key: string]: number // Items inside and how many
                },
                "Offset"?: [number, number, number], // Carrying offset (optional)
            }
        ]
*/
// Default timer for specialty crates on grabbing / refill
ResupplyDefaultSpecialtyCooldown = 3600; 
ResupplyDefaultRecallCooldown = 3600; 


ResupplyCrates = createHashMapFromArray [
    [
        "General Ammo Grenades",
        createHashMapFromArray [
            ["Model", "SPE_A5_Dropbag_Container_Ammo"],
            ["SquadLocks", []],
            ["WhitelistedRoles", []],
            ["BlacklistedRoles", ["JFO", "IDF"]],
            [
                "Items",
                createHashMapFromArray [
                    ["SPE_8Rnd_762x63", 30],
                    ["SPE_8Rnd_762x63_M1", 15],
                    ["SPE_8Rnd_762x63_t", 15],
                    ["SPE_8Rnd_762x63_M2_AP", 15],
                    ["SPE_20Rnd_762x63", 10],
                    ["SPE_20Rnd_762x63_M2_AP", 5],
                    ["SPE_20Rnd_762x63", 10],
                    ["SPE_15Rnd_762x33", 15],
                    ["SPE_15Rnd_762x33_t", 15],
                    ["SPE_30Rnd_Thompson_45ACP", 10],
                    ["SPE_30Rnd_Thompson_45ACP_t", 10],
                    ["SPE_30Rnd_M3_GreaseGun_45ACP", 10],
                    ["SPE_30Rnd_M3_GreaseGun_45ACP_t", 10],
                    ["SPE_5Rnd_762x63", 30],
                    ["SPE_5Rnd_762x63_M1", 15],
                    ["SPE_5Rnd_762x63_t", 15],
                    ["SPE_5Rnd_762x63_M2_AP", 15],					
                    ["SPE_100Rnd_762x63_M2_AP", 10],
                    ["SPE_100Rnd_762x63_M1", 5],
                    ["SPE_50Rnd_762x63_M2_AP", 10],
                    ["SPE_7Rnd_45ACP_1911", 15],
                    ["SPE_US_Mk_2", 15],
                    ["SPE_US_AN_M14", 5],
                    ["SPE_US_M15", 10],
                    ["SPE_US_M18_Red", 7],
                    ["SPE_US_M18_Green", 7],
                    ["SPE_US_M18_Violet", 7],
                    ["SPE_US_M18_Yellow", 7],
                    ["SPE_Type_A1_Lamp_Blue", 7],
                    ["SPE_Type_A1_Lamp_Green", 7],
                    ["SPE_Type_A1_Lamp_Orange", 7],
                    ["SPE_Type_A1_Lamp_Red", 7],
                    ["SPE_Type_A1_Lamp_White", 7],
                    ["LIB_1Rnd_flare_white", 7],
                    ["LIB_1Rnd_flare_red", 7],
                    ["LIB_1Rnd_flare_green", 7],
                    ["LIB_1Rnd_flare_yellow", 7],
                    ["SPE_5Rnd_12x70_No4_Buck", 15],
                    ["SPE_1Rnd_G_Mk2", 8],
                    ["SPE_1Rnd_G_M9A1", 8],
                    ["SPE_1Rnd_G_M17A1", 10],
                    ["SPE_1Rnd_G_Mk2", 10]
                ]
            ]
        ]
    ],
    ["Squad Ammunition", 
        createHashMapFromArray [
            ["Model", "SPE_A5_Dropbag_Container_Ammo"],
            ["SquadLocks", []],
            ["WhitelistedRoles", []],
            ["BlacklistedRoles", ["MED", "OSGT", "JFO", "IDF", "PJ"]],
            ["Items", 
                createHashMapFromArray [
                    ["SPE_8Rnd_762x63", 30],
                    ["SPE_M1A1_Bazooka", 1],
                    ["SPE_1Rnd_60mm_M6", 8],
                    ["SPE_8Rnd_762x63_M1", 15],
                    ["SPE_8Rnd_762x63_t", 15],
                    ["SPE_8Rnd_762x63_M2_AP", 15],
                    ["SPE_20Rnd_762x63", 10],
                    ["SPE_20Rnd_762x63_M2_AP", 5],
                    ["SPE_20Rnd_762x63", 10],
                    ["SPE_15Rnd_762x33", 15],
                    ["SPE_15Rnd_762x33_t", 15],
                    ["SPE_30Rnd_Thompson_45ACP", 10],
                    ["SPE_30Rnd_Thompson_45ACP_t", 10],
                    ["SPE_30Rnd_M3_GreaseGun_45ACP", 10],
                    ["SPE_30Rnd_M3_GreaseGun_45ACP_t", 10],
                    ["SPE_5Rnd_762x63", 30],
                    ["SPE_5Rnd_762x63_M1", 15],
                    ["SPE_5Rnd_762x63_t", 15],
                    ["SPE_5Rnd_762x63_M2_AP", 15],					
                    ["SPE_100Rnd_762x63_M2_AP", 10],
                    ["SPE_100Rnd_762x63_M1", 5],
                    ["SPE_50Rnd_762x63_M2_AP", 10],
                    ["SPE_7Rnd_45ACP_1911", 15],
                    ["SPE_US_Mk_2", 12],
                    ["SPE_US_AN_M14", 5],
                    ["SPE_US_M15", 10],
                    ["SPE_1Rnd_G_Mk2", 4],
                    ["SPE_1Rnd_G_M9A1", 4]
                ]   
            ]
        ]
    ],
    ["Medical Supplies", 
        createHashMapFromArray [
            ["Model", "ACE_medicalSupplyCrate_advanced"],
            ["SquadLocks", ["PLHQ", "CHQ", "LOGI", "PJ", "GI"]],
            ["WhitelistedRoles", ["MED", "LOGI", "ENG", "XO", "CO", "PJ"]],
            ["BlacklistedRoles", []],
            ["Items", 
                createHashMapFromArray [
                    ["wdc_bloodPlasmaIV_250", 10],
                    ["wdc_bloodPlasmaIV_500", 10],
                    ["wdc_carlisleLarge", 50],
                    ["wdc_gauzeBandage", 50],
                    ["wdc_triangleBandage", 50],
                    ["wdc_morphineSyrette", 15],
                    ["wdc_US_personalAidKit", 1],
                    ["wdc_Sulfa", 50],
                    ["wdc_US_surgicalKit", 2],
                    ["wdc_ammoniaAmpule", 20],
                    ["wdc_US_Tourniquet", 10],
                    ["wdc_US_Splint", 10]
                ]   
            ]
        ]
    ],
    [
        "Platoon Assigned Weapons",
        createHashmapFromArray [
            ["Model", "SPE_A5_Dropbag_Container_Ammo"],
            ["SquadLocks", ["PLHQ"]],
            ["WhitelistedRoles", ["PL", "PSG"]],
            ["BlacklistedRoles", []],
            ["SpecialtyCost", 1],
            ["Offset", [0, 1.5, 1]],
            ["Category", "Special Equipment"],
            [
                "Items",
                createHashMapFromArray [
                    ["SPE_M9A1_Bazooka", 2],
                    ["SPE_1Rnd_60mm_M6A3", 16]
                ]
            ]
        ]
    ],
    [
        "Company Assigned Weapons",
        createHashmapFromArray [
            ["Model", "SPE_A5_Dropbag_Container_Ammo"],
            ["SquadLocks", ["WPSQ", "CHQ"]],
            ["WhitelistedRoles", ["CO", "XO"]],
            ["BlacklistedRoles", []],
            ["SpecialtyCost", 1],
            ["Offset", [0, 1.5, 1]],
            ["Category", "Special Equipment"],
            [
                "Items",
                createHashMapFromArray [
                    ["SPE_M3_Tripod", 2],
                    ["SPE_M2_50", 2],
                    ["SPE_100Rnd_127x99_M2", 50]
                ]
            ]
        ]
    ]
    // [
    //     "82mm Mortars",
    //     createHashMapFromArray [
    //         ["Model", "SPE_A5_Dropbag_Container_Ammo"],
    //         ["SquadLocks", ["IDF", "LOGI"]],
    //         ["WhitelistedRoles", []],
    //         ["BlacklistedRoles", []],
    //         ["Category", "Basic"],
    //         ["Offset", [0, 1, 1]],
    //         [
    //             "Items",
    //             createHashMapFromArray [
    //                 ["SPE_M1_81_Stand", 2],
    //                 ["SPE_M1_81_Barrel", 2]
    //             ]
    //         ]
    //     ]
    // ],
    // [
    //     "81mm HE Rounds",
    //     createHashMapFromArray [
    //         ["Model", "SPE_A5_Dropbag_Container_Ammo"],
    //         ["SquadLocks", ["IDF", "LOGI"]],
    //         ["WhitelistedRoles", []],
    //         ["BlacklistedRoles", []],
    //         ["Category", "Basic"],
    //         ["Offset", [0, 1, 1]],
    //         [
    //             "Items",
    //             createHashMapFromArray [
    //                 ["SPE_1Rnd_81mmHE_M1_M43A1", 48]
    //             ]
    //         ]
    //     ]
    // ],
    // [
    //     "81mm WP Rounds",
    //     createHashMapFromArray [
    //         ["Model", "SPE_A5_Dropbag_Container_Ammo"],
    //         ["SquadLocks", ["IDF", "LOGI"]],
    //         ["WhitelistedRoles", []],
    //         ["BlacklistedRoles", []],
    //         ["Category", "Basic"],
    //         ["Offset", [0, 1, 1]],
    //         [
    //             "Items",
    //             createHashMapFromArray [
    //                 ["SPE_1Rnd_81mmWP_M1_M57", 48]
    //             ]
    //         ]
    //     ]
    // ],
    // [
    //     "81mm Smoke Rounds",
    //     createHashMapFromArray [
    //         ["Model", "SPE_A5_Dropbag_Container_Ammo"],
    //         ["SquadLocks", ["IDF", "LOGI"]],
    //         ["WhitelistedRoles", []],
    //         ["BlacklistedRoles", []],
    //         ["Category", "Basic"],
    //         ["Offset", [0, 1, 1]],
    //         [
    //             "Items",
    //             createHashMapFromArray [
    //                 ["SPE_81mm_M1_M57_SmokeShell", 48]
    //             ]
    //         ]
    //     ]
    // ]
];

// Cache what is special
SpecialCategories = createHashMap;

ResupplyModelsUsed = createHashMap;

{
    private _crateName = _x;
    private _crateInfo = _y;

    private _model = _crateInfo get "Model";

    private _exists = ResupplyModelsUsed getOrDefault [_model, false];

    if(!_exists) then {
        ResupplyModelsUsed set [_model, true];
    };
    

    private _category = _crateInfo get "Category";

    if (isNil { _category }) then {
        continue
    };
    private _specialtyCost = _crateInfo getOrDefault ["SpecialtyCost", 0];

    if(_specialtyCost > 0) then {
        SpecialCategories set [_category, true];
    };
} forEach ResupplyCrates;



// Server sets this globally and persistent for JIP via missionNamespace variable at start up.
// One source of truth.
// Clients can get from missionNamespace with their squad name in an O(1) lookup for data pertaining to current status even if JIP.
if (isServer) then {

    "Server Init Config" call resupplyLog;
    {
        
        private _flagInfo = _x;

    
        private _squadNames = _flagInfo get "SquadNames";
        private _squadFlag = _flagInfo get "FlagName";
        format ["Squad Flag %1: %2", _squadFlag, _squadNames] call resupplyLog;

        private _specialtyResourceToStart = ResupplyCrateAllocations getOrDefault [_squadFlag, createHashMapFromArray [["SpecialtyAllocations", 0]]] get "SpecialtyAllocations";

        

        {
            
            private _squadName = _x;
            format ["SpecialtyResourceToStart set to %1 for %2", _specialtyResourceToStart, _squadName] call resupplyLog;
            // TODO: Verify this isn't going to break anything or have conflicts.
            missionNamespace setVariable [_squadName,
                createHashMapFromArray [
                    ["SpecialtyResources", _specialtyResourceToStart],
                    ["Crates", 0],
                    ["ResetTime", -1],
                    ["RecallResetTime", -1],
                    ["CanReset", true],
                    ["CrateObjects", []]
                ],
                true
            ];
        } forEach _squadNames;
    } forEach ResupplyRoleDescriptionToSquadFlags;
};