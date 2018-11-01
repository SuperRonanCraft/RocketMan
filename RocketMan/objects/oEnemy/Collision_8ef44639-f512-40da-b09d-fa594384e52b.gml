/// @desc Touch Player
if (hit_cooldown <= 0) {
	with (other)
		HitShootable(other.id, false);
	hit_cooldown = 120;
}