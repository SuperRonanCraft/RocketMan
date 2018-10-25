/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C67D03A
/// @DnDArgument : "code" "image_speed = 0;$(13_10)image_index = 0;$(13_10)ScreenShake(10, 60);$(13_10)audio_play_sound(snDeath, 10, false);$(13_10)SetGameSpeed(25);$(13_10)with (oCamera)$(13_10)	follow = other.id;"
image_speed = 0;
image_index = 0;
ScreenShake(10, 60);
audio_play_sound(snDeath, 10, false);
SetGameSpeed(25);
with (oCamera)
	follow = other.id;