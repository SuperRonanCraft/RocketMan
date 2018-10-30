/// @description Insert description here
// You can write your code in this editor
x = owner.x;
y = owner.y + 10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oPlayer)) {
	if (oPlayer.x < x)
		image_yscale = -image_yscale;
	if (!collision_line(x, y, oPlayer.x, oPlayer.y, pWall, false, false) && point_distance(oPlayer.x, oPlayer.y, x, y) < 600) {
		image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
		countdown--;
		if (countdown <= 0) {
			countdown = countdownrate;
			audio_sound_pitch(snShoot, choose(0.8, 1.0, 1.2));
			audio_play_sound(snShoot, 5, false);
			with (instance_create_layer(x, y, "Bullet", oEBullet)){
				direction = other.image_angle + random_range(-other.accuracy, other.accuracy);
				spd = 5;
				image_angle = direction;
			}
		}
	}
}