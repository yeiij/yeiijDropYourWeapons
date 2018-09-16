/**
 *
 * Addon: yeiijDropYourWeapons
 * Author: Jason REDUX (@Yeiij)
 * Date: 07/09/2018
 * File: fn_DropYourWeaponsSearchForWeapons.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijDropYourWeapons (Server): Search Weapons :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::::: ";

// check the target it's a unit/player
if (isNull cursorTarget || !(cursorTarget isKindOf 'Man')) exitWith {};

// get all player items/weapons in inventory
private _playerToClean = cursorTarget;
private _primaryWeapon = primaryWeapon _playerToClean;
private _handgunWeapon = handgunWeapon _playerToClean;
private _secondaryWeapon = secondaryWeapon _playerToClean;
private _backpackItems = backpackItems _playerToClean;
private _vestItems = vestItems _playerToClean;
private _uniformItems = uniformItems _playerToClean;

private _backpackFiltredItems = [_backpackItems] call YEIIJ_fnc_DropYourWeaponsCheckItems;
private _vestFiltredItems = [_vestItems] call YEIIJ_fnc_DropYourWeaponsCheckItems;
private _uniforFiltredItems = [_uniformItems] call YEIIJ_fnc_DropYourWeaponsCheckItems;

// make sure there are atleast 1 weapon or magazine to create the box
if (
    _primaryWeapon isEqualTo "" &&
    _handgunWeapon isEqualTo "" &&
    _secondaryWeapon isEqualTo "" &&
    count(_backpackFiltredItems select 0) < 1 &&
    count(_backpackFiltredItems select 1) < 1 &&
    count(_vestFiltredItems select 0) < 1 &&
    count(_vestFiltredItems select 1) < 1 &&
    count(_uniforFiltredItems select 0) < 1 &&
    count(_uniforFiltredItems select 1) < 1
 ) exitWith  {
    hintSilent "No weapons found";
};

/*  ========================================================================  */
/* | Create the box that will contain the weapons/magazines                 | */
/*  ========================================================================  */
private _weaponsBox = "Box_NATO_WpsSpecial_F" createVehicle [0,0,0];
clearWeaponCargoGlobal _weaponsBox;
clearMagazineCargoGlobal _weaponsBox;
clearBackpackCargoGlobal _weaponsBox;
clearItemCargoGlobal _weaponsBox;
_weaponsBox setPos (_playerToClean modelToWorld [0,0,0]);
// create the hold action to delete the box (only for WEST)
[
	_weaponsBox,
	"Secure the box",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa",
	"_this distance _target < 3 && {playerSide isEqualTo WEST}",
	"_caller distance _target < 3 && {playerSide isEqualTo WEST}",
	{ },
	{},
	{ deleteVehicle _target },
	{},
	[],
	2.5,
	0,
	true,
	false
] remoteExec ["BIS_fnc_holdActionAdd", 0, _weaponsBox];

/*  ========================================================================  */
/* | Drop Primary Weapon                                                    | */
/*  ========================================================================  */
if !(_primaryWeapon isEqualTo "") then {
    _playerToClean removeWeaponGlobal _primaryWeapon;
    sleep 0.1;
    _weaponsBox addWeaponCargoGlobal [_primaryWeapon,1];
};
/*  ========================================================================  */
/* | Drop Hand Weapon                                                       | */
/*  ========================================================================  */
if !(_handgunWeapon isEqualTo "") then {
    _playerToClean removeWeaponGlobal _handgunWeapon;
    sleep 0.1;
    _weaponsBox addWeaponCargoGlobal [_handgunWeapon,1];
};
/*  ========================================================================  */
/* | Drop Secondary Weapon                                                  | */
/*  ========================================================================  */
if !(_secondaryWeapon isEqualTo "") then {
    _playerToClean removeWeaponGlobal _secondaryWeapon;
    sleep 0.1;
    _weaponsBox addWeaponCargoGlobal [_secondaryWeapon,1];
};
/*  ========================================================================  */
/* | Drop Backpack Weapon                                                  | */
/*  ========================================================================  */
{
    _playerToClean removeItemFromBackpack _x;
    sleep 0.1;
    _weaponsBox addWeaponCargoGlobal [_x,1];
} forEach (_backpackFiltredItems select 0);
{
    _playerToClean removeItemFromBackpack _x;
    sleep 0.1;
    _weaponsBox addMagazineCargoGlobal [_x,1];
} forEach (_backpackFiltredItems select 1);
/*  ========================================================================  */
/* | Drop Vest Weapon                                                       | */
/*  ========================================================================  */
{
    _playerToClean removeItemFromVest _x;
    sleep 0.1;
    _weaponsBox addWeaponCargoGlobal [_x,1];
} forEach (_vestFiltredItems select 0);
{
    _playerToClean removeItemFromVest _x;
    sleep 0.1;
    _weaponsBox addMagazineCargoGlobal [_x,1];
} forEach (_vestFiltredItems select 1);
/*  ========================================================================  */
/* | Drop Uniform Weapon                                                    | */
/*  ========================================================================  */
{
    _playerToClean removeItemFromUniform _x;
    sleep 0.1;
    _weaponsBox addWeaponCargoGlobal [_x,1];
} forEach (_uniforFiltredItems select 0);
{
    _playerToClean removeItemFromUniform _x;
    sleep 0.1;
    _weaponsBox addMagazineCargoGlobal [_x,1];
} forEach (_uniforFiltredItems select 1);
