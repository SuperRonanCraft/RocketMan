/// @desc Set the jump animations
/// @arg sprite_index when stationary
/// @arg sprite_index while running
/// @arg sprite_index when in the air
/// @arg image_index when going up
/// @arg image_index when going down
/// @arg direction aiming
/// @arg image_index running backwards

var onGround = false;

//Animation
if (!place_meeting(x, y + 1, pWall)){
	sprite_index = argument2;
	image_speed = 0;
	if (sign(vsp) > 0)
		image_index = argument3;
	else
		image_index = argument4;
} else {
	onGround = true;
	canjump = 10;
	if (sprite_index == argument2) {
		audio_sound_pitch(snLanding, choose(0.8, 1.0, 1.2));
		audio_play_sound(snLanding, 4, false);
	}
	image_speed = 1;
	if (hsp == 0)
		sprite_index = argument0;
	else {
		sprite_index = argument1;
		if (argument5 != sign(hsp))
			sprite_index = argument6;
	}
}
return onGround;