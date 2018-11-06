/// @desc Check hitting a shootable before wall and move
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
if (place_meeting(x, y, pShootable)) {
	with (instance_place(x, y, pShootable))
		HitShootable(other.owner, true);
		/*if (other.owner != id) {
			hp -= other.damage;
			flash = 3;
			hitfrom = other.direction;
			instance_destroy(other.id);
			if (other.owner.object_index == oEnemy)
				with (oScore)
					healthscale = 2;
		}*/
} else if (place_meeting(x, y, oWall) && image_index != 0) {
	while (position_meeting(x, y, oWall)) {
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
	}
	spd = 0;
	instance_change(oHitSpark, true);
	layer_add_instance("Tiles", id);
	depth += 1;
}
