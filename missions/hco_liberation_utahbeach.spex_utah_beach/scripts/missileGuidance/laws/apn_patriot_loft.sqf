/** 
	Variant that sets the loft point a lot higher up closer before APN takes over
*/
IADS_PATRIOT_LOFT = {
	params ["_deltaTime", "_oldPos", "_newPos", "_velocities", "_missileID", "_missileHeading", "_flightParams", "_timeElapsed"];

	
	// Depending on range, less aggressive angle

	private _range = (_newPos#0) distance (_newPos#1);

	private _angle = 70;

	_angle = _angle - (_range / 500);

	_angle = 10 max _angle;
	private _result = [_deltaTime, _oldPos, _newPos, _velocities, _missileID, _missileHeading, _flightParams, _timeElapsed, _angle, 2000, 8, 10000] call IADS_APN_LOFT;
	_result set [2, format["%1\nDesired Loft Angle: %2", _result#2, _angle]];
	_result set [3, "PATRIOT-LOFT"];

	_result
};