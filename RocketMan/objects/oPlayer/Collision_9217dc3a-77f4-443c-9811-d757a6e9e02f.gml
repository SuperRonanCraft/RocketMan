/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2087904F
/// @DnDArgument : "code" "/// @desc Die$(13_10)with (oLauncher)$(13_10)	instance_destroy();$(13_10)instance_change(oPDead, true);$(13_10)$(13_10)direction = point_direction(other.x, other.y, x, y);$(13_10)hsp = lengthdir_x(6, direction);$(13_10)vsp = lengthdir_y(4, direction) - 2;$(13_10)if (sign(hsp) != 0)$(13_10)	image_scale = sign(hsp);"
/// @desc Die
with (oLauncher)
	instance_destroy();
instance_change(oPDead, true);

direction = point_direction(other.x, other.y, x, y);
hsp = lengthdir_x(6, direction);
vsp = lengthdir_y(4, direction) - 2;
if (sign(hsp) != 0)
	image_scale = sign(hsp);