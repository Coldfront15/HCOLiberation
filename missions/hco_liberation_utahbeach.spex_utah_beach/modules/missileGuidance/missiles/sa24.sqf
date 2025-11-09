[
	"SA-24",
	"IR",
	{
		params ["_missilePos", "_targetPos", "_heading", ["_forceDetonate", false]];
		private _dist = _targetPos distance _missilePos;

		private _detonate = false;
		if(_dist <= 60 || _forceDetonate) then {

			
			private _toTarget = _missilePos vectorFromTo _targetPos;
			
			private _cos = _heading vectorCos _toTarget;
			// 30 degrees
			if(_cos >= 0.86602540378) then {
				private _toMissile = _targetPos vectorFromTo _missilePos;
					
				private _pos = _targetPos vectorAdd (_toMissile vectorMultiply 2);
				private _vel = (_toTarget vectorMultiply 10);
				private _right = _toTarget vectorCrossProduct [0,0,1];

				private _up = _toTarget vectorCrossProduct _right;
				private _eff = "lib_Proximity_Detonate_Effect" createVehicle ASLtoAGL _missilePos;
				private _det = "lib_SA24_Proximity" createVehicle ASLtoAGL _pos;

				_det setVelocity (_vel vectorMultiply 25);
				_eff setVelocity _vel;
				
				_eff setVectorDirAndUp [_toTarget, _up];
				_det setVectorDirAndUp [_toTarget, _up];
				_detonate = true;

				systemChat format ["SA-24 Detonate %1", _dist];
			};

		};
		_detonate;
	},
	[
		["SA-24 MID-COURSE", 0]
	],
	[65, 80, 10000], //IRCM Resistance, GIMBAL limit, RANGE
	[27, 27, false, 0.1], //PITCH RATE, YAW RATE, BANGBANGGUIDANCE, STABILITY
	[
		"101_sa24_missile",
		"CUP_M_9K38_Igla_AA"
	]
] call IADS_RegisterNewMissileClass;