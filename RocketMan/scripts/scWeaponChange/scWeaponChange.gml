/// @desc change the weapon
/// @arg Weapon
var weapon = argument0;
//Makes sure rocket is not the same as the one already equipped (everts auto reload)
if (weapon_map[? ROCKET_MAP.TYPE] != weapon) {
	//Clear the map
	ds_map_destroy(weapon_map);
	//All default values
	scWeaponDefaults(weapon_map);
	//Grab custom weapon keys
	scWeaponGet(weapons[weapon], weapon_map);
	ammo = weapon_map[? ROCKET_MAP.CLIP];
	current_cd = weapon_map[? ROCKET_MAP.COOLDOWN];
	weapon_sprite = weapon_map[? ROCKET_MAP.WEAPON_SPRITE];
}