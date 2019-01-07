/// @description Shoot bullet

if (current_delay == 0) {
	if (ammo != 0) {
		var length = weapon_map[? WEAPON_MAP.OFFSET];
		with (instance_create_depth(x + lengthdir_x(length, image_angle), y + lengthdir_y(length, image_angle), depth - 1, oBullet)) {
			sprite_index = other.weapon_map[? WEAPON_MAP.PROJECTILE];
			direction = other.image_angle + irandom_range(-3, 3);
			image_angle = direction;
			spd = other.weapon_map[? WEAPON_MAP.SPEED];
			owner = other.owner.id;
		}
		ammo--;
		//with (owner) {
		//	hsp -= lengthdir_x(other.recoil_push, other.direction);
		//	vsp -= lengthdir_y(other.recoil_push, other.direction);
		//}
		current_recoil = weapon_map[? WEAPON_MAP.RECOIL];
		ScreenShake(2, 10);
		audio_sound_pitch(snShoot, choose(0.8, 1.0, 1.2));
		audio_play_sound(snShoot, 5, false);
	}
}

event_inherited();