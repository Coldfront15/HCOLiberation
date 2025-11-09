KPLIB_objectInits = [

	// Add helipads to zeus, as they can't be recycled after built
    [
        ["Helipad_base_F","Helipad"],
        {{[_x, [[_this], true]] remoteExecCall ["addCuratorEditableObjects", 2]} forEach allCurators;},
        true
    ],

    // Add ViV and build action to FOB box/truck
    [
        [FOB_box_typename, FOB_truck_typename],
        {
            [_this] spawn {
                params ["_fobBox"];
                waitUntil {sleep 0.1; time > 0};
                [_fobBox] call KPLIB_fnc_setFobMass;
                if ((typeOf _fobBox) isEqualTo FOB_box_typename) then {
                    [_fobBox] call KPLIB_fnc_setFobMass;
                    [_fobBox] remoteExecCall ["KPLIB_fnc_setLoadableViV", 0, _fobBox];
                };
                [_fobBox] remoteExecCall ["KPLIB_fnc_addActionsFob", 0, _fobBox];
            };
        }
    ],

    // Add FOB building damage handler override and repack action
    [
        [FOB_typename],
        {
            _this addEventHandler ["HandleDamage", {0}];
            [_this] spawn {
                params ["_fob"];
                waitUntil {sleep 0.1; time > 0};
                [_fob] remoteExecCall ["KPLIB_fnc_addActionsFob", 0, _fob];
            };
        }
    ],

    // Add storage type variable to built storage areas (only for FOB built/loaded ones)
    [
        [KP_liberation_small_storage_building, KP_liberation_large_storage_building],
        {_this setVariable ["KP_liberation_storage_type", 0, true];}
    ],

    // Add ACE variables to corresponding building types
    [
        [KP_liberation_recycle_building],
        {_this setVariable ["ace_isRepairFacility", 1, true];}
    ],
    [
        KP_liberation_medical_facilities,
        {_this setVariable ["ace_medical_isMedicalFacility", true, true];}
    ],    
    [
        KP_liberation_medical_vehicles,
        {_this setVariable ["ace_medical_isMedicalVehicle", true, true];}
    ],

    // Make sure a slingloaded object is local to the helicopter pilot
    [
        ["Helicopter"],
        {if (isServer) then {[_this] call KPLIB_fnc_addRopeAttachEh;} else {[_this] remoteExecCall ["KPLIB_fnc_addRopeAttachEh", 2];};},
        true
    ],

    // Add valid vehicles to support module, if system is enabled
    [
        KP_liberation_suppMod_artyVeh,
        {if (KP_liberation_suppMod > 0) then {KPLIB_suppMod_arty synchronizeObjectsAdd [_this];};}
    ],
    // Disable autocombat (if set in parameters) and fleeing
    [
        ["Man"],
        {
            if (!(GRLIB_autodanger) && {(side _this) isEqualTo GRLIB_side_friendly}) then {
                _this disableAI "AUTOCOMBAT";
            };
            _this allowFleeing 0;

            if((side _this) isEqualTo GRLIB_side_enemy) then {
                _this linkItem "";
            };
            if((typeOf _this) == opfor_rto) then {
                _this setUnitLoadout [opfor_rto_loadout, true];
                [ 
                    { _this call BATTLESPACE_ARTILLERY_OBSERVER_COROUTINE }, 
                    10, 
                    [_this] 
                ] call CBA_fnc_addPerFrameHandler;
            };
        },
        true
    ],
	
    [
        ["Land_Billboard_03_blank_F"],
        {
            _this setObjectTextureGlobal [0, "res\101Admin1.paa"];
        }
    ],
	
	[
        ["Land_Billboard_F"],
        {
            _this setObjectTextureGlobal [0, "res\101Rules.paa"];
        }
    ],
	
    [
        ["Land_Billboard_03_bluking_F"],
        {
            _this setObjectTextureGlobal [0, "res\report_rules.paa"];
        }
    ],
	
	[
        ["Land_Billboard_03_aan_F"],
        {
            _this setObjectTextureGlobal [0, "res\101Radio.paa"];
        }
    ],
	
	[
        ["Land_Billboard_03_cheese_F"],
        {
            _this setObjectTextureGlobal [0, "res\101Tutorial.paa"];
        }
    ],

     //START VIC CUSTOMIZATION

    [
        ["SPE_Jagdpanther_G1"],
        {
            [
                _this, 
                ["Zimmerit_Camo4",1], 
                ["hide_bucket_source",0,"hide_cleaning_rod_container_left_source",1,"hide_cleaning_rod_container_rear_source",0,"hide_markings_source",0,"hide_protective_grill_source",0,"hide_spare_tracks_left_source",0,"hide_spare_tracks_right_source",0,"hide_spare_wheel_source",0,"hide_stowage_box_high_source",0,"hide_stowage_box_low_left_source",0,"hide_stowage_box_low_right_source",0,"hide_tools_left_source",0,"hide_tools_right_source",0,"hide_tow_cable_left_source",0,"hide_tow_cable_right_source",0,"hide_shields_source",0,"show_shields_source",0,"hide_skirt_h_l_1_source",1,"hide_skirt_h_l_2_source",0,"hide_skirt_h_l_3_source",0,"hide_skirt_h_l_4_source",0,"hide_skirt_h_l_5_source",0,"hide_skirt_h_r_1_source",0,"hide_skirt_h_r_2_source",0,"hide_skirt_h_r_3_source",0,"hide_skirt_h_r_4_source",0,"hide_skirt_h_r_5_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_Jagdpanther_G1"],
        {
            [
                _this, 
                ["woodland",1], 
                true
            ] call BIS_fnc_initVehicle;
        }
    ],  

    [
        ["SPE_Nashorn"],
        {
            [
                _this,
                ["camo_6",1],
                ["markings_hide_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_StuH_42"],
        {
            [
                _this,
                ["Zimmerit_Camo5",1],
                ["hide_muzzle_brake_source",0,"hide_shield_brackets_source",0,"show_shields_source",0,"hide_skirt_h_l_1_source",0,"hide_skirt_h_l_2_source",0,"hide_skirt_h_l_3_source",0,"hide_skirt_h_l_4_source",0,"hide_skirt_h_r_1_source",0,"hide_skirt_h_r_2_source",0,"hide_skirt_h_r_3_source",0,"hide_skirt_h_r_4_source",0,"hide_markings_source",0,"hide_antenna_source",0,"hide_spare_wheels_source",0,"hide_stowage_bracket_source",0,"hide_tools_right_source",0,"hide_tools_left_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_StuG_III_G_Late"],
        {
            [
                _this,
                ["Camo6",1],
                ["hide_shield_brackets_source",0,"show_shields_source",0,"hide_skirt_h_l_1_source",0,"hide_skirt_h_l_2_source",0,"hide_skirt_h_l_3_source",0,"hide_skirt_h_l_4_source",0,"hide_skirt_h_r_1_source",0,"hide_skirt_h_r_2_source",0,"hide_skirt_h_r_3_source",0,"hide_skirt_h_r_4_source",0,"hide_markings_source",0,"hide_antenna_source",0,"hide_spare_wheels_source",0,"hide_stowage_bracket_source",0,"hide_tools_right_source",0,"hide_tools_left_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_StuG_III_G_Late"],
        {
            [
                _this,
                ["Camo6",1],
                ["hide_shield_brackets_source",0,"show_shields_source",0,"hide_skirt_h_l_1_source",0,"hide_skirt_h_l_2_source",0,"hide_skirt_h_l_3_source",0,"hide_skirt_h_l_4_source",0,"hide_skirt_h_r_1_source",0,"hide_skirt_h_r_2_source",0,"hide_skirt_h_r_3_source",0,"hide_skirt_h_r_4_source",0,"hide_markings_source",0,"hide_antenna_source",0,"hide_spare_wheels_source",0,"hide_stowage_bracket_source",0,"hide_tools_right_source",0,"hide_tools_left_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],
    

    [
        ["SPE_StuG_III_G_Early"],
        {
            [
                _this,
                ["Camo5",1],
                ["hide_markings_source",0,"hide_antenna_source",0,"hide_spare_wheels_source",0,"hide_stowage_bracket_source",0,"hide_tools_right_source",0,"hide_tools_left_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_PzKpfwVI_H1"],
        {
            [
                _this,
                ["Camo3",1],
                ["skirts_hide_source",0,"tools_hide_source",0,"air_filters_hide_source",0,"hull_armour_hide_source",0,"turret_armour_hide_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_SdKfz250_1"],
        {
            [
                _this,
                ["Dunkelgelb_Camo5",1],
                ["stowage_hide_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_OpelBlitz_Flak38"],
        {
            [
                _this,
                [selectRandom ["Camo1","Camo3"],1], 
                true
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_OpelBlitz_Ammo"],
        {
            [
                _this,
                [selectRandom ["Camo1","Camo3"],1], 
                true
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_OpelBlitz_Fuel"],
        {
            [
                _this,
                [selectRandom ["Camo1","Camo3"],1], 
                true
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_OpelBlitz_Open"],
        {
            [
                _this,
                [selectRandom ["Camo1","Camo3"],1], 
                true
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["LIB_SdKfz251"],
        {
            [
                _this,
                [selectRandom ["camo1","tarn51"],1], 
                true
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_GER_R200_Unarmed"],
        {
            [
                _this,
                ["Camo1",1],
                ["hide_canopy_source",1,"hide_spare_wheel_source",0,"hide_shovel_source",0,"hide_jack_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_GER_R200_MG34"],
        {
            [
                _this,
                ["Camo4",1],
                ["hide_spare_wheel_source",0,"hide_shovel_source",0,"hide_jack_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_GER_R200_Hood"],
        {
            [
                _this,
                ["Camo5",1],
                ["hide_canopy_source",0,"hide_spare_wheel_source",0,"hide_shovel_source",0,"hide_jack_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_US_G503_MB_Open"],
        {
            [
                _this,
                ["AB101st",1], 
	            ["hide_canopy_source",1,"hide_bridge_marking_source",0,"hide_jerry_can_source",0,"hide_mirrors_source",0,"hide_musette_source",0,"hide_radio_source",0,"hide_spare_wheel_source",0,"hide_straps_source",0,"hide_tools_source",0,"hide_wire_catcher_source",1]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_US_G503_MB"],
        {
            [
                _this,
                ["AB101st",1], 
	            ["hide_canopy_source",1,"hide_bridge_marking_source",0,"hide_jerry_can_source",0,"hide_mirrors_source",0,"hide_musette_source",0,"hide_radio_source",0,"hide_spare_wheel_source",0,"hide_straps_source",0,"hide_tools_source",0,"hide_wire_catcher_source",1]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_M20_AUC"],
        {
            [
                _this,
                ["Normandy_Camo",1], 
	            ["fenders_hide_front_source",0,"fenders_hide_rear_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_M8_LAC"],
        {
            [
                _this,
                ["Normandy_Camo",1], 
	            ["fenders_hide_front_source",0,"fenders_hide_rear_source",0]
            ] call BIS_fnc_initVehicle;
        }
    ],

    [
        ["SPE_OpelBlitz"],
        {
            [
                _this,
                [selectRandom ["Camo1","Camo3"],1], 
                true
            ] call BIS_fnc_initVehicle;
        }
    ]
       
];
// Role arsenal

[Arsenal_typename, "init",
    { 
        private _box = (_this select 0);
        private _player = player;

        //diag_log format ["WATERGARD - ROLE ARSENAL EH Role: %1", roleDescription _player];

        /*
        // Loop through every box just to be safe.
        {
            [_box, _player] call roleArsenal;          
        } forEach KARMA_ARSENAL_CRATES;
        */
        
        KARMA_ARSENAL_CRATES pushback _box;
        [roleArsenal, [_box, _player], 5] call CBA_fnc_waitAndExecute;
    },
    true,
    [],
    true
] call CBA_fnc_addClassEventHandler;

// ---------------------- Disable ACE cargo for resource crates ----------------------

[KP_liberation_supply_crate, "init",
    {
        [_this select 0, 999] call ace_cargo_fnc_setSize;
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["O_Radar_System_02_F", "init",
    { 
        [EvaluateRadarTargets, [_this select 0, opfor, true], 5] call CBA_fnc_waitAndExecute; 
        (_this select 0) call itc_land_cobra_fnc_vehicleInit;
    },
    true,
    [],
    true
] call CBA_fnc_addClassEventHandler;

["B_Radar_System_01_F", "init",
    { 
        [EvaluateRadarTargets, [_this select 0, blufor, true], 5] call CBA_fnc_waitAndExecute; 
        (_this select 0) call itc_land_cobra_fnc_vehicleInit;
    },
    true,
    [],
    true
] call CBA_fnc_addClassEventHandler;

[KP_liberation_ammo_crate, "init",
    {
        [_this select 0, 999] call ace_cargo_fnc_setSize;
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

[KP_liberation_fuel_crate, "init",
    {
        [_this select 0, 999] call ace_cargo_fnc_setSize;
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["SPE_CCKW_353_Fuel", "init",
    {
      [(_this select 0), 100] call ace_refuel_fnc_makeSource;
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["SPE_CCKW_353_Ammo", "init",
    {
        [(_this select 0), 1200] call ace_rearm_fnc_makeSource;
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["SPE_CCKW_353_Repair", "init",
    {

        (_this select 0) setVariable ["ace_repair_canRepair", 1, true];
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["SPE_CCKW_353_Ambulance", "init",
    {
        (_this select 0) setVariable ["ace_medical_isMedicalVehicle", 1, true];
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["SPE_US_G503_MB_Ambulance", "init",
    {
        (_this select 0) setVariable ["ace_medical_isMedicalVehicle", 1, true];
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["SPEX_T3_Trailer", "init",
    {
        [_this select 0, 8] call ace_cargo_fnc_setSpace;
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["SPEX_T3_Trailer_Ammo", "init",
    {
        [_this select 0, 8] call ace_cargo_fnc_setSpace;
        [(_this select 0), 1200] call ace_rearm_fnc_makeSource;
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["SPEX_T3_Trailer_Fuel", "init",
    {
        [_this select 0, 8] call ace_cargo_fnc_setSpace;
        [(_this select 0), 100] call ace_refuel_fnc_makeSource;
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["SPEX_T3_Trailer_Repair", "init",
    {
        [_this select 0, 8] call ace_cargo_fnc_setSpace;
        (_this select 0) setVariable ["ace_repair_canRepair", 1, true];
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;


["B_Slingload_01_Repair_F", "init",
    {
        [_this select 0, 9] call ace_cargo_fnc_setSize;
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["B_Slingload_01_Ammo_F", "init",
    {
        [_this select 0, 9] call ace_cargo_fnc_setSize;
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;

["B_Slingload_01_Fuel_F", "init",
    {
        [_this select 0, 9] call ace_cargo_fnc_setSize;
    },
    true, 
    [], 
    true
] call CBA_fnc_addClassEventHandler;



// Humanitarian ration/cig system

{
  [_x, "init",
    {
        _conditions = "!(_target getVariable ['CivilianSatiated', false])";
        (_this select 0) addaction ["Give Ration", 
        {
            params ["_target","_caller","_actionId","_arguments"];
           private _items = [
                "simc_krat_e_b_weap",
                "simc_krat_l_b_weap",
                "simc_krat_e_d_weap",
                "simc_krat_l_d_weap",
                "simc_krat_e_s_weap",
                "simc_krat_l_s_weap"
            ] arrayIntersect (vestItems _caller + uniformItems _caller + backpackItems _caller);

            if !(_items isEqualTo []) then {
            _caller removeItem (selectRandom _items);
            _target setVariable ["CivilianSatiated", true, true];
            [_target] call ace_interaction_fnc_sendAway;

            private _amount = 1;

            if ((random 100) < 40) then {
                _amount = 2;
            };

            if((random 100) < 20) then {
                _amount = 3;
            };
            [_amount] remoteExecCall ["F_cr_changeCR"];
            hintC format ["%1 thanks you for the ration you gave them.", name _target];
            hintC_EH = findDisplay 57 displayAddEventHandler ["Unload", {
                _this spawn {
                    _this select 0 displayRemoveEventHandler ["Unload", hintC_EH];
                    hintSilent "";
                };
            }];
            } else {hint "You don't have any rations."};
        },
        nil, 1.5, true, true, "", _conditions, 3
        ];
    },
    false,
    [],
    true
  ] call CBA_fnc_addClassEventHandler;
} forEach civilians;

{
  [_x, "init",
    {
        _conditions = "!(_target getVariable ['CivilianHelped', false])";
        (_this select 0) addaction ["Pass cigarette", 
        {
            params ["_target","_caller","_actionId","_arguments"];
           private _items = [
                "murshun_cigs_cig0",
                "immersion_cigs_cigar0",
                "murshun_cigs_cig0_nv",
                "immersion_cigs_cigar0_nv"
            ] arrayIntersect (vestItems _caller + uniformItems _caller + backpackItems _caller);

            if !(_items isEqualTo []) then {
            private _cigarette = (selectRandom _items);
            _caller removeItem _cigarette;
            _target setVariable ["CivilianHelped", true, true];
            removeGoggles _target; 
            removeAllAssignedItems _target;
            _target linkItem _cigarette;
            [_target] call murshun_cigs_fnc_start_cig;

            private _amount = 1;

            if ((random 100) < 40) then {
                _amount = 2;
            };

            if((random 100) < 20) then {
                _amount = 3;
            };
            
            [_amount] remoteExecCall ["F_cr_changeCR"];

            hintC format ["%1 thanks you for the cigarette you gave them.", name _target];
            hintC_EH = findDisplay 57 displayAddEventHandler ["Unload", {
                _this spawn {
                    _this select 0 displayRemoveEventHandler ["Unload", hintC_EH];
                    hintSilent "";
                };
            }];
            } else {hint "You don't have any cigarettes."};
        },
        nil, 1.5, true, true, "", _conditions, 3
        ];
    },
    false,
    [],
    true
  ] call CBA_fnc_addClassEventHandler;
} forEach civilians;
