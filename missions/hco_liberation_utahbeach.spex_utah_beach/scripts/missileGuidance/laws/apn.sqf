/** 
	Augmented Proportional Navigation is the basic guidance law used by older missiles.
	All acceleration commands are inputted perpendicular to the Line-Of-Sight.

	Navigational Constant = 3-5, but 3 is the most optimal proven by various engineering studies.
*/
IADS_APN = {
	params ["_deltaTime", "_oldPos", "_newPos", "_velocities", "_missileID", "_missileHeading", "_flightParams", "_timeElapsed"];


	_oldPos params ["_oldMissilePos", "_oldTargetPos"];
	_newPos params ["_missilePos", "_targetPos"];
	_velocities params ["_missileVelocities", "_targetVelocities"];



	


	// An acceleration is when the target's last velocity is changed from the current.


	_missileVelocities params ["_oldMV", "_newMV"];
	_targetVelocities params ["_oldTV", "_newTV"];

	private _Vc = _newTV vectorDiff _newMV;
	private _los = _targetPos vectorDiff _missilePos;
	private _losOld = _oldTargetPos vectorDiff _oldMissilePos;

	private _distanceToTarget = _targetPos distance _missilePos;
	
	
	private _losUnit = vectorNormalized _los;
	private _losOldUnit = vectorNormalized _losOld;
	private _targetAcceleration = (_newTV vectorDiff _oldTV) vectorMultiply (1 / _deltaTime);
	private _closingRate = vectorMagnitude _newMV;
	private _timeToGo = _distanceToTarget / _closingRate;

	private _targetAccelerationAlongLOS = _losUnit vectorMultiply (_targetAcceleration vectorDotProduct _losUnit);

	_targetAccelerationAlongLOS = _targetAcceleration vectorDiff _targetAccelerationAlongLOS;


	private _losDelta = _losUnit vectorDiff _losOldUnit;

	private _losRate = 0;
	if(_deltaTime != 0) then {
		_losRate = 1 * (vectorMagnitude _losDelta) / _deltaTime;
	};

	// TODO: Maybe this is also part of some params 
	private _navGain = 3;
	private _lateralAcceleration = _navGain * _losRate;





	private _aCmd = _Vc vectorMultiply _lateralAcceleration;
	_aCmd = _aCmd vectorAdd (_losDelta vectorMultiply (0.5 * _navGain * vectorMagnitude _targetAccelerationAlongLOS));


	private _aCmdAlongLOS = _losUnit vectorMultiply (_aCmd vectorDotProduct _losUnit);

	_aCmdAlongLOS = _aCmd vectorDiff _aCmdAlongLOS;
	


	private _debug = "";

	if (IADS_SAM_DEBUG == true) then {
		_debug = format ["LOSr %1\nVc %2\nNtLOS %3\nTime To Go: %4", _losRate, _Vc, vectorMagnitude _targetAccelerationAlongLOS, _timeToGo];
	};

	private _aglTPos = ASLtoAGL _targetPos;
	private _missileAboveGround = ASLtoAGL _missilePos;


	if((_timeElapsed < 0.5 && (_aCmdAlongLOS#2) < 0)) then {

		_aCmdAlongLOS = _aCmdAlongLOS vectorAdd [0,0,10000];
	};
	


	[_aCmdAlongLOS, false, _debug, "APN"]
};
true