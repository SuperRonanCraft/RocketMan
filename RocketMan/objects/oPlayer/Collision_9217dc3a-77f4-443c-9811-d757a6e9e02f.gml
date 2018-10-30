/// @desc Die
if (hit_cooldown < 120)
	hit_cooldown++;
else {
	HitPlayer();
	hit_cooldown = 0;
}