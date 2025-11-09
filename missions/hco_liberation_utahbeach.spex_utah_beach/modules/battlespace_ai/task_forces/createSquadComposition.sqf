BATTLESPACE_TASK_FORCES_GET_SQUAD_COMPOSITION = {
	params ["_size", ["_overrideSquadAdditions", []], ["_ambush", false]];
	if (_size <= 2) exitWith { [] };

	// Each entry = their chance
	private _squadAdditions = [opfor_rpg, opfor_rifleman];

	if(air_weight > 15) then {
		_squadAdditions append [opfor_aa, opfor_machinegunner];
	};

	if(armor_weight > 45) then {
		_squadAdditions append [opfor_at, opfor_rpg];
	};

	if(infantry_weight > 60) then {
		_squadAdditions append [opfor_heavygunner, opfor_machinegunner, opfor_rto];
	};

	if((count _overrideSquadAdditions) > 0) then {
		_squadAdditions = _overrideSquadAdditions;
	};


	private _baseSquad = [opfor_squad_leader, opfor_team_leader, opfor_rifleman, opfor_rifleman, opfor_rpg];

	if(!_ambush) then {
		private _rtoChance = (random 50);
		private _willHaveRto = false;
		_willHaveRto = _rtoChance <= 10;
		if(_willHaveRto == true) then {
			_baseSquad pushBack opfor_rto;
		};
	};


	while {(count _baseSquad < _squadSize)} do {
		_baseSquad pushBack selectRandom _squadAdditions;
	};
	_baseSquad
};