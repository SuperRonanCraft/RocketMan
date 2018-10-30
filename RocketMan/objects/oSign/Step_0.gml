/// @desc Right-Click near sign
if (instance_exists(oPlayer) && point_in_circle(oPlayer.x, oPlayer.y, x, y, 64)) {
	nearby = true;
	if (keyboard_check_pressed(ord("W")))
		DrawOnRoom(x, y, text, spd, border, focus_camera, 74, true, fontscale);
} else
	nearby = false;