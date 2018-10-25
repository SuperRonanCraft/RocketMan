/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C67D03A
/// @DnDArgument : "code" "hsp = 0;$(13_10)vsp = 0;$(13_10)grv = 0.3;$(13_10)done = 0;$(13_10)image_speed = 0;$(13_10)image_index = 0;$(13_10)ScreenShake(10, 60);$(13_10)audio_play_sound(snDeath, 10, false);$(13_10)game_set_speed(30, gamespeed_fps);$(13_10)with (oCamera)$(13_10)	follow = other.id;"
hsp = 0;
vsp = 0;
grv = 0.3;
done = 0;
image_speed = 0;
image_index = 0;
ScreenShake(10, 60);
audio_play_sound(snDeath, 10, false);
game_set_speed(30, gamespeed_fps);
with (oCamera)
	follow = other.id;