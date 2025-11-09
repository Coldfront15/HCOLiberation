
/**
	Guidance Phases: We utilize an array of guidance control laws for each phase of flight.
		When the previous guidance control law returns TRUE, then the next control law will be used (assuming there is one)
		This can be used to simulate that the first stage of the missile is to use the booster engine to loft up high for lower drag, etc..
		An optional 'timeout' parameter can be used in which, once the cumulative time in the current control law has elapsed, it will switch to the next guidance law.
	Current Phase:
		The current phase of the guidance law we are using
	Accumulator:
		How much time has passed
 */
IADS_GuidanceComputer = {
	(_this select 0 ) params [
		["_guidancePhases", []],
		["_fuzing", {}],
		["_missileID", -1],
		["_missile", objNull],
		["_target", objNull],
		["_flightParams", [30, 30, false, 0.4]],
		["_lastDir", []],
		["_oldMissilePos", nil],
		["_oldTargetPos", nil],
		["_oldVelocities", []],
		["_currentPhase", 0],
		["_accumulator", 0],
		["_phaseAccumulator", 0],
		["_counterMeasureAccumulator", 0],
		["_missAccumulator", 0],
		["_guidanceState", []]
	];

	


	if((isNull _missile) || (!(alive _missile)) || (_missileID < 0)) exitWith {
		if(!(isNull _target)) then {	

			private _missileList = _target getVariable ["missileList", []];

			_missileList = _missileList - [_missileID];

			_target setVariable ["missileList", _missileList];
		};
		[_this select 1] call CBA_fnc_removePerFrameHandler;
	};

	if(isNull _target) exitWith {
		[_this select 1] call CBA_fnc_removePerFrameHandler;
	};





	if(_guidancePhases isEqualTo []) exitWith {
		systemChat format ["Guidance initiated without guidance laws"];
		[_this select 1] call CBA_fnc_removePerFrameHandler;
	};



	if(accTime <= 0 || isGamePaused) exitWith {};

	
	private _deltaTime = diag_deltaTime * accTime;

	if(_accumulator < 1.1 && vectorMagnitude (velocity _missile) < 10) then {
		[_missile, (vectorDir _missile) vectorMultiply 10] remoteExec ["setVelocity", 0];
	};

	if(isNil "_oldTargetPos" || isNil "_oldMissilePos" || isNil "_lastDir") exitWith {
		(_this select 0) set [6, vectorDir _missile];
		(_this select 0) set [7, getPos _missile];
		(_this select 0) set [8, getPos _target];
		(_this select 0) set [9, [velocity _missile, velocity _target]];

		private _yaw = getDir _missile;

		private _pitchBank = _missile call BIS_fnc_getPitchBank;

		_pitchBank params ["_pitch", "_bank"];
		if (IADS_SAM_DEBUG == true) then {
			systemChat format ["Set initial pitch %1, yaw %2", _pitch, _yaw];
		};
		(_this select 0) set [15, [_yaw, 0, _pitch]];
	};

	
	


	private _cmSuccess = (IADS_ActiveMissiles get _missileID) get "cmSuccess";
	private _heading = vectorDirVisual _missile;
	private _targetPos = _target modelToWorldVisualWorld (getCenterOfMass _target);
	private _missilePos = getPosASLVisual _missile;
	
	private _targetVelocity = velocity _target;
	private _targetVelocityFromHeading = _heading vectorMultiply (_heading vectorDotProduct _targetVelocity);

	_targetVelocity = _targetVelocity vectorDiff _targetVelocityFromHeading;
	private _missileVelocity = velocity _missile;
	// Counter measures successful, missile is defeated and should head to the old location.
	// TODO: Replace these calculations and data with a seeker head function that gets called and will return the current target position which can include it going to a flare?
	// Would remove reliance on event handler for countermeasures if the function periodically updates for target tracks
	if(_cmSuccess == true) then {

		if(_counterMeasureAccumulator >= 4) then {

			// See if we can reacquire the target.. within 55 degrees of the missile heading?
			private _toTarget = _missilePos vectorFromTo _targetPos;
			private _cos = _heading vectorCos _toTarget;
			if(_cos >= 0.573) then {
				(IADS_ActiveMissiles get _missileID) set ["cmSuccess", false];
			};
		} else {
			(_this select 0) set [13, _counterMeasureAccumulator + _deltaTime];
			_targetPos = _oldTargetPos;
			// Velocity is the same velocity as previous as chaff / flare don't just have 0 velocity.
			_targetVelocity = _oldVelocities#1;
		};
	};


	
	private _los = _targetPos vectorDiff _missilePos;

	private _losOld = _oldTargetPos vectorDiff _oldMissilePos;

	private _closingVelocity = (vectorMagnitude (_los) - vectorMagnitude (_losOld)) * _deltaTime;

	
	if(_closingVelocity > -0.01 && _accumulator >= 5) then {
		
		(_this select 0) set [14, _missAccumulator + _deltaTime];
	};


	if(_missAccumulator >= 1) then {
		_targetPos = _missilePos vectorAdd ((vectorDir _missile) vectorMultiply 20);
		// Velocity is the same velocity as previous
		_targetVelocity = _oldVelocities#1;
	};

	if(_missAccumulator >= 1.5) exitWith {
		"ACE_ammoExplosionLarge" createVehicle ASLtoAGL _missilePos;
		deleteVehicle _missile;
	};


	
	
	

	private _detonate = [_missilePos, _targetPos, _heading] call _fuzing;

	if(_detonate) exitWith {
		deleteVehicle _missile;
	};


	



	private _guidancePhase = _guidancePhases select _currentPhase;
	private _newPhase = _currentPhase;

	private _guidanceTimeout = _guidancePhase param [1, 0];
	

	if(_guidanceTimeout > 0) then {

		if(_phaseAccumulator >= _guidanceTimeout) then {
			private _nextPhase = _guidancePhases param [_currentPhase + 1, nil];

			if(!isNil { _nextPhase }) then {
				_guidancePhase = _nextPhase;
				_newPhase = _currentPhase + 1;
			};
			
		};
	};

	private _guidanceLaw = _guidancePhase select 0;
	



	private _result = [_deltaTime, [_oldMissilePos, _oldTargetPos], [_missilePos, _targetPos], [[_oldVelocities#0, _missileVelocity], [_oldVelocities#1, _targetVelocity]], _missileID, _heading, _flightParams, _accumulator] call _guidanceLaw;

	private _aCmd = _result param [0, [0,0,0]];
	private _phaseCompleted = _result param [1, false];
	private _debugText = _result param [2, ""];
	private _navType = _result param [3, ""];


	

	private _newDir = _lastDir;



	private _calcDir = [_deltaTime, _aCmd, _missile, _flightParams, _guidanceState, _accumulator, _missileID, format ["%1 - %2 - %3", _missileID, (IADS_ActiveMissiles get _missileID) get "type", _navType ]] call IADS_MissileSteering;

	if(!isNil "_calcDir") then {
		_newDir = _calcDir;
	};

		
	if(IADS_SAM_DEBUG == true) then {

		drop [
			"\a3\data_f\kouleSvetlo", "", "Billboard", 
			100,
			0.03,
			_missile modelToWorld [0, 0, 0],
			[0, 0, 0],
			0,
			1.25,
			1,
			0.05,
			[0.5],
			[[1, 1, 0.3, 0.7]],
			[0],
			0,
			0,
			"",
			"",
			"",
			0,
			false,
			-1,
			[[10000, 10000, 3000, 7000]]
		];

		private _offset = 0;

		{
			if(_x == _missileID) then {
				_offset = _forEachIndex;
			};
		} forEach (_target getVariable ["missileList", []]);
		drawIcon3D ["", [1,0,0,1],ASLToAGL _targetPos vectorAdd [0, 0, -20], 0.75, 0.75, 0, format ["TARGET ELEVATION %1", _targetPos#2], 1, 0.025, "TahomaB"];
		if(_cmSuccess) then {
			drawIcon3D ["\a3\ui_f\data\IGUI\Cfg\Cursors\selectover_ca.paa", [0,1,0,1], ASLtoAGL _targetPos, 0, 0, 0, format ["%1 - SPOOFED", _missileID], 1, 0.025, "TahomaB"];
		} else {
			drawIcon3D ["\a3\ui_f\data\IGUI\Cfg\Cursors\selectover_ca.paa", [1,0,0,1],ASLToAGL _targetPos vectorAdd [0, 0, _offset * 10], 0.75, 0.75, 0, format ["%1 - TRACKING", _missileID], 1, 0.025, "TahomaB"];
			
		};

		hintSilent (_debugText + format ["\nPhase: %1\nD: %2\nC: %3", _currentPhase, _newDir, _aCmd]);
	};



	if(_phaseCompleted) then {
		private _nextPhase = _guidancePhases param [_currentPhase + 1, nil];

		if(!isNil { _nextPhase }) then {
			_guidancePhase = _nextPhase;
			_newPhase = _currentPhase + 1;
		};
	};
	

	_missile setMissileTarget _target;
	



	(_this select 0) set [6, _newDir];
	(_this select 0) set [7, _missilePos];
	(_this select 0) set [8, _targetPos];
	(_this select 0) set [9, [_missileVelocity, _targetVelocity]];
	(_this select 0) set [10, _newPhase];
	(_this select 0) set [11, _accumulator + _deltaTime];
	(_this select 0) set [12, _phaseAccumulator + _deltaTime];
	(_this select 0) set [15, _guidanceState];
};
