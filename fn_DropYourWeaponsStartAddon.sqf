/**
 *
 * Addon: yeiijDropYourWeapons
 * Author: Jason REDUX (@Yeiij)
 * Date: 07/09/2018
 * File: fn_DropYourWeaponsStartAddon.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDropYourWeapons (Server): Starting Addon :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::::: ";

{
    publicVariable format ["YEIIJ_fnc_%1", (configName _x)];
} forEach ("true" configClasses (configFile >> "cfgFunctions" >> "YeiijDropYourWeapons" >> "compilesDropYourWeapons"));