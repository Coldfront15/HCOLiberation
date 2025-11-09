
IADS_NextMissileID = 0;
IADS_ActiveMissiles = createHashMap;


IADS_RegisterNewMissile = {

	params ["_type", "_isIR", "_isRadar", "_isEO", ["_goForFlareProbability", 5], ["_goForChaffProbability", 5]];

	IADS_NextMissileID = IADS_NextMissileID + 1;


	_newTable = createHashMap;

	_newTable set ["isIR", _isIR];
	_newTable set ["isRadar", _isRadar];
	_newTable set ["isEO", _isEO];
	_newTable set ["cmSuccess", false];
	_newTable set ["goForFlareProbability", _goForFlareProbability];
	_newTable set ["goForChaffProbability", _goForChaffProbability];
	_newTable set ["type", _type];
	
	IADS_ActiveMissiles set [IADS_NextMissileID, _newTable];

	IADS_NextMissileID
};
