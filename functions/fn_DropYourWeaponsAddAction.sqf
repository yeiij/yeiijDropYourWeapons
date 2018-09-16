/**
 *
 * Addon: yeiijDropYourWeapons
 * Author: Jason REDUX (@Yeiij)
 * Date: 07/09/2018
 * File: fn_DropYourWeaponsCheckItems.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDropYourWeapons (Server): Add Action   :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

if (playerSide isEqualTo WEST) then { 
	player addAction ["<t color='#000000'>-- REMOVE WEAPONS</t>", {[] spawn YEIIJ_fnc_DropYourWeaponsSearchForWeapons;}, nil, 0, false, false, "", "!(isNull cursorTarget) && (cursorTarget isKindOf 'Man')", -1, false, "", ""];
};