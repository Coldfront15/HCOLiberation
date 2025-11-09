/** 
	Utilize APN with a set offset in height to simulate a loft
*/
IADS_APN_LOFT = {
	params ["_deltaTime", "_oldPos", "_newPos", "_velocities", "_missileID", "_missileHeading", "_flightParams", "_timeElapsed", ["_desiredLoftAngle", 10], ["_stopAtDistance", 2000], ["_stopAtTime", 10], ["_turnRate", 1000]];

	
	_flightParams params ["_pitchRate", "_yawRate", "_isBangBangGuidance", "_stabilityCoefficient"];
	_oldPos params ["_oldMissilePos", "_oldTargetPos"];
	_newPos params ["_missilePos", "_targetPos"];
	
	_velocities params ["_missileVelocities", "_targetVelocities"];

	
	_missileVelocities params ["_oldMV", "_newMV"];
	_targetVelocities params ["_oldTV", "_newTV"];


	private _debug = "";



	private _range = _targetPos distance _missilePos;

	private _missileInfo = IADS_ActiveMissiles get _missileID;


	
	private _closingRate = vectorMagnitude _newMV;
	private _timeToGo = (_missilePos distance _targetPos) / _closingRate;

	
	private _los = vectorNormalized (_targetPos vectorDiff _missilePos); 

	private _angleToTarget = acos (_missileHeading vectorCos _los);

	
	private _atMinRotationAngle = _angleToTarget >= 60 min (0.4 * _pitchRate * _timeToGo);

	systemChat format ["At rotation angle %1", _angleToTarget];
	

	private _zDiff = (_missilePos select 2) - (_targetPos select 2);
	if(_atMinRotationAngle == false) then {


		_atMinRotationAngle = _zDiff > (_range / 3);
	};



	private _result = [_deltaTime, _oldPos, _newPos, _velocities, _missileID, _missileHeading] call IADS_APN;


	private _aCmdBase = _result select 0;
	private _done = false;



	if(_atMinRotationAngle || (_targetPos distance2D _missilePos) <= _stopAtDistance || _timeToGo < _stopAtTime) then {
		if(IADS_SAM_DEBUG == true) then {
			systemChat format ["%1 | %2 | %3", _atMinRotationAngle, (_targetPos distance2D _missilePos) <= _stopAtDistance, _timeToGo < _stopAtTime];
		};
		_done = true;
	} else {

		(_missile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
		
		if(_pitch < _desiredLoftAngle) then {


			_aCmdBase = _aCmdBase vectorAdd [0,0,_turnRate];
		};
	};


	
	[_aCmdBase, _done, format ["%1\n%2", _debug, _result param [2, ""] ], "LOFT"]
};