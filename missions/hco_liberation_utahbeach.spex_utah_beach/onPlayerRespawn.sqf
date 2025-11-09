waitUntil {!isNil "KPLIB_initServer"};

params ["_newUnit", "_oldUnit"];

[player] remoteExec ["requestResupplyFlags", 2];

removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;
player unassignItem "";
player removeItem "";

// Make sure any changes here are reflected in starter gear list arsenal_presets\rolearsenal_config.sqf
if (side player == GRLIB_side_friendly) then {

    player addHeadgear selectRandom RA_StartingHeadwear;
    player addGoggles selectRandom RA_StartingGoggles;
    player forceAddUniform selectRandom RA_StartingUniforms;
    {
        player linkItem _x;
    } forEach RA_StartingItems;
};

// if (side player == GRLIB_side_enemy) then {
    
//     player forceAddUniform OpForStartingUniform;
//     {
//         player linkItem _x;
//     } forEach Op_StartingItems;
// };

[] call KPLIB_fnc_addActionsPlayer; 

// Loop through all arsenals, and init role restricted arsenal.
// This fixes a bug where when a player joins, 
// they don't have their description or some shit like that.
{
    private _box = _x;
    if (!isNull _box) then 
    {
        //KARMA_ARSENAL_CRATES deleteAt (KARMA_ARSENAL_CRATES find _x);
        [_box, player] call roleArsenal;
    };
} forEach KARMA_ARSENAL_CRATES;

// {
//     private _box = _x;
//     if (!isNull _box) then 
//     {
//         clearMagazineCargoGlobal _box;
// 	    clearItemCargoGlobal _box;
// 	    clearBackpackCargoGlobal _box;
// 	    clearWeaponCargoGlobal _box;

//         if (side player == GRLIB_side_enemy) then {
//             [_box, false] call ace_arsenal_fnc_removeBox;
// 	        _items = [player] call OpforArsenal_DetermineGear;
// 	        [_box, _items, false] call ace_arsenal_fnc_initBox;
//         };
//     };
// } forEach OPFOR_ARSENAL_CRATES;

private _blacklistedMods = ["CH Bright Nights"];

private _loadedMods = getLoadedModsInfo;
{
    _modName = _x;
    {
        if  (_x#0 find _modName > -1 || _x#1 find _modName > -1) then {
            [format ["You are using a mod that isn't allowed on the Liberation server. (%1)", _modName], "Use of Unapproved Mod", "I Understand"] call BIS_fnc_guiMessage;
            endMission "BlacklistedMod";
        };
    } forEach _loadedMods;
} forEach _blacklistedMods;


private _role = [player] call RoleArsenal_DetermineRole;

abortPlayerWithoutPerms = {
    ["You have selected a role you do not have permissions for. If you would like to apply, visit https://discord.gg/j2uhxmr. You will be kicked to the lobby, please select a different role.", "Restricted Role", "I Understand"] call BIS_fnc_guiMessage;
    endMission "END1"; 
};

// abortNonEvilDoersPlayer = {
//     ["OPFOR slots are reserved for EvilDoers members.", "Restricted Role", "I Understand"] call BIS_fnc_guiMessage;
//     endMission "EndNonEvilDoers"; 
// };

if (side player == GRLIB_side_friendly) then {
    switch (_role) do {
        case "HowLeader": {
            if (!(getPlayerUID player in KP_liberation_commander_actions)) then {[] call abortPlayerWithoutPerms};
            localnamespace setvariable [ "AdminSlot", true ];
            showChat true;
        };
        case "Havoc8";
        case "HowBaker": {
            if (!(getPlayerUID player in libCompanyCmd)) then {[] call abortPlayerWithoutPerms};
        };
        case "SctLeader";
        case "Sct": { 
            if (!(getPlayerUID player in libRecce)) then {[] call abortPlayerWithoutPerms};
        }; 
        // 2022-07-11 Oats - Vehicle Driver and Gunner slots added to each Squad, can sometimes operate non-perm vehicles
        case "TankGunner";
        case "TankDriver";
        case "TankLeader": {
            if (!(getPlayerUID player in libArmor)) then {[] call abortPlayerWithoutPerms};
        };
        // case "ChiefPilot": {
        //     if (!(getPlayerUID player in libRotaryLogi)) then {[] call abortPlayerWithoutPerms};
        // };
        // case "ChiefPilot": {
        //     if (!(getPlayerUID player in libRotaryCas)) then {[] call abortPlayerWithoutPerms};
        // };
        case "ChiefPilot": {
            if (!(getPlayerUID player in libFixedWing)) then {[] call abortPlayerWithoutPerms};
        };
        case "EngineerLeader";
        case "Engineer": {
            if (!(getPlayerUID player in libBuild)) then {[] call abortPlayerWithoutPerms};
        };
        // case "Medic": {
        //     if (getPlayerUID player in libMedicBlacklist) then {[] call abortPlayerWithoutPerms};
        // };
        default { };
    };
};

//--- This should work, just teleports them back requardless then the abortPlayerWithoutPerms will do the rest
// if ( playerside isequalto GRLIB_side_enemy ) then {
//     if ( !( getplayeruid player in EvilDoers ) ) then { [] call abortNonEvilDoersPlayer };
//     //private _marker = "EvilDoers_base";
//     //player setposatl getmarkerpos _marker;
//     //player setdir markerdir _marker;
// };

// Support Module handling
if ([
    false,
    player isEqualTo ([] call KPLIB_fnc_getCommander) || (getPlayerUID player) in KP_liberation_suppMod_whitelist,
    true
] select KP_liberation_suppMod) then {
    waitUntil {!isNil "KPLIB_suppMod_req" && !isNil "KPLIB_suppMod_arty" && time > 5};

    // Remove link to corpse, if respawned
    if (!isNull _oldUnit) then {
        KPLIB_suppMod_req synchronizeObjectsRemove [_oldUnit];
        _oldUnit synchronizeObjectsRemove [KPLIB_suppMod_req];
    };

    // Link player to support modules
    [player, KPLIB_suppMod_req, KPLIB_suppMod_arty] call BIS_fnc_addSupportLink;

    // Init modules, if newly joined and not client host
    if (isNull _oldUnit && !isServer) then {
        [KPLIB_suppMod_req] call BIS_fnc_moduleSupportsInitRequester;
        [KPLIB_suppMod_arty] call BIS_fnc_moduleSupportsInitProvider;
    };
};
