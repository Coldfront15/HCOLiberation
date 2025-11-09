IADS_Missiles = createHashMap;
IADS_AmmoToMissile = createHashMap;


IADS_RegisterAmmo = {
	params ["_ammoName", "_missileName"];

	IADS_AmmoToMissile set [_ammoName, _missileName]
};


// TODO:
// Refactor seeker options into new seeker head code similar to ACE3's missile guidance fork
IADS_RegisterNewMissileClass = {
	params ["_missileName", "_fuzeCode", "_guidancePhases", "_seekerOptions", "_flightParams", ["_ammosToAdd", []]];

	diag_log format ["Register new missile class %1", _this];
	
	IADS_Missiles set [_missileName, [_fuzeCode, _guidancePhases, _seekerOptions, _flightParams]];

	{
		[_x, _missileName] call IADS_RegisterAmmo;
	} forEach _ammosToAdd;
};


IADS_HookGuidanceLogic = {
	params ["_missileType", "_missile", "_target", "_launchVehicle"];

	private _missileParams = IADS_Missiles getOrDefault [_missileType, [{}, [], [], []]];


	_missileParams params ["_fuzeCode", "_guidancePhases", "_seekerOptions", "_flightParams"];

	private _params = [_missileType];

	_params append _seekerOptions;
	private _missileID = _params call IADS_RegisterNewMissile;
	
	if(!(isNil "_missileID")) then {
		[
			IADS_GuidanceComputer,
			0, 
			[
				_guidancePhases,
				_fuzeCode,
				_missileID,
				_missile,
				_target,
				_flightParams
			]
		] call CBA_fnc_addPerFrameHandler;

		private _missileList = _target getVariable ["missileList", []];

		_missileList pushBack _missileID;

		_target setVariable ["missileList", _missileList];

		if(!(isNull _launchVehicle)) then {

			[_missile, _launchVehicle] remoteExecCall ["disableCollisionWith", 0];
			private _currentVelocity = velocity _launchVehicle;

			_missile setVelocity _currentVelocity;
		};
	};
};

([] call compileFinal preprocessFileLineNumbers "scripts\missileGuidance\missiles\fim92.sqf");
([] call compileFinal preprocessFileLineNumbers "scripts\missileGuidance\missiles\sa15.sqf");
([] call compileFinal preprocessFileLineNumbers "scripts\missileGuidance\missiles\aim9x.sqf");
([] call compileFinal preprocessFileLineNumbers "scripts\missileGuidance\missiles\aim9m.sqf");
([] call compileFinal preprocessFileLineNumbers "scripts\missileGuidance\missiles\aim120.sqf");
([] call compileFinal preprocessFileLineNumbers "scripts\missileGuidance\missiles\sa2.sqf");
([] call compileFinal preprocessFileLineNumbers "scripts\missileGuidance\missiles\sa10.sqf");
([] call compileFinal preprocessFileLineNumbers "scripts\missileGuidance\missiles\patriot.sqf");