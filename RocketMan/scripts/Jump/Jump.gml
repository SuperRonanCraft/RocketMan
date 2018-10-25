/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5DFB7982
/// @DnDArgument : "code" "/// @desc Set the jump animations$(13_10)/// @arg sprite_index when stationary$(13_10)/// @arg sprite_index while running$(13_10)/// @arg sprite_index when in the air$(13_10)/// @arg image_index when going up$(13_10)/// @arg image_index when going down$(13_10)$(13_10)//Animation$(13_10)if (!place_meeting(x, y + 1, oWall)){$(13_10)	sprite_index = argument2;$(13_10)	image_speed = 0;$(13_10)	if (sign(vsp) > 0)$(13_10)		image_index = argument3;$(13_10)	else$(13_10)		image_index = argument4;$(13_10)} else {$(13_10)	canjump = 10;$(13_10)	if (sprite_index == argument2) {$(13_10)		audio_sound_pitch(snLanding, choose(0.8, 1.0, 1.2));$(13_10)		audio_play_sound(snLanding, 4, false);$(13_10)	}$(13_10)	image_speed = 1;$(13_10)	if (hsp == 0)$(13_10)		sprite_index = argument0;$(13_10)	else $(13_10)		sprite_index = argument1;$(13_10)}"
/// @desc Set the jump animations
/// @arg sprite_index when stationary
/// @arg sprite_index while running
/// @arg sprite_index when in the air
/// @arg image_index when going up
/// @arg image_index when going down

//Animation
if (!place_meeting(x, y + 1, oWall)){
	sprite_index = argument2;
	image_speed = 0;
	if (sign(vsp) > 0)
		image_index = argument3;
	else
		image_index = argument4;
} else {
	canjump = 10;
	if (sprite_index == argument2) {
		audio_sound_pitch(snLanding, choose(0.8, 1.0, 1.2));
		audio_play_sound(snLanding, 4, false);
	}
	image_speed = 1;
	if (hsp == 0)
		sprite_index = argument0;
	else 
		sprite_index = argument1;
}