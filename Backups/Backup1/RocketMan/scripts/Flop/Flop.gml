/// @desc Done falling for an object
vsp = vsp + grv;

//Horizontal
if (place_meeting(x + hsp, y, oWall)) {
	while (!place_meeting(x + sign(hsp), y, oWall))
		x = x + sign(hsp);
	hsp = 0;
}
x = x + hsp;

//Face Direction
if (hsp != 0)
	image_xscale = sign(hsp);
	
//Vertical
if (place_meeting(x, y + vsp, oWall)) {
	while (!place_meeting(x, y + sign(vsp), oWall))
		y = y + sign(vsp);
	vsp = 0;
}
y = y + vsp;
return vsp == 0 && !place_meeting(x, y - 1, oWall) ? 1 : 0;