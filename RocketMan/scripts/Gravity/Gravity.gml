/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 485020F5
/// @DnDArgument : "code" "/// @desc Gravity for an object$(13_10)$(13_10)//Horizontal$(13_10)if (place_meeting(x + hsp, y, oWall)) {$(13_10)	while (!place_meeting(x + sign(hsp), y, oWall))$(13_10)		x = x + sign(hsp);$(13_10)	hsp = argument0;$(13_10)}$(13_10)x = x + hsp;$(13_10)$(13_10)//Vertical$(13_10)if (place_meeting(x, y + vsp, oWall)) {$(13_10)	while (!place_meeting(x, y + sign(vsp), oWall))$(13_10)		y = y + sign(vsp);$(13_10)	vsp = 0;$(13_10)}$(13_10)y = y + vsp;$(13_10)$(13_10)//Direction$(13_10)if (hsp != 0)$(13_10)	image_xscale = sign(hsp);"
/// @desc Gravity for an object

//Horizontal
if (place_meeting(x + hsp, y, oWall)) {
	while (!place_meeting(x + sign(hsp), y, oWall))
		x = x + sign(hsp);
	hsp = argument0;
}
x = x + hsp;

//Vertical
if (place_meeting(x, y + vsp, oWall)) {
	while (!place_meeting(x, y + sign(vsp), oWall))
		y = y + sign(vsp);
	vsp = 0;
}
y = y + vsp;

//Direction
if (hsp != 0)
	image_xscale = sign(hsp);