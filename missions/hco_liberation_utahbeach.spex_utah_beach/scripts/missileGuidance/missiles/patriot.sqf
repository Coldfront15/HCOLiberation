[
	"PAC-2/GEM",
	{
		params ["_missilePos", "_targetPos", "_heading"];
		private _dist = _targetPos distance _missilePos;

		private _detonate = false;
		if(_dist <= 25) then {
			private _toTarget = _missilePos vectorFromTo _targetPos;
			private _cos = _heading vectorCos _toTarget;
			if(_cos >= 0.65) then {
				"HelicopterExploBig" createVehicle ASLtoAGL _missilePos;
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
		[IADS_PATRIOT_LOFT, 0],
		[IADS_APN, 0]
	],
	[false, true, false, 0, 0.2],
	[40, 40, false, 0.99],
	[
		"ammo_Missile_mim145"
	]
] call IADS_RegisterNewMissileClass;