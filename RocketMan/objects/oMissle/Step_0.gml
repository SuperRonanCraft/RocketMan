/// @desc Check hitting a shootable before wall and move
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);
if (place_meeting(x, y, pShootable)) {
	with (instance_place(x, y, pShootable)){
		hp -= other.damage;
		flash = 3;
		hitfrom = other.direction;
	}
	instance_destroy();
} else if (place_meeting(x, y, pWall) && image_index != 0) {
	while (position_meeting(x, y, pWall)) {
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
	}
	spd = 0;
	instance_change(oHitSpark, true);
	layer_add_instance("Tiles", id);
	depth += 1;
}
