if (hit_cooldown == 0 && image_speed != 0 && image_index != 0 && image_index != image_number - 1) {
	with (other)
		HitShootable(other.id, false);
	hit_cooldown = cooldown * 60;
}