/// @desc Touch Player
if (hit_cooldown <= 0) {
	HitPlayer();
	hit_cooldown = 120;
}