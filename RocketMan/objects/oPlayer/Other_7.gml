/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6FCE2A5D
/// @DnDArgument : "code" "/// @desc Footsteps$(13_10)if (sprite_index == sPlayerRun)$(13_10)	audio_play_sound(choose(snFoot1, snFoot2, snFoot3, snFoot4), 1, false);"
/// @desc Footsteps
if (sprite_index == sPlayerRun)
	audio_play_sound(choose(snFoot1, snFoot2, snFoot3, snFoot4), 1, false);