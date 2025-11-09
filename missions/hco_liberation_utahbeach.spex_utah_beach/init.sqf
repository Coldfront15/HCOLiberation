KPLIB_init = false;
// Version of the KP Liberation framework
KP_liberation_version = [0, 96, "7a"];

enableSaving [ false, false ];

// INIT ADMIN LOG MODULE ON SERVER
if (isServer) then {
    [] call compileFinal preprocessFileLineNumbers "modules\admin_log\server\index.sqf";
};

cleanUpBodies = 
{
    diag_log "cleanUpBodies - Cleaning up all dead bodies.";
    {
        deleteVehicle _x;
    } forEach allDeadMen;

    private _groundObjects = allMissionObjects "GroundWeaponHolder";

    { 
        deleteVehicle _x;
    } forEach _groundObjects;

    [cleanUpBodies, [], 600] call CBA_fnc_waitAndExecute;
};

if (isDedicated) then {debug_source = "Server";} else {debug_source = name player;};

[] call KPLIB_fnc_initSectors;
if (!isServer) then {waitUntil {!isNil "KPLIB_initServer"};};

//Initialize global list of arsenal crates (added in kp_objectinits)
KARMA_ARSENAL_CRATES = [];
OPFOR_ARSENAL_CRATES = [];
[] call compileFinal preprocessFileLineNumbers "modules\battlespace_ai\index.sqf";

[] call compileFinal preprocessFileLineNumbers "scripts\shared\fetch_params.sqf";
[] call compileFinal preprocessFileLineNumbers "kp_liberation_config.sqf";


if (isDedicated) then 
{
    [] call compileFinal preprocessFileLineNumbers "\userconfig\perms\perms.sqf";
    [] call compileFinal preprocessFileLineNumbers "\userconfig\EvilDoers\EvilDoersWhitelist.sqf";
    [{
        call SPE_Fnc_System_Vehicles_Static_TurnHandler;
    
    }, 0] call SPE_Core_fnc_addPerFrameHandler;
    publicVariable "EvilDoers";
    [
                "Example",
                "",
                "War Correspondence",
                "",
                false,
                [
                    [
                        "Starting Server", // Player has joined/left the server
                        "Server will be ready shortly.", // desc of some kind or skip?
                        "",
                        "",
                        true,
                        "",
                        "https://i.imgur.com/nOvxSOS.png",
                        [],
                        [],
                        []
                    ]
                ]
            ] call DiscordEmbedBuilder_fnc_buildSqf;
};
if (isServer && hasInterface) then 
{
    [] call compileFinal preprocessFileLineNumbers "perms_non_dedicated.sqf";
};

[] call compileFinal preprocessFileLineNumbers "presets\init_presets.sqf";
[] call compileFinal preprocessFileLineNumbers "arsenal_presets\rolearsenal.sqf";
// [] call compileFinal preprocessFileLineNumbers "arsenal_presets\opforarsenal_TALIBAN.sqf";
[] call compileFinal preprocessFileLineNumbers "kp_objectInits.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\crate-resupply\init.sqf";

[] call compileFinal preprocessFileLineNumbers "scripts\shared\init_shared.sqf";
[] call compileFinal preprocessFileLineNumbers "scripts\libZeusActions\index.sqf";

if (isServer) then {
    [] call compileFinal preprocessFileLineNumbers "scripts\server\ewr\init.sqf";
    [] call compileFinal preprocessFileLineNumbers "scripts\server\init_server.sqf";
	
	[{removeAllMissionEventHandlers "handledisconnect";}, [], 120] call CBA_fnc_waitAndExecute;
	[] call cleanUpBodies;
};

if (!isServer && !hasInterface) then {
    execVM "scripts\server\offloading\hc_manager.sqf";
    setViewDistance 1600;

    // If you're enabling the hc_manager.sqf, delete this
    //execVM "scripts\server\offloading\show_fps.sqf";
};

if (!isDedicated && hasInterface) then {

    [] call compileFinal preprocessFileLineNumbers "scripts\ragequitblocker\index.sqf";
    // Add EH for curator to add kill manager and object init recognition for zeus spawned units/vehicles
    {
        _x addEventHandler ["CuratorObjectPlaced", {[_this select 1] call KPLIB_fnc_handlePlacedZeusObject;}];
    } forEach allCurators;

    waitUntil {alive player};
    if (debug_source != name player) then {debug_source = name player};
    [] call compileFinal preprocessFileLineNumbers "scripts\client\init_client.sqf";

	addMissionEventHandler 
		["HandleDisconnect", 
			{
				params ["_unit", "_id", "_uid", "_name"];
				_unit setDamage 1;
			}
		];

        //--- Removes system chat (Stream/Video Security)
        addmissioneventhandler [ 
        	"eachframe", 
        	{ 
        		if ( 
        			shownchat 
        			&& (
        				!( localnamespace getvariable [ "DebugEnableChat", false ] ) 
            			&& !( localnamespace getvariable [ "AdminSlot", false ] ) 
        			)
        		) then { showchat false } 
        	} 
        ]

} else {
    setViewDistance 1600;
};

// Execute fnc_reviveInit again (by default it executes in postInit)
if ((isNil {player getVariable "bis_revive_ehHandleHeal"} || isDedicated) && !(bis_reviveParam_mode == 0)) then {
    [] call bis_fnc_reviveInit;
};

KPLIB_init = true;

// Notify clients that server is ready
if (isServer) then {
    GRLIB_all_cops = [];
    publicVariable "GRLIB_all_cops";
    GRLIB_cop_count = 0;
    publicVariable "GRLIB_cop_count";
    GRLIB_max_cops = 1;
    publicVariable "GRLIB_max_cops";
    OPFOR_all_cops = [];
    publicVariable "OPFOR_all_cops";
    OPFOR_cop_count = 0;
    publicVariable "OPFOR_cop_count";
    OPFOR_max_cops = 4;
    publicVariable "OPFOR_max_cops";
    KPLIB_initServer = true;
    publicVariable "KPLIB_initServer";
    AWS_AMS_Disable = true;
    publicVariable "AWS_AMS_Disable";

};

CHBN_adjustBrightness = 0.1;

if(isServer) then {
    [] call compileFinal preprocessFileLineNumbers "scripts\server\ai\fixLoadoutBug.sqf";
};

