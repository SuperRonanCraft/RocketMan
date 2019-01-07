/// @description Draw gun

//Pointing / Angle
if (owner != noone) {
	image_angle = point_direction(x, y, xpoint, ypoint);
	if (image_angle > 90 && image_angle < 270)
		image_yscale = -1;
	else
		image_yscale = 1;
}

draw_self();

/*if (weapon_sprite != noone) {
	draw_sprite_ext(
	weapon_sprite,
	1,
	x - lengthdir_x(current_recoil, weapon_dir),
	y - lengthdir_y(current_recoil, weapon_dir),
	1,
	weapon_yscale,
	weapon_dir,
	image_blend,
	image_alpha);
}
