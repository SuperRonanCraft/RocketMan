/// @desc Set the direction to flop at
/// @arg sprite
/// @arg direction-of-killer
/// @arg horizontal-kick
/// @arg vertical-kick
/// @arg fade
/// @arg death-image-index
/// @arg smoke-effects
var instance = object_index;
instance_change(pDead, true);
sprite_index = argument0;
direction = argument1;
hsp = lengthdir_x(argument2, direction);
vsp = lengthdir_y(argument3, direction) - 2;
if (sign(hsp) != 0)
	image_xscale = sign(hsp);
fade = argument4;
owner = instance;
death_image_index = argument5;
smoke = argument6;