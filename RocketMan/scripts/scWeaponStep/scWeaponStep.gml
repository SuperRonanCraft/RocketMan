/// @desc Follow Owner

//Pointing / Angle
weapon_dir = point_direction(x, y, xpoint, ypoint);
weapon_yscale = 1;
if (weapon_dir > 90 && weapon_dir < 270)
	weapon_yscale = -1;

//Follow oPlayer
//x = owner.x;
//y = owner.y + 5;

//firingdelay--;
//recoil = max(0, recoil - 1);

if (weapon_map[? ROCKET_MAP.PROJECTILE] == noone)
	return;

//Bullet
if (current_delay == 0) {
	if (ammo != 0) {
		var length = weapon_map[? ROCKET_MAP.OFFSET];
		with (instance_create_depth(x + lengthdir_x(length, weapon_dir), y + lengthdir_y(length, weapon_dir), depth - 1, oBullet)) {
			sprite_index = other.weapon_map[? ROCKET_MAP.PROJECTILE];
			direction = other.weapon_dir + irandom_range(-3, 3);
			image_angle = direction;
			spd = other.weapon_map[? ROCKET_MAP.SPEED];
			owner = other.id;
		}
		ammo--;
		//with (owner) {
		//	hsp -= lengthdir_x(other.recoil_push, other.direction);
		//	vsp -= lengthdir_y(other.recoil_push, other.direction);
		//}
		current_recoil = weapon_map[? ROCKET_MAP.RECOIL];
		ScreenShake(2, 10);
		audio_sound_pitch(snShoot, choose(0.8, 1.0, 1.2));
		audio_play_sound(snShoot, 5, false);
	}
}
current_delay = max(-1, current_delay - 1);
if (current_delay == -1)
	current_cd = max(0, current_cd - 1);
current_recoil = max(0, floor(current_recoil * 0.8));

//Reload
if (ammo == 0)
	if (current_reload > weapon_map[? ROCKET_MAP.RELOAD_TIME]) {
		ammo = weapon_map[? ROCKET_MAP.CLIP];
		current_reload = 0;
	} else
		current_reload++;
	
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