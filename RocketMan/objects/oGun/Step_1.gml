/// @desc Follow oPlayer

//Pointing / Angle
image_angle = point_direction(x, y, mouse_x, mouse_y);
if (image_angle > 90 && image_angle < 270)
	image_yscale = -1;
else
	image_yscale = 1;

if (!follow)
	return;

//Follow oPlayer
x = oPlayer.x;
y = oPlayer.y + 5;

firingdelay--;
recoil = max(0, recoil - 1);
if ((mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb)) && firingdelay < 0) {
	recoil = 4;
	firingdelay = firingpause;
	ScreenShake(2, 10);
	audio_sound_pitch(snShoot, choose(0.8, 1.0, 1.2));
	audio_play_sound(snShoot, 5, false);
	with (instance_create_layer(x + lengthdir_x(10, other.image_angle), y + lengthdir_y(10, other.image_angle), "Bullet", oMissle)){
		direction = other.image_angle + random_range(-other.accuracy, other.accuracy);
		image_angle = direction;
	}
	with (oPlayer) {
		gunkickx = lengthdir_x(other.kickx, other.image_angle - 180);
		gunkicky = lengthdir_y(other.kicky, other.image_angle - 180);
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);