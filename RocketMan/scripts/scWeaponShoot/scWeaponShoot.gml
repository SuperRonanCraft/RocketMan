/// @arg weapon-instance
/// @arg shooting?

if (argument1)
	with (argument0)
		if (current_cd == 0) {
			current_cd = weapon_map[? WEAPON_MAP.COOLDOWN];
			current_delay = weapon_map[? WEAPON_MAP.STARTUP];
		}