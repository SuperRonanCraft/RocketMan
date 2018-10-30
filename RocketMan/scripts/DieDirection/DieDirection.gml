/// @desc Set the direction to flop at
/// @arg The dead object to change to
/// @arg Direction of killer
/// @arg Horizontal kick
/// @arg Verticla kick

instance_change(argument0, true);
direction = argument1;
hsp = lengthdir_x(argument2, direction);
vsp = lengthdir_y(argument3, direction) - 2;
if (sign(hsp) != 0)
	image_xscale = sign(hsp);