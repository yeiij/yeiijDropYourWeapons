/**
 *
 * Addon: yeiijDropYourWeapons
 * Author: Jason REDUX (@Yeiij)
 * Date: 07/09/2018
 * File: fn_DropYourWeaponsCheckItems.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDropYourWeapons (Server): Check Items  :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

params[
    ["_items", [], []]
];

private _dangerousItems = [];
private _weapons =  [];
private _magazines = [];

{
    _type = _x call BIS_fnc_itemType;
    _type = _type select 0;
    switch (_type) do {
        case "Weapon" : {  _weapons pushBack _x };
        case "Magazine" : {  _magazines pushBack _x };
    };
} forEach _items;

_dangerousItems pushBack _weapons;
_dangerousItems pushBack _magazines;

_dangerousItems;
