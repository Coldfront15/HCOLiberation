params ["_vehicle"];
private _vehicleClass = toLower (typeOf _vehicle);

// Cargo is always allowed
private _isCargo = (_vehicle getCargoIndex player) != -1;
if (_isCargo || _vehicle isKindOf "ParachuteBase") exitWith {};

// Door Gunners allowed
doorGunnerVehicle = [
    "LIB_C47_Skytrain"
];

private _bypass = false;
if (!isNil "bypass_perm_vehicles") then {
    
    if (typeOf _vehicle in bypass_perm_vehicles) exitWith {
        _bypass = true;
    };
};

if (_bypass == true) exitWith {};

private _role = [player] call RoleArsenal_DetermineRole;

if (_role == "HowLeader" || getPlayerUID player in KP_liberation_commander_actions) exitWith {};

if (_vehicleClass in KPLIB_typeReconClasses) then 
{
    // Only Scouts may drive Recon vehicles or Trader may for e.g. vehicle recovery
    private _validReconDriver = (_role in ["EngineerLeader", "Engineer", "Sct", "SctLeader", "Marksman"]);
    if (!_validReconDriver && ((((fullcrew [(vehicle player), "driver"]) select 0) select 0) == player)) exitWith
    {
        moveOut player;
        hint "Only Scouts/Logistics can use recon vehicles.";
    };
};



if (_vehicleClass in KPLIB_typeMedicalClasses) then 
{
    // Only Medics may drive Medical vehicles
    private _validMedDriver = (_role in ["Medic", "Engineer", "EngineerLeader"]);
    if (!_validMedDriver && ((((fullcrew [(vehicle player), "driver"]) select 0) select 0) == player)) exitWith
    {
        moveOut player;
        hint "Only Medics/Logistics can use medical vehicles.";
    };
};

if (_vehicleClass in KPLIB_typeGroundLogiClasses) then 
{
    // Only Trader may drive logistics vehicles
    private _validMedDriver = (_role in ["Engineer", "EngineerLeader"]);
    if (!_validMedDriver && ((((fullcrew [(vehicle player), "driver"]) select 0) select 0) == player)) exitWith
    {
        moveOut player;
        hint "Only Engineers can use logistics vehicles.";
    };
};

if (_vehicleClass in KPLIB_typeArtilleryClasses) then {
    // Only Thunder may operate artillery vehicles
    private _validArtyDriver = (_role in ["ArtilleryLeader", "Artillery"]);
    if (!_validArtyDriver) exitWith
    {
        moveOut player;
        hint "Only Artillery can use artillery vehicles.";
    };
};

if (_vehicleClass in KPLIB_typeATGMClasses) then {
    // Only Trader may operate ATGM vehicles
    private _validATGMDriver = (_role in ["Engineer", "EngineerLeader", "WSL"]);
    if (!_validATGMDriver) exitWith
    {
        moveOut player;
        hint "Only Logistics can use ATGM vehicles.";
    };
};

if (_vehicleClass in KPLIB_typeAAClasses) then {
    // Only Trader may operate AA vehicles
    private _validAADriver = (_role in ["Engineer", "EngineerLeader", "WSL"]);
    if (!_validAADriver) exitWith
    {
        moveOut player;
        hint "Only Logistics can use AA vehicles.";
    };
};

if (_vehicleClass in KPLIB_typeHeavyClasses) then 
{
    //if ((_role in ["SL", "PL", "PSgt"]) && ((((fullcrew [(vehicle player), "commander"]) select 0) select 0) == player)) exitWith {};
    private _validArmorCrew = (getPlayerUID player in libArmor) && (_role in ["TankDriver", "TankGunner", "TankCommander", "Engineer", "EngineerLeader"]);
    if (!_validArmorCrew) exitWith
    {
        moveOut player;
        hint "Only Anvil can use armored vehicles.";
    };
};

if (_vehicleClass in KPLIB_typeRotaryLogiClasses) then
{
    private _validRotaryCrew = (getPlayerUID player in libRotaryLogi) && (_role in ["ChiefPilot"]);

    if (_vehicleClass in doorGunnerVehicle) exitWith 
    {
        if ((((fullcrew [(vehicle player), "gunner"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "turret"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "commander"]) select 0) select 0) == player) exitWith 
        {
        };
    };

    if (!_validRotaryCrew) exitWith
    {
        if ((((fullcrew [(vehicle player), "gunner"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "turret"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "commander"]) select 0) select 0) == player) exitWith 
        {
        };
        moveOut player;
        hint "Only Chief can use fixed wing logistics vehicles.";
    };      
};

if (_vehicleClass in KPLIB_typeRotaryCasClasses) exitWith
{
    private _validRotaryCASCrew = (getPlayerUID player in libRotaryCas) && (_role in ["ChiefPilot"]);
    
   if (_vehicleClass in doorGunnerVehicle) exitWith 
    {
        if ((((fullcrew [(vehicle player), "gunner"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "turret"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "commander"]) select 0) select 0) == player) exitWith 
        {
        };
    };
    if (!_validRotaryCASCrew) exitWith
    {
        if ((((fullcrew [(vehicle player), "gunner"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "turret"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "commander"]) select 0) select 0) == player) exitWith 
        {
        };
        moveOut player;
        hint "Only Chief can use fixed wing vehicles.";
    };
};

if (_vehicleClass in KPLIB_typeFixedWingClasses) exitWith
{
    private _validFixedWingCrew = (getPlayerUID player in libFixedWing) && (_role in ["ChiefPilot"]);

   if (_vehicleClass in doorGunnerVehicle) then 
    {
        if ((((fullcrew [(vehicle player), "gunner"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "turret"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "commander"]) select 0) select 0) == player) exitWith 
        {
        };
    };
    if (!_validFixedWingCrew) exitWith
    {
        if ((((fullcrew [(vehicle player), "gunner"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "turret"]) select 0) select 0) == player) exitWith 
        {
        };
        if ((((fullcrew [(vehicle player), "commander"]) select 0) select 0) == player) exitWith 
        {
        };
        moveOut player;
        hint "Only Chief can use fixed wing vehicles.";
    };
};