# yeiijDropYourWeapons
Standalone Addon for Arma 3

## What this does?
The addon force the target to drop weapons into a box

## How i do install this?
1 - Download the code and make a PBO or download the [latest released version](https://github.com/yeiij/yeiijDropYourWeapons/releases)
<br>
2 - Put the PBO file inside @life_server\addons
```
iex: @life_server\addons\yeiijDropYourWeapons.pbo
```

<br>
3 - Add the next call somewhere in the mission/client side:

```SQF
[] spawn YEIIJ_fnc_DropYourWeaponsSearchForWeapons;
```

## How i do edit this?
the addon contains a file named [config.sqf](https://github.com/yeiij/yeiijDropYourWeapons/blob/master/config/config.sqf) inside the folder config
