/// @desc Movement and particles
//Player Input
if (hascontrol) {
	key_left = keyboard_check(global.keybind_left);
	key_right = keyboard_check(global.keybind_right);
	key_jump = keyboard_check_pressed(global.keybind_jump);
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
		vsp = jump_height;
		canjump = 0;
		SpawnDustParticle(5, 0, 0, false, true, false, true);
		ghostjump = false;
	} 
}

//Gravity
var aimside = sign(mouse_x - x);
if (aimside != 0)
	image_xscale = aimside;

//Animation
grounded = Jump(sPlayer, sPlayerRun, sPlayerAir, 1, 0, aimside, sPlayerRunBack);
if (grounded && !ghostjump)
	ghostjump = true;
	
with (mygun) {
	if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb))
		if (current_cd == 0) {
			current_cd = cooldown;
			current_delay = startup;
		}
	xpoint = mouse_x;
	ypoint = mouse_y;
	}
