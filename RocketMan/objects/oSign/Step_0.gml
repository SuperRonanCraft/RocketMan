/// @desc Interact near sign
if (instance_exists(oPlayer) && point_in_circle(oPlayer.x, oPlayer.y, x, y, 64)) {
	nearby = true;
	if (keyboard_check_pressed(global.keybind_interact))
		DrawOnRoom(x, y, text, spd, border, focus_camera, 74, true, fontscale);
	if (opacity < 0)
		fade = false;
	else if (opacity > 100)
		fade = true;
	if (fade)
		opacity--;
	else
		opacity++;
} else
	nearby = false;