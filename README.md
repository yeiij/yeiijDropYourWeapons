# yeiijDropYourWeapons
Standalone Addon for Arma 3

## What this does?
The addon force the target to drop weapons into a box (only for WEST/Blufor)

## How i do install this?
1 - Download the code and make a PBO or download the [latest released version](https://github.com/yeiij/yeiijDropYourWeapons/releases)
<br>
2 - Put the PBO file inside @Yeiij\addons
```
iex: @Yeiij\addons\yeiijDropYourWeapons.pbo
remember load the mod on server start at -serverMods
```

<br>
3 - Add the next call in your mission in initPlayerLocal.sqf and onPlayerRspawn.sqf:

```SQF
[] spawn YEIIJ_fnc_DropYourWeaponsAddAction;
```

## How i do edit this?
there are nothing to configure
