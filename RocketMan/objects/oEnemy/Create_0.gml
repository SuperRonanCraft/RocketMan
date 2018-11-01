if (weapon != 0) {
	mygun = instance_create_depth(x, y, depth - 1, oWeapon);
	with (mygun)
		owner = other.id;
} else
	mygun = noone;
hit_cooldown = 0;