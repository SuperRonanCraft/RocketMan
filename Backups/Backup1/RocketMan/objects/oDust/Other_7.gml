/// @desc Destroy
if (!persist)
	instance_destroy();
else {
	image_speed = random_range(0.5, 1);
	image_index = random_range(0, 6);
	hsp = random_range(hsp_max, hsp_min);
	vsp = random_range(vsp_max, vsp_min);
	image_xscale = choose(1, -1);
	image_yscale = choose(1, -1);
	x = original_x;
	y = original_y;
}
