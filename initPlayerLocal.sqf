/*
 * Executed locally when player joins mission (includes both mission start and JIP).
 */

params ["_player", "_didJIP"];

// Show briefing
execVM "briefing.sqf";

// Add ACE actions to player
[_player] execVM "scripts\addAceActions.sqf";
