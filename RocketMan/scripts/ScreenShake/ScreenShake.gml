/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7700732B
/// @DnDArgument : "code" "/// @desc ScreenShake(magnitude, frames)$(13_10)/// @arg Magnitude set the strenght of the shake (radius)$(13_10)/// @arg Frames sets the lenght of the shake in frames$(13_10)$(13_10)with (oCamera){$(13_10)	if (argument0 > shake_remain){$(13_10)		shake_magnitude = argument0;$(13_10)		shake_remain = argument0;$(13_10)		shake_lenght = argument1;$(13_10)	}$(13_10)}"
/// @desc ScreenShake(magnitude, frames)
/// @arg Magnitude set the strenght of the shake (radius)
/// @arg Frames sets the lenght of the shake in frames

with (oCamera){
	if (argument0 > shake_remain){
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_lenght = argument1;
	}
}