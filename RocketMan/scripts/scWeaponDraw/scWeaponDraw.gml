/// @description Draw gun
if (weapon_sprite != noone) {
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
