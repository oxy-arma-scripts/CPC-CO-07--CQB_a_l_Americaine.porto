/**
 * @ Author: OxyTom
 * @ Create Time: 2021-07-16 23:34:00
 * @ Description: Add ACE action "Appeler l'extraction"
 * @ Usage: [this] execVM "scripts\addAceActions.sqf"
 * @ Specific for CPC-CO[07]-CQB_a_l_Americaine.porto
 */

params ["_unit"];

private _action = [
    "ChooperEvac",
    "Appeler l'extraction",
    "ui\evac_icon.paa",
    {
		params ["_target", "_player", "_params"];
		_params params ["_unit"];

		// Exec script once ACE Action called
        [] execVM "scripts\evac.sqf";
		// Removing option to avoid weird behaviour
		[_unit, 1, ["ACE_SelfActions", "ChooperEvac"]] call ace_interact_menu_fnc_removeActionFromObject;
    },
    {
		params ["_target", "_player", "_params"];

		_params params ["_unit"];
		[_unit, "ACRE_PRC148"] call acre_api_fnc_hasKindOfRadio;
    },
	nil,
	[_unit]
] call ace_interact_menu_fnc_createAction;

[_unit, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
