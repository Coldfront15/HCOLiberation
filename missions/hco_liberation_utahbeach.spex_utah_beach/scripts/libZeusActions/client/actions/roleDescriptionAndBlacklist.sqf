

KC_DEBUG_ROLES = false;

KC_DEBUG_SKIP_ITEMS = [
	"SPE_M1903A4_Springfield",
	"SPE_Binocular_US", 
	"SPE_ACC_GL_M8",
	"SPE_ACC_GL_M7",
	"SPE_ACC_GL_M1",
	"SPE_M1_Garand",
	"SPE_M1_Carbine",
	"SPE_M1903A3_Springfield",
	"SPE_M1A1_Carbine",
	"SPE_M1A1_Thompson",
	"SPE_M3_GreaseGun",
	"ff_us_m1_garand",
	"ff_sling_canva",
	"ff_us_m1_garand_laat",
	"ff_sling_1907",
	"ff_us_m1903a0_Springfield",
	"SPE_M1A1_Bazooka",
	"SPE_M9A1_Bazooka"
];
KC_BLACKLIST_COLOR = [1,0.1,0.1,1];
KC_DEBUG_ROLE_PFH = {

	if(KC_DEBUG_ROLES == true) then {
		{
			private _items = itemsWithMagazines _x;
			_items = _items + (assignedItems _x);

			

			private _role = [_x] call RoleArsenal_DetermineRole;

			private _GearToAdd = [_role] call RoleArsenal_DetermineGear;
			
			private _itemsNotInRA = _items select {
				private _exists = false;
						if(!("TFAR" in _x)) then {
							if(!(_x in KC_DEBUG_SKIP_ITEMS)) then {

								private _item = _x;

								{
									if((toLowerANSI _x) == (toLowerANSI _item)) exitWith {
										_exists = true;
									};
									
								} forEach _GearToAdd;
				} else {
					_exists = true;
				};
				} else {
					_exists = true;
				};

				_exists == false
			};

			_itemsNotInRA = _itemsNotInRA arrayIntersect _itemsNotInRA;

	
			

			if((count _itemsNotInRA) > 0) then {
				drawIcon3D ["\a3\ui_f\data\IGUI\Cfg\Cursors\selectover_ca.paa", KC_BLACKLIST_COLOR, (ASLtoAGL getPosASLVisual _x) vectorAdd [0,0,5], 0.75, 0.75, 0, format ["HAS BLACKLISTED ITEMS: %1", _itemsNotInRA], 1, 0.025, "TahomaB"];
			};
			drawIcon3D ["\a3\ui_f\data\IGUI\Cfg\Cursors\selectover_ca.paa", [0,1,0,1], ASLtoAGL getPosASLVisual _x, 0.75, 0.75, 0, format ["R %1", roleDescription _x], 1, 0.025, "RobotoCondensed"];
		} forEach (allPlayers - entities "HeadlessClient_F");
	} else {

		[_this select 1] call CBA_fnc_removePerFrameHandler;
	};
};

private _statement = {
	params ["_position", "_objects", "_groups", "_waypoints", "_markers", "_hoveredEntity", "_args"];
	KC_DEBUG_ROLES = !KC_DEBUG_ROLES;

	if(KC_DEBUG_ROLES == true) then {

		[
			KC_DEBUG_ROLE_PFH,
			0,
			[]
		] call CBA_fnc_addPerFrameHandler;
	};
};


private _action = ["WTFIsTheRole", "Toggle Items Blacklist + Role Description Debug", ["", [1,1,1,1]], _statement, { true }] call zen_context_menu_fnc_createAction;
[_action, ["KarmaLibRoot"], 0] call zen_context_menu_fnc_addAction;


