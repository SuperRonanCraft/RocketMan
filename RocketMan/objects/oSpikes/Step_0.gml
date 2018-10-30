/// @description Update spikes
if (image_index == image_number - 1) {
	animate--;
	if (animate <= 0) {
		animate = cooldown * 60;
		image_index = 1;
		image_speed = 1;
	}
}
if (hit_cooldown > 0)
	hit_cooldown--;