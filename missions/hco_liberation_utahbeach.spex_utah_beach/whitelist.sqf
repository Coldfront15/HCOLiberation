// Here you can allow people to use the commander slot. It will only be enforced if you activate the related mission option.
// When editing be careful with quotes and commas

// Allowed team tags, as defined in your team's squad.xml
// This isn't very secure but efficient to whitelist a lot of people at once.
GRLIB_whitelisted_tags = [];

// Allowed individual players based on their SteamID64. This is the most secure way to do.
// For example: "76561198016642627"
// To know that information: https://steamid.io/
GRLIB_whitelisted_steamids = [
    "76561198064222299",		// Baker
    "76561198147102089",        // Randazzo
    "76561198033311336",        // Henderson
    "76561197960287930",        // Lucht
	"76561198022778849",        // Archer
    "76561197982341092",        // Weeks
    "76561198121122486"         // Lengfelder"
];

// Allowed individual player names. Note that this method is not very secure contrary to SteamIDs.
// For exemple: "Zbug"
GRLIB_whitelisted_names = [];