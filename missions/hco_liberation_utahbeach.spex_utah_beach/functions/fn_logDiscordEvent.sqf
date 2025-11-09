// fnc_logDiscordEvent.sqf

params ["_name", "_type", "_uid", "_unit"];

if ((_name == "headlessclient") or (_name == "SERVER")) exitWith{};

private _unit = _uid call BIS_fnc_getUnitByUID;

_role = roleDescription _unit;


if (_type == "joined") then 
{
    [
        "Example",
        "",
        "War Correspondence",
        "",
        false,
        [
            [
                format ["%1 %2 the server", _name, _type], // Player has joined/left the server
                "Good luck out there.", // desc of some kind or skip?
                "",
                "",
                true,
                "",
                "",
                [],
                [],
                [
                    ["Name:",_name,true], 
                    ["UID:",_uid,true],
                    ["Role:",format ["Playing as %1", _role],true]
                ]
            ]
        ]
    ] call DiscordEmbedBuilder_fnc_buildSqf;
};


if (_type == "left") then 
{
    [
        "Example",
        "",
        "War Correspondence",
        "",
        false,
        [
            [
                format ["%1 %2 the server", _name, _type], // Player has joined/left the server
                "Good luck out there.", // desc of some kind or skip?
                "",
                "",
                true,
                "",
                "",
                [],
                [],
                [
                    ["Name:",_name,true], 
                    ["UID:",_uid,true]
                ]
            ]
        ]
    ] call DiscordEmbedBuilder_fnc_buildSqf;
};
