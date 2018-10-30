/// @desc Flop to ground
if (doneFlopping == 0) {
	doneFlopping = Flop();
	if (doneFlopping == 1 && on_ground_image && image_number > 1)
		image_index = 1;
	if (rotate) {
		image_angle += 5;
		if (image_angle > 90 && image_angle < 270)
			image_yscale = -1;
		else
			image_yscale = 1;
	}
} else if (fade) {
	image_alpha -= 0.05;
    if (image_alpha < 0)
		instance_destroy();
}