/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3D42A037
/// @DnDArgument : "code" "x = oPlayer.x;$(13_10)y = oPlayer.y + 10;$(13_10)$(13_10)$(13_10)if (oPlayer.controller == 0)$(13_10)	image_angle = point_direction(x, y, mouse_x, mouse_y);$(13_10)else {$(13_10)	var controllerh = gamepad_axis_value(0, gp_axisrh);$(13_10)	var controllerv = gamepad_axis_value(0, gp_axisrv);$(13_10)	if (abs(controllerh) > 0.2 || abs(controllerv) > 0.2)$(13_10)		controller_angle = point_direction(0, 0, controllerh, controllerv);$(13_10)	image_angle = controller_angle;$(13_10)}$(13_10)$(13_10)firingdelay--;$(13_10)recoil = max(0, recoil - 1);$(13_10)if ((mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb)) && firingdelay < 0) {$(13_10)	recoil = 4;$(13_10)	firingdelay = 5;$(13_10)	ScreenShake(2, 10);$(13_10)	with (instance_create_layer(x, y, "Missles", oMissle)){$(13_10)		speed = 25;$(13_10)		direction = other.image_angle + random_range(-3, 3);$(13_10)		image_angle = direction;$(13_10)	}$(13_10)}$(13_10)$(13_10)x = x - lengthdir_x(recoil, image_angle);$(13_10)y = y - lengthdir_y(recoil, image_angle);$(13_10)$(13_10)if (image_angle > 90 && image_angle < 270)$(13_10)	image_yscale = -1;$(13_10)else$(13_10)	image_yscale = 1;"
x = oPlayer.x;
y = oPlayer.y + 10;


if (oPlayer.controller == 0)
	image_angle = point_direction(x, y, mouse_x, mouse_y);
else {
	var controllerh = gamepad_axis_value(0, gp_axisrh);
	var controllerv = gamepad_axis_value(0, gp_axisrv);
	if (abs(controllerh) > 0.2 || abs(controllerv) > 0.2)
		controller_angle = point_direction(0, 0, controllerh, controllerv);
	image_angle = controller_angle;
}

firingdelay--;
recoil = max(0, recoil - 1);
if ((mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb)) && firingdelay < 0) {
	recoil = 4;
	firingdelay = 5;
	ScreenShake(2, 10);
	with (instance_create_layer(x, y, "Missles", oMissle)){
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90 && image_angle < 270)
	image_yscale = -1;
else
	image_yscale = 1;