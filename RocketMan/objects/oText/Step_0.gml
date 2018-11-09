/// @desc Progess text

letters += spd;
text_current = string_copy(text, 1, floor(letters));

draw_set_font(font);
if (h == 0)
	h = string_height(text);
w = string_width(text_current);

//Destroy when done
if (remove_on_move && letters >= length && (keyboard_check_pressed(vk_anykey) || instance_exists(oPlayer) ? true : oPlayer.controller == 1)){
	instance_destroy();
	if (focus_camera)
		with (oCamera)
			follow = oPlayer;
}