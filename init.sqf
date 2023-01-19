/*
 * Executed when mission is started (before briefing screen)
 */

//TODO: Except weird behaviour
if (isServer) then {
    [independent] call GDC_fnc_pluto;
};

missionnamespace setVariable ["_evaccalled", false];
