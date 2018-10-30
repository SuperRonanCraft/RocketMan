/// @desc Gravity for an object
/// @arg Horizontal speed to set when touching wall
/// @arg vertical kick
/// @arg change look direction
vsp = (vsp + grv) + argument1

//Horizontal
if (place_meeting(x + hsp, y, pWall)) {
	while (!place_meeting(x + sign(hsp), y, pWall))
		x = x + sign(hsp);
	hsp = -argument0;
}
x = x + hsp;

//Vertical
if (place_meeting(x, y + vsp, pWall)) {
	while (!place_meeting(x, y + sign(vsp), pWall))
		y = y + sign(vsp);
	vsp = 0;
}
y = y + vsp;

//Direction
if (argument2 && hsp != 0)
	image_xscale = sign(hsp);