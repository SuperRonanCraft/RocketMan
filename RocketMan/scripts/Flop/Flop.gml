/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 485020F5
/// @DnDArgument : "code" "/// @desc Done falling for an object$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//Horizontal$(13_10)if (place_meeting(x + hsp, y, oWall)) {$(13_10)	while (!place_meeting(x + sign(hsp), y, oWall))$(13_10)		x = x + sign(hsp);$(13_10)	hsp = 0;$(13_10)}$(13_10)x = x + hsp;$(13_10)$(13_10)//Face Direction$(13_10)if (hsp != 0)$(13_10)	image_xscale = sign(hsp);$(13_10)	$(13_10)//Vertical$(13_10)if (place_meeting(x, y + vsp, oWall)) {$(13_10)	if (vsp > 0)$(13_10)		return 1;$(13_10)	while (!place_meeting(x, y + sign(vsp), oWall))$(13_10)		y = y + sign(vsp);$(13_10)	vsp = 0;$(13_10)}$(13_10)y = y + vsp;$(13_10)return 0;"
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
	if (vsp > 0)
		return 1;
	while (!place_meeting(x, y + sign(vsp), oWall))
		y = y + sign(vsp);
	vsp = 0;
}
y = y + vsp;
return 0;