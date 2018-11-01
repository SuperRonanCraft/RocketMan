/// @desc Follow Owner

//Pointing / Angle
direction = point_direction(x, y, xpoint, ypoint);
if (image_angle > 90 && image_angle < 270)
	image_yscale = -1;
else
	image_yscale = 1;
image_angle = direction;

//Follow oPlayer
x = owner.x;
y = owner.y + 5;

//firingdelay--;
//recoil = max(0, recoil - 1);


//Bullet
if (current_delay == 0 && projectile != -1) {
	if (ammo[weapon] != 0) {
		with (instance_create_layer(x - lengthdir_x(length, direction), y + lengthdir_y(length, direction), "Bullet", oBullet)) {
			sprite_index = other.projectile;
			direction = other.direction;
			image_angle = direction;
			speed = other.bulletspeed;
			owner = other.owner;
		}
		//ammo[weapon] -= 1;
		//with (owner) {
		//	hsp -= lengthdir_x(other.recoil_push, other.direction);
		//	vsp -= lengthdir_y(other.recoil_push, other.direction);
		//}
		current_recoil = recoil;
		ScreenShake(2, 10);
		audio_sound_pitch(snShoot, choose(0.8, 1.0, 1.2));
		audio_play_sound(snShoot, 5, false);
	}
}
current_delay = max(-1, current_delay - 1);
if (current_delay == -1)
	current_cd = max(0, current_cd - 1);
current_recoil = max(0, floor(current_recoil * 0.8));

depth = owner.depth - 1;
	
/*
recoil = 4;
		firingdelay = firingpause;
		ScreenShake(2, 10);
		audio_sound_pitch(snShoot, choose(0.8, 1.0, 1.2));
		audio_play_sound(snShoot, 5, false);
		with (instance_create_layer(x + lengthdir_x(10, other.image_angle), y + lengthdir_y(10, other.image_angle), "Bullet", projectile)){
			direction = other.image_angle + random_range(-other.accuracy, other.accuracy);
			image_angle = direction;
		}
		with (oPlayer) {
			gunkickx = lengthdir_x(other.kickx, other.image_angle - 180);
			gunkicky = lengthdir_y(other.kicky, other.image_angle - 180);
		}
*/

//x = x - lengthdir_x(recoil, image_angle);
//y = y - lengthdir_y(recoil, image_angle);