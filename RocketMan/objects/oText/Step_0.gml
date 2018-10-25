/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 284A6223
/// @DnDArgument : "code" "/// @desc Progess text$(13_10)$(13_10)letters += spd;$(13_10)text_current = string_copy(text, 1, floor(letters));$(13_10)$(13_10)draw_set_font(fSign);$(13_10)if (h == 0)$(13_10)	h = string_height(text);$(13_10)w = string_width(text_current);$(13_10)$(13_10)//Destroy when done$(13_10)if (letters >= length && keyboard_check_pressed(vk_anykey)){$(13_10)	instance_destroy();$(13_10)	with (oCamera)$(13_10)		follow = oPlayer;$(13_10)}"
/// @desc Progess text

letters += spd;
text_current = string_copy(text, 1, floor(letters));

draw_set_font(fSign);
if (h == 0)
	h = string_height(text);
w = string_width(text_current);

//Destroy when done
if (letters >= length && keyboard_check_pressed(vk_anykey)){
	instance_destroy();
	with (oCamera)
		follow = oPlayer;
}