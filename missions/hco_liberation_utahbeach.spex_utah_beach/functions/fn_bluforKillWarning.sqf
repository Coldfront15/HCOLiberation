params [
	["_killer", objNull, [objNull]],
	["_unit", objNull, [objNull]]
];

private _bluforKills = localNamespace getVariable ["CurrentBluforKills", 0];
_bluforKills = _bluforKills + 1;
localNamespace setVariable ["CurrentBluforKills", _bluforKills];
private _role = [_killer] call RoleArsenal_DetermineRole;
[format ["You have been found guilty for killing a friendly team member named ""%1"". You are unfit for duty. Take the time necessary to reflect on what a friendly team member looks like.", name _unit]] call BIS_fnc_guiMessage;

[
	"Example",
	"",
	"War Correspondence",
	"",
	false,
	[
		[
			format ["%1 has murdered a fellow soldier! Get the MPs!", name _killer], // Player has joined/left the server
			format ["You have been found guilty for killing %1. You are unfit for duty. Take the time necessary to reflect on what a friendly team member looks like.", name _unit], // desc of some kind or skip?
			"",
			"",
			true,
			"",
			"https://i.imgur.com/su9cTWh.png",
			[],
			[],
			[]
		]
	]
] call DiscordEmbedBuilder_fnc_buildSqf;

if (_bluforKills >= 2 && !(_role in ["Demon", "Reaper"])) then {
   _killer setDamage [1];
};