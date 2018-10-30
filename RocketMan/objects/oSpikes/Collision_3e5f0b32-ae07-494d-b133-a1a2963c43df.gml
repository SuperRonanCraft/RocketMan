if (hit_cooldown <= 0 && image_index != 0 && image_index != image_number - 1) {
	HitPlayer();
	hit_cooldown = 120;
}
