with (oWeapon) {
	ChangeWeapon(other.weapon);
	ammo[weapon] += 20;
}
CanProgress();
instance_destroy();