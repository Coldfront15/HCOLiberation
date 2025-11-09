//Don't commit IDs into here, this is for testing only.
//If this gets committed, its possible player's S64 will get leaked by unpacking the PBO.
//This file is on the server in Arma_3_Server\perms\perms.sqf.

libRotaryLogi = [

];

libRotaryCas = [

];

libFixedWing = [

];

libArmor = [

];

libCompanyCmd = [

];

libRecce = [

];

libBuild = [

];

libBlacklisted = [
];


// libMedicBlacklist = [

// ];

// EvilDoers = [

// ];

{
    _x append KP_liberation_commander_actions;
} forEach [libRotaryLogi,
        libRotaryCas,
        libFixedWing,
        libArmor,
        libCompanyCmd,
        libRecce,
        libBuild];



publicVariable "libRotaryLogi";
publicVariable "libRotaryCas";
publicVariable "libFixedWing";
publicVariable "libArmor";
publicVariable "libCompanyCmd";
publicVariable "libRecce";
publicVariable "libBuild";
// publicVariable "libMedicBlacklist";
publicVariable "libBlacklisted";
// publicVariable "EvilDoers";