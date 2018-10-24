/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2EFD048D
/// @DnDArgument : "code" "if (place_meeting(x, y, oWall))$(13_10)	instance_destroy();"
if (place_meeting(x, y, oWall))
	instance_destroy();