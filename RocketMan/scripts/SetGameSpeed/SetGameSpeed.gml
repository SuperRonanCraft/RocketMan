/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5C328D53
/// @DnDArgument : "code" "/// @desc Reset Gamespeed and Room$(13_10)/// @arg FPS, 60 is default$(13_10)if (argument_count == 1)$(13_10)	game_set_speed(argument[0], gamespeed_fps);$(13_10)else $(13_10)	game_set_speed(60, gamespeed_fps);"
/// @desc Reset Gamespeed and Room
/// @arg FPS, 60 is default
if (argument_count == 1)
	game_set_speed(argument[0], gamespeed_fps);
else 
	game_set_speed(60, gamespeed_fps);