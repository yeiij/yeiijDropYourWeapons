/**
 *
 * Addon: yeiijDropYourWeapons
 * Author: Jason REDUX (@Yeiij)
 * Date: 07/09/2018
 * File: fn_DropYourWeaponsPreInit.sqf
 *
 */

diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";
diag_log " || yeiijDropYourWeapons (Server): PRE-INIT                      || ";
diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";

if (hasInterface) exitWith {};

call compile preprocessFileLineNumbers "yeiijDropYourWeapons\config\config.sqf";
