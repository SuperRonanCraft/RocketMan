/// @desc Check hitting a shootable before wall and move
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);

if (place_meeting(x, y, pWall) && image_index != 0)
	instance_change(oHitSpark, true);
