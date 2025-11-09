
// Entries further on will override earlier matches. (Only really applicable to Butcher)
RoleArsenal_SubstrToRole = [
	["Company Commander", "HowLeader"],
	["Executive", "HowBaker"],
	["Scout Leader", "SctLeader"],
	["Scout", "Sct"],
	["Marksman", "Marksman"],
	["Platoon Commander", "PL"],
	["Radio", "RATELO"],
	["Platoon Sergeant", "PSgt"],
	["Squad Leader", "SL"],
	["Assistant Squad Leader", "TL"],
	["Aidman", "Medic"],

	// Needs to be below medic to get proper kit. Otherwise it uses medic.
	["Flight Leader", "ChiefPilot"],
	["Grenadier", "Grenadier"],
	["Chief", "ChiefPilot"],
	["Aviator", "ChiefPilot"],
	["Rifleman", "Rifleman"],
	["Automatic Rifleman", "ARifleman"],
	["Motor", "EngineerLeader"],
	["Engineer", "Engineer"],
	["Tank Driver", "TankDriver"],
	["Tank Commander", "TankCommander"],
	["Section Chief", "ArtilleryLeader"],
	["Gunner", "Artillery"],
	["Tank Gunner", "TankGunner"],
	["Machine Gunner", "MGunner"],
	["Assistant MG", "MGAmmoBearer"],
	["Ammo Bearer", "MGAmmoBearer"],
	["Mortar Gunner", "Mortars"],
	["Assistant Mortar Gunner", "Mortars"],
	["Cannoneer", "Artillery"]
];
RoleArsenal_DetermineRole = {
	params ["_player"];

	// Work out which role the player is playing
	private _roleDesc = roleDescription _player;
	private _playerRole = "";
	{
		_x params ["_pattern", "_role"];

		if(_roleDesc find _pattern > -1) then {
			_playerRole = _role;
		};
	} forEach RoleArsenal_SubstrToRole;
	
	// Allow admins to override for testing purposes
	if ((count DEBUG_ARSENAL_ROLE_OVERRIDE) > 0) then {
		_playerRole = DEBUG_ARSENAL_ROLE_OVERRIDE;
	};

	_playerRole
};

RoleArsenal_DetermineGear = {
	params ["_role"];

	private _GearToAdd = [];
	switch (_role) do {
	
	// ---------------------------------- COMPANYHQ ----------------------------------
	  case "HowLeader": {
		_GearToAdd = RA_DefaultGear + RA_GroundLeader + RA_InfGear + RA_InfWeaps;
	  };
	  case "HowBaker": {
	    _GearToAdd = RA_DefaultGear + RA_GroundLeader + RA_InfGear + RA_InfWeaps;
	  };
	// --------------------------------- SCOUTS ------------------------------------
	  case "SctLeader":{
	    _GearToAdd = RA_DefaultGear + RA_GroundLeader + RA_Scout + RA_InfGear + RA_LongRangeBackpacks;
	  };
	  case "Sct":{
	    _GearToAdd = RA_DefaultGear + RA_Scout + RA_InfGear + RA_InfHelmets;
	  };
	  case "Marksman":{
	    _GearToAdd = RA_DefaultGear + RA_Marksman + RA_InfGear + RA_InfHelmets;
	  };

	// ---------------------------------- PLATOONHQ ----------------------------------
	  case "PL": {
	    _GearToAdd = RA_DefaultGear + RA_GroundLeader + RA_InfGear + RA_InfWeaps;
	  };
	  case "RATELO": {
	    _GearToAdd = RA_DefaultGear + RA_Rifleman + RA_InfGear + RA_InfWeaps + RA_LongRangeBackpacks;
	  };
	  case "PSgt": {
	    _GearToAdd = RA_DefaultGear + RA_GroundLeader + RA_InfGear + RA_InfWeaps;
	  };
	  case "Medic": {
		_GearToAdd = RA_DefaultGear + RA_Med + RA_InfHelmets + RA_InfWeaps;
	  };
	// ---------------------------------- VIPER ----------------------------------
	// ---------------------------------- INFANTRY ----------------------------------
	  case "SL": {
	    _GearToAdd = RA_DefaultGear + RA_GroundLeader + RA_InfGear + RA_InfWeaps;
	  };
	  case "TL": {
	    _GearToAdd = RA_DefaultGear + RA_TeamLeader + RA_InfGear + RA_InfWeaps;
	  };
	  case "Grenadier": {
	    _GearToAdd = RA_DefaultGear + RA_Grenadier + RA_InfGear;
	  };
	  case "ARifleman": {
	    _GearToAdd = RA_DefaultGear + RA_ARifleman + RA_InfGear;
	  };
	  case "Rifleman": {
	    _GearToAdd = RA_DefaultGear + RA_Rifleman + RA_InfGear + RA_InfWeaps;
	  };
	// ---------------------------------- WEAPONS ----------------------------------
	  case "MGunner": {
	    _GearToAdd = RA_DefaultGear + RA_MGunner + RA_InfGear + RA_BasicInfVests;
	  };
	  case "MGAmmoBearer": {
	    _GearToAdd = RA_DefaultGear + RA_MGAmmoBearer + RA_InfGear + RA_InfWeaps;
	  };
	// ---------------------------------- TRADER ----------------------------------

	  case "EngineerLeader": {
	    _GearToAdd = RA_DefaultGear + RA_EngiTL + RA_InfGear + RA_InfWeaps;
	  };
	  case "Engineer": {
		_GearToAdd = RA_DefaultGear + RA_Engi + RA_InfGear + RA_InfWeaps;	  
	  };

	// ---------------------------------- TANK ----------------------------------
	  case "TankCommander": {
		_GearToAdd = RA_DefaultGear + RA_TankCommander + RA_InfBackpacks;	  
	  };
	  case "TankGunner": {
	    _GearToAdd = RA_DefaultGear + RA_TankGunner + RA_InfBackpacks;
	  };
	  case "TankDriver": {
	    _GearToAdd = RA_DefaultGear + RA_TankDriver + RA_InfBackpacks;	  
	  };

	  // ---------------------------------- MORTARS ----------------------------------
	  case "Mortars": {
		_GearToAdd = RA_DefaultGear + RA_Mortars + RA_InfGear + RA_InfWeaps;	  
	  };
	// ---------------------------------- ARTILLERY ----------------------------------
	  case "ArtilleryLeader": {
		_GearToAdd = RA_DefaultGear + RA_ArtilleryLeader + RA_InfGear + RA_InfWeaps;		
	  };
	  case "Artillery": {
		_GearToAdd = RA_DefaultGear + RA_Artillery + RA_InfGear + RA_InfWeaps;	  
	  };
	// ---------------------------------- PilotFixed ----------------------------------
	  case "ChiefPilot": {
	    _GearToAdd = RA_DefaultGear + RA_FixedPilotGear + RA_InfBackpacks;
	  };
	  default {
	    _GearToAdd = RA_DefaultGear + ["ACE_Banana"];
	  };
	};

	// Ensure all roles have access to default gear
	_GearToAdd = _GearToAdd + RA_DefaultGear;

	_GearToAdd
};