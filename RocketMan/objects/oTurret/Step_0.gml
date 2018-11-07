if (!instance_exists(oPlayer) || global.paused)
	return;
nearby = !collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, false) && point_distance(oPlayer.x, oPlayer.y, x, y) < (RES_W / 2);
if (nearby) {
	dir = point_direction(x, y, oPlayer.x, oPlayer.y); //Direction to player
	diff = angle_difference(dir, turret_dir); //The difference between the turret angle and direction to player
	turret_dir += clamp(diff, -1, 1); //Slowly rotate the turret
	if (diff < 45)
		if (current_cooldown >= cooldown) {
			with (instance_create_depth(x + lengthdir_x(10, turret_dir), y + lengthdir_y(10, turret_dir), depth - 1, oBullet)) {
				sprite_index = sBullet_AR;
				direction = other.turret_dir;
				image_angle = direction;
				spd = other.bulletspeed;
				owner = other.id;
			}
			current_cooldown = 0;
		} else
			current_cooldown++;
} else {
	if (roam == 0)
		roam = choose(240, 120, -240, -120);
	else if (roam < 0) {
		turret_dir += 0.2;
		roam++;
	} else { 
		turret_dir -= 0.2;
		roam--;
	}
}