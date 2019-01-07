/// @desc Movement and particles

//Gravity
if (global.paused) {
	image_speed = 0;
	return;
} else
	image_speed = 1;
scGravity();
//scKeybind();

//Player Input
if (hascontrol) {
	key_left = keyboard_check(global.key_left);
	key_right = keyboard_check(global.key_right);
	key_jump = keyboard_check_pressed(global.key_jump);
	if (key_left || key_right || key_jump)
		controller = 0;
	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2) {
		key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
		key_right = max(gamepad_axis_value(0, gp_axislh), 0);
		controller = 1;
	}
	var gamepad_rh = gamepad_axis_value(0, gp_axisrh);
	var gamepad_rv = gamepad_axis_value(0, gp_axisrv);
	show_debug_message("H = " + string(gamepad_rh) + " V = " + string(gamepad_rv));
	if (abs(gamepad_rh) > 0.2 || abs(gamepad_rv) > 0.2) {
		window_mouse_set(window_mouse_get_x() + (gamepad_rh * 12), window_mouse_get_y() + (gamepad_rv * 12));
		controller = 1;
	}
	if (gamepad_button_check_pressed(0, gp_face1)) {
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

//Jumping
canjump--;
if (key_jump) {
	var jump = canjump > 0;
	if (!jump && jump_double) {
		jump = true;
		jump_double = false;
	} else if (jump)
		jump_double = true;
	if (jump || ghostjump) {
		vsp = -jump_height;
		canjump = 0;
		SpawnDustParticle(5, 0, 0, false, true, false, true);
		ghostjump = false;
	} 
}

//Direction
var aimside = sign(mouse_x - x);
if (aimside != 0)
	image_xscale = aimside;

//Animation
Jump(sPlayer, sPlayerRun, sPlayerAir, 1, 0, aimside, sPlayerRunBack, standing);
if (standing && !ghostjump)
	ghostjump = true;

with (myweapon) {
	scWeaponShoot(id, mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb));
	xpoint = mouse_x;
	ypoint = mouse_y;
}
//scWeaponStep();