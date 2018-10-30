/// @desc Something hit a wall
image_index = 0;
image_speed = 1;

while(place_meeting(x, y, pWall)) {
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
}