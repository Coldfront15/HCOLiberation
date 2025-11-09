[
	"AIM-9M",
	{
		params ["_missilePos", "_targetPos", "_heading"];
		private _dist = _targetPos distance _missilePos;

		private _detonate = false;
		if(_dist <= 30) then {
			private _toTarget = _missilePos vectorFromTo _targetPos;
			private _cos = _heading vectorCos _toTarget;
			if(_cos >= 0.65) then {
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
	[true, false, false, 4, 0],
	[25, 25, true, 0.2],
	[
		// "FIR_AIM9M"
	]
] call IADS_RegisterNewMissileClass;

