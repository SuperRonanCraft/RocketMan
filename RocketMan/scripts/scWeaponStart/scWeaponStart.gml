/// @arg weapon

current_cd = 0;
current_delay = -1;
current_recoil = 0;
xpoint = x;
ypoint = y;
current_reload = 0;
//weapon_dir = direction;
//weapon_sprite = noone;
weapon_map = ds_map_create();
owner = noone;

var wep = argument0;
if (weapon_map[? WEAPON_MAP.TYPE] != wep) {
	//Clear the map
	ds_map_destroy(weapon_map);
	//All default values
	scWeaponDefaults(weapon_map);
	//Grab custom weapon keys
	scWeaponGet(scWeaponsList(wep), weapon_map);
	ammo = weapon_map[? WEAPON_MAP.CLIP];
	current_cd = weapon_map[? WEAPON_MAP.COOLDOWN];
	//weapon_sprite = weapon_map[? WEAPON_MAP.WEAPON_SPRITE];
}

