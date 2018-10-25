/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 13D6B3B3
/// @DnDArgument : "code" "/// @desc Flipout$(13_10)instance_change(oLauncherDead, true);$(13_10)$(13_10)direction = point_direction(other.x, other.y, x, y);$(13_10)hsp = lengthdir_x(6, direction);$(13_10)vsp = lengthdir_y(4, direction) - 3;$(13_10)if (sign(hsp) != 0)$(13_10)	image_scale = sign(hsp);"
/// @desc Flipout
instance_change(oLauncherDead, true);

direction = point_direction(other.x, other.y, x, y);
hsp = lengthdir_x(6, direction);
vsp = lengthdir_y(4, direction) - 3;
if (sign(hsp) != 0)
	image_scale = sign(hsp);