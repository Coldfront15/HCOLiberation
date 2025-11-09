//HEY IF YOU NEED TO CHANGE FACTION PRESETS FILES ARTE HERE: 
// KC_Liberation_Master_Framework\scripts\client\init_client.sqf
// KC_Liberation_Master_Framework\scripts\server\init_server.sqf

// Default loadoats loosely for each role, should be usable even if grey from some parts not being available to that role
// Default set by Oats, intended to use shared gear and maximise compatibility with any changes
private _StandardUniformContents = [
	["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_Flashlight_XL50",1],["ACE_IR_Strobe_Item",2],["ACE_CableTie",2],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_packingBandage",3],["ACE_fieldDressing",2]
];
private _StandardBackpackContents = [
	["ACE_plasmaIV_250",1],["ACE_plasmaIV_500",2],["ACE_EarPlugs",1]
];
private _StandardInfantryWeapon = [
	"SPE_M1_Garand","","","",["",8],[],""
];
private _standardPilotWeapon = ["SPE_M1_Carbine","","","",["SPE_15Rnd_762x33",15],[],""];

private _DefaultLoadouts = [
];

// Seems to get sorted alphabetically for display
private _DefaultLoadoutsHashmap = createHashMapFromArray(
	_DefaultLoadouts
);
{
	[_x, _y] call ace_arsenal_fnc_addDefaultLoadout;
} forEach _DefaultLoadoutsHashmap;
