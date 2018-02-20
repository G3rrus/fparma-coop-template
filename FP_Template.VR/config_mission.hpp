/*
* Mission description settings
*/
#define CFG_ON_LOAD_TITLE "FPARMA Template v5" // displayed during mission load. keep it short
#define CFG_ON_LOAD_TEXT "edit config_mission.hpp to change this!" // displayed during mission load
#define CFG_LOBBY_TITLE "CO64 - FPARMA Template v5.1.0" // mission selection screen name. format: <TYPE><SLOTS> - <NAME> <version>
#define CFG_AUTHOR "Cuel | 2017" // shown during load screen
// shown in load screen, you can put a jpeg file in the mission folder and change this to "loading.jpg"
// the default is fp logo in the modpack
#define CFG_LOAD_IMAGE "\z\fpa\addons\assets\img\logo_lg.paa"

/*
* Respawn settings
*/
// The amount of lives players have
// -1 means infinite respawn, 0 means players go into spectator on first death. can be higher
#define CFG_JRM_RESPAWNS -1

/*
* ACE settings
* Be aware  that these settings override any modules in the mission (is also available as a mission parameter in lobby)
*/
// Prevent that players can instantly die from bullet impact. false/true. true means to prevent instant death.
// Players CAN still die after going unconscious with either one of these.
// if you want to never die - enter a high value for max time in ace revive module
#define CFG_PREVENT_INSTANT_DEATH true
// Damage treshold, magical armor added to unit when taking damage. 1 = ace default, 2 = fparma default
// ONLY natural number / integer. No less than 1 and not higher than 8.
#define CFG_PLAYER_DAMAGE_TRESHOLD 2

/*
* Viewdistance settings
*/
#define CFG_VIEWDISTANCE 2000
#define CFG_VIEWDISTANCE_OBJECT 1800
// These only applies for pilots/gunner in helicopters/jets
#define CFG_AIR_VIEWDISTANCE 5000
#define CFG_AIR_VIEWDISTANCE_OBJECT 4500
