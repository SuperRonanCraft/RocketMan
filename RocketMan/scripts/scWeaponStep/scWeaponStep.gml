/// @desc Follow Owner

if (owner == noone) exit;

//Follow owner
x = owner.x - lengthdir_x(current_recoil, image_angle);
y = owner.y + 5 - lengthdir_y(current_recoil, image_angle);

//firingdelay--;
//recoil = max(0, recoil - 1);

if (weapon_map[? WEAPON_MAP.PROJECTILE] == noone) exit;

//Delay till next shot
current_delay = max(-1, current_delay - 1);
if (current_delay == -1)
	current_cd = max(0, current_cd - 1);
current_recoil = max(0, floor(current_recoil * 0.8));

//Reload
if (ammo == 0)
	if (current_reload > weapon_map[? WEAPON_MAP.RELOAD_TIME]) {
		ammo = weapon_map[? WEAPON_MAP.CLIP];
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