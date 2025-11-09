[
	"SA-2",
	{
		params ["_missilePos", "_targetPos", "_heading"];
		private _dist = _targetPos distance _missilePos;

		private _detonate = false;
		if(_dist <= 40) then {
			private _toTarget = _missilePos vectorFromTo _targetPos;
			private _cos = _heading vectorCos _toTarget;
			if(_cos >= 0.65) then {
				"HelicopterExploBig" createVehicle ASLtoAGL _missilePos;
				"HelicopterExploBig" createVehicle ASLtoAGL _missilePos;
				"HelicopterExploBig" createVehicle ASLtoAGL _missilePos;
				"HelicopterExploBig" createVehicle ASLtoAGL _missilePos;
				_detonate = true;
			};

		};
		_detonate;
			
		
	},
	[
		[IADS_APN, 0]
	],
	[false, true, false, 0, 5],
	[5, 5, false, 0.4],
	[

	]
] call IADS_RegisterNewMissileClass;