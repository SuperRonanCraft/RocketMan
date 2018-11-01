if (weapon != 0) {
	mygun = instance_create_depth(x, y, depth - 1, oWeapon);
	with (mygun) {
		owner = other.id;
		ChangeWeapon(other.weapon);
		ammo[weapon] += 20;
	}
} else
	mygun = noone;
hit_cooldown = 0;
event_inherited();