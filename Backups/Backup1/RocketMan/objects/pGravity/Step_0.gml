scCollision();
/*
//Gravity
if (!has_gravity)
	return;

vsp += grv;
//vsp = keyboard_check_pressed(ord("S")) * 4;
//Get the edge to check
var bbox_side;
var height = sprite_height;

//Horizontal
if (hsp > 0)
	bbox_side = bbox_right;
else
	bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_bottom) != 0 || tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_top) != 0) {
	if (hsp > 0)
		x = x - (x mod height) + (height - 1) - (bbox_right - x);
	else 
		x = x - (x mod height) - (bbox_left - x);
	hsp = 0;
}
/*else if (place_meeting(x + hsp, y, pWall)) {
	while (!place_meeting(x + sign(hsp), y, pWall))
		x = x + sign(hsp);
	if (afraidOfHeights)
		hsp = -walksp;
	else 
		hsp = 0;
}
//

x += hsp;

//Vertical
if (vsp > 0)
	bbox_side = bbox_bottom;
else
	bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + vsp) != 0 || tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + vsp) != 0) {
	if (vsp > 0) {
		y = y - (y mod height) + (height - 1) - (bbox_bottom - y);
		standing = true;
	} else
		y = y - (y mod height) - (bbox_top - y);
	vsp = 0;
}
/*else if (place_meeting(x, y + vsp, pWall)) {
	while (!place_meeting(x, y + sign(vsp), pWall))
		y = y + sign(vsp);
	vsp = 0;
}
//
y += vsp;

//Direction
if (change_x_to_dir && hsp != 0)
	image_xscale = sign(hsp);
//Gravity(hsp, true);
*/