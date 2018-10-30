if (hasweapon) {
	mygun = instance_create_layer(x, y, "Gun", oEGun)
	with (mygun)
		owner = other.id;
} else
	mygun = noone;
hit_cooldown = 0;