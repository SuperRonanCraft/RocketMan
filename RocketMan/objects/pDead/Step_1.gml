/// @desc Flop to ground 
if (global.paused)
	return;
if (doneFlopping == 0) {
	doneFlopping = Flop();
	if (doneFlopping == 1 && image_number > 1) {
		image_index = death_image_index;
		if (owner == oPlayer)
			SetGameSpeed();
	}
	if (rotate) {
		image_angle += 5;
		if (image_angle > 90 && image_angle < 270)
			image_yscale = -1;
		else
			image_yscale = 1;
	}
} else if (owner == oPlayer) {
	if (wait < 100)
			wait++;
	else 
		SlideTransition(TRANS_MODE.GOTO, room);
} else if (fade) {
	image_alpha -= 0.05;
    if (image_alpha < 0)
		instance_destroy();
}
if (smoke) {
	if (smokeParts mod 10 == 0) {
		instance_create_depth(x, y, depth - 1, oDust);
		smokeParts = 9;
	} else
		smokeParts--;
}