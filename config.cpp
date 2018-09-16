/**
 *
 * Addon: yeiijDropYourWeapons
 * Author: Jason REDUX (@Yeiij)
 * Date: 07/09/2018
 * File: config.cpp
 *
 */

class CfgPatches
{
	class YeiijDropYourWeapons
	{
		name = "Yeiij DropYourWeapons Addon";
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
		author = "Yeiij";
		authors[] = {"Yeiij"};
		url = "https://github.com/yeiij";
		version = "1.0";
		versionStr = "1.0";
		versionAr[] = {1,0};
	};
};

class CfgFunctions
{
	class YeiijDropYourWeapons
	{
		tag = "YEIIJ";
		class initDropYourWeapons
		{
			file = "yeiijDropYourWeapons";
			class DropYourWeaponsPreInit  { preInit  = 1; };
			class DropYourWeaponsPostInit { postInit = 1; };
			class DropYourWeaponsStartAddon {};
		};
		class compilesDropYourWeapons
		{
			file = "yeiijDropYourWeapons\functions";
			class DropYourWeaponsAddAction {};
			class DropYourWeaponsCheckItems {};
			class DropYourWeaponsSearchForWeapons {};
		};
	};
};
