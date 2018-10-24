/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0AFE6DF2
/// @DnDArgument : "code" "//Player Input$(13_10)if (hascontrol) {$(13_10)	key_left = keyboard_check(ord("A"));$(13_10)	key_right = keyboard_check(ord("D"));$(13_10)	key_jump = keyboard_check_pressed(vk_space);$(13_10)$(13_10)	if (key_left || key_right || key_jump)$(13_10)		controller = 0;$(13_10)	$(13_10)	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2){$(13_10)		key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));$(13_10)		key_right = max(gamepad_axis_value(0, gp_axislh), 0);$(13_10)		controller = 1;$(13_10)	}$(13_10)$(13_10)	if (gamepad_button_check_pressed(0, gp_face1)){$(13_10)		key_jump = 1;$(13_10)		controller = 1;$(13_10)	}$(13_10)} else {$(13_10)	key_left = 0;$(13_10)	key_right = 0;$(13_10)	key_jump = 0;$(13_10)}$(13_10)$(13_10)//Calculate Movement$(13_10)var move = key_right - key_left;$(13_10)hsp = move * walksp;$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//Jumping$(13_10)onGround = place_meeting(x, y + 1, oWall);$(13_10)if (onGround && key_jump)$(13_10)	vsp = -7;$(13_10)$(13_10)//Horizontal$(13_10)if (place_meeting(x + hsp, y, oWall)) {$(13_10)	while (!place_meeting(x + sign(hsp), y, oWall))$(13_10)		x = x + sign(hsp);$(13_10)	hsp = 0;$(13_10)}$(13_10)x = x + hsp;$(13_10)$(13_10)//Vertical$(13_10)if (place_meeting(x, y + vsp, oWall)) {$(13_10)	while (!place_meeting(x, y + sign(vsp), oWall))$(13_10)		y = y + sign(vsp);$(13_10)	vsp = 0;$(13_10)}$(13_10)y = y + vsp;$(13_10)$(13_10)//Animation$(13_10)if (!onGround){$(13_10)	sprite_index = sPlayerAir;$(13_10)	image_speed = 0;$(13_10)	if (sign(vsp) > 0)$(13_10)		image_index = 1;$(13_10)	else$(13_10)		image_index = 0;$(13_10)} else {$(13_10)	image_speed = 1;$(13_10)	if (hsp == 0)$(13_10)		sprite_index = sPlayer;$(13_10)	else $(13_10)		sprite_index = sPlayerRun;$(13_10)}$(13_10)$(13_10)if (hsp != 0)$(13_10)	image_xscale = sign(hsp);"
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
onGround = place_meeting(x, y + 1, oWall);
if (onGround && key_jump)
	vsp = -7;

//Horizontal
if (place_meeting(x + hsp, y, oWall)) {
	while (!place_meeting(x + sign(hsp), y, oWall))
		x = x + sign(hsp);
	hsp = 0;
}
x = x + hsp;

//Vertical
if (place_meeting(x, y + vsp, oWall)) {
	while (!place_meeting(x, y + sign(vsp), oWall))
		y = y + sign(vsp);
	vsp = 0;
}
y = y + vsp;

//Animation
if (!onGround){
	sprite_index = sPlayerAir;
	image_speed = 0;
	if (sign(vsp) > 0)
		image_index = 1;
	else
		image_index = 0;
} else {
	image_speed = 1;
	if (hsp == 0)
		sprite_index = sPlayer;
	else 
		sprite_index = sPlayerRun;
}

if (hsp != 0)
	image_xscale = sign(hsp);