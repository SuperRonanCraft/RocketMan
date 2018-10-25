/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0AFE6DF2
/// @DnDArgument : "code" "//Player Input$(13_10)if (hascontrol) {$(13_10)	key_left = keyboard_check(ord("A"));$(13_10)	key_right = keyboard_check(ord("D"));$(13_10)	key_jump = keyboard_check_pressed(vk_space);$(13_10)$(13_10)	if (key_left || key_right || key_jump)$(13_10)		controller = 0;$(13_10)	$(13_10)	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2){$(13_10)		key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));$(13_10)		key_right = max(gamepad_axis_value(0, gp_axislh), 0);$(13_10)		controller = 1;$(13_10)	}$(13_10)$(13_10)	if (gamepad_button_check_pressed(0, gp_face1)){$(13_10)		key_jump = 1;$(13_10)		controller = 1;$(13_10)	}$(13_10)} else {$(13_10)	key_left = 0;$(13_10)	key_right = 0;$(13_10)	key_jump = 0;$(13_10)}$(13_10)$(13_10)//Calculate Movement$(13_10)var move = key_right - key_left;$(13_10)hsp = move * walksp;$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//Jumping$(13_10)canjump--;$(13_10)if (canjump > 0 && key_jump){$(13_10)	vsp = -7;$(13_10)	canjump = 0;$(13_10)}$(13_10)$(13_10)//Gravity$(13_10)Gravity(0);$(13_10)//Animation$(13_10)Jump(sPlayer, sPlayerRun, sPlayerAir, 1, 0);$(13_10)"
//Player Input
if (hascontrol) {
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);

	if (key_left || key_right || key_jump)
		controller = 0;
	
	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2){
		key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
		key_right = max(gamepad_axis_value(0, gp_axislh), 0);
		controller = 1;
	}

	if (gamepad_button_check_pressed(0, gp_face1)){
		key_jump = 1;
		controller = 1;
	}
} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

//Calculate Movement
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

//Jumping
canjump--;
if (canjump > 0 && key_jump){
	vsp = -7;
	canjump = 0;
}

//Gravity
Gravity(0);
//Animation
Jump(sPlayer, sPlayerRun, sPlayerAir, 1, 0);