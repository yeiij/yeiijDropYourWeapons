/**
 *
 * Addon: yeiijDropYourWeapons
 * Author: Jason REDUX (@Yeiij)
 * Date: 07/09/2018
 * File: fn_DropYourWeaponsPostInit.sqf
 *
 */

diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";
diag_log " || yeiijDropYourWeapons (Server): POST-INIT                     || ";
diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";

if (hasInterface) exitWith {};

[] call YEIIJ_fnc_DropYourWeaponsStartAddon;
