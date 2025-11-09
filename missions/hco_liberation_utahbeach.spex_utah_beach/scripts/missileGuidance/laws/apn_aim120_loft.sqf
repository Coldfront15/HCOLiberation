/** 
	Variant that sets the loft point higher up before APN takes over
*/
IADS_AIM120_LOFT = {
	params ["_deltaTime", "_oldPos", "_newPos", "_velocities", "_missileID", "_missileHeading", "_flightParams", "_timeElapsed"];

	
	private _result = [_deltaTime, _oldPos, _newPos, _velocities, _missileID, _missileHeading, _flightParams, _timeElapsed, 10, 2000, 8, 1000] call IADS_APN_LOFT;

	_result set [3, "AIM120-LOFT"];

	_result
};