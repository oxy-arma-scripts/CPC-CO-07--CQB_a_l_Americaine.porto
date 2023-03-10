/**
 * @ Author: OxyTom
 * @ Create Time: 2021-07-16 20:27:48
 * @ Version: 1.0.0
 * @ Description: <insert description>
 * @ Usage: [this, 500] execVM "scripts\customLoiter.sqf"
 * @ Usage: [this, 500, 12, 40] execVM "scripts\customLoiter.sqf"
 * 						/\ must be > 0
 */

params ["_choppa", "_r", ["_increment", 24], ["_initial", 0]];

private _ipos = position _choppa;
// Thanks @Vdauphin#7983
for "_angle" from _initial to (360 + _initial) step _increment do {
	private _pos = _ipos getPos [_r, _angle];

	private _wp = group _choppa addWaypoint [_pos, -1, 0];
	// _wp setWaypointCompletionRadius 30;
	if (_angle == _initial) then {
		_wp setWaypointType "CYCLE";
	};
};

