/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 60C547D0
/// @DnDArgument : "code" "/*$(13_10)if (flash > 0){$(13_10)	flash--;$(13_10)	gpu_set_fog(true, c_white, 0, 0);$(13_10)	draw_sprite(sprite_index, image_index, x, y);$(13_10)	gpu_set_fog(false, c_black, 0, 0);$(13_10)	//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);$(13_10)	//draw_text(x, y - 25, "Ouch!");$(13_10)}*/$(13_10)draw_self();$(13_10)if (flash > 0) {$(13_10)	flash--;$(13_10)	shader_set(shWhite);$(13_10)	draw_self();$(13_10)	shader_reset();$(13_10)}"
/*
if (flash > 0){
	flash--;
	gpu_set_fog(true, c_white, 0, 0);
	draw_sprite(sprite_index, image_index, x, y);
	gpu_set_fog(false, c_black, 0, 0);
	//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	//draw_text(x, y - 25, "Ouch!");
}*/
draw_self();
if (flash > 0) {
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}/**/