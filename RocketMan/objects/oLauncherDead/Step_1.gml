/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3D42A037
/// @DnDArgument : "code" "/// @desc Flip around$(13_10)if (done == 0){$(13_10)	done = Flop();$(13_10)	image_angle += 5;$(13_10)	if (image_angle > 90 && image_angle < 270)$(13_10)		image_yscale = -1;$(13_10)	else$(13_10)		image_yscale = 1;$(13_10)}"
/// @desc Flip around
if (done == 0){
	done = Flop();
	image_angle += 5;
	if (image_angle > 90 && image_angle < 270)
		image_yscale = -1;
	else
		image_yscale = 1;
}