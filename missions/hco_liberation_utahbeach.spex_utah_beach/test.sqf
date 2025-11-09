if (!isServer) exitWith {};

[this, {}] call acre_api_fnc_initVehicleRacks;

[{
    params ["_vehicle"];
    if (!alive _vehicle) exitWith {};

    private _vehicleRacks = [_vehicle] call acre_api_fnc_getVehicleRacks;
    for "_i" from (count _vehicleRacks) - 1 to 0 step -1 do {
        [_vehicle, _vehicleRacks select _i] call acre_api_fnc_removeRackFromVehicle;
    };

    [_vehicle, ["ACRE_VRC64", "Radio Set - Alpha", "Set A", false, ["driver","copilot"], [], "ACRE_PRC77", [], ["Intercom_1"]], false, {}] call acre_api_fnc_addRackToVehicle;
    [_vehicle, ["ACRE_VRC64", "Radio Set - Bravo", "Set B", false, ["driver","copilot"], [], "ACRE_PRC77", [], ["Intercom_1"]], false, {}] call acre_api_fnc_addRackToVehicle;
}, 

[this], 0.5] call CBA_fnc_waitAndExecute;

