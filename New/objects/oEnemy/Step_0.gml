/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65C28688
/// @DnDArgument : "code" "vsp = vsp + grv;$(13_10)$(13_10)//Horizontal$(13_10)if (place_meeting(x + hsp, y, oWall)) {$(13_10)	while (!place_meeting(x + sign(hsp), y, oWall))$(13_10)		x = x + sign(hsp);$(13_10)	hsp = -hsp;$(13_10)}$(13_10)x = x + hsp;$(13_10)$(13_10)//Vertical$(13_10)if (place_meeting(x, y + vsp, oWall)) {$(13_10)	while (!place_meeting(x, y + sign(vsp), oWall))$(13_10)		y = y + sign(vsp);$(13_10)	vsp = 0;$(13_10)}$(13_10)y = y + vsp;$(13_10)$(13_10)//Animation$(13_10)if (!place_meeting(x, y + 1, oWall)){$(13_10)	sprite_index = sEnemyAir;$(13_10)	image_speed = 0;$(13_10)	if (sign(vsp) > 0)$(13_10)		image_index = 1;$(13_10)	else$(13_10)		image_index = 0;$(13_10)} else {$(13_10)	image_speed = 1;$(13_10)	if (hsp == 0)$(13_10)		sprite_index = sEnemy;$(13_10)	else $(13_10)		sprite_index = sEnemyRun;$(13_10)}$(13_10)$(13_10)//Direction$(13_10)if (hsp != 0)$(13_10)	image_xscale = sign(hsp);"
vsp = vsp + grv;

//Horizontal
if (place_meeting(x + hsp, y, oWall)) {
	while (!place_meeting(x + sign(hsp), y, oWall))
		x = x + sign(hsp);
	hsp = -hsp;
}
x = x + hsp;

//Vertical
if (place_meeting(x, y + vsp, oWall)) {
	while (!place_meeting(x, y + sign(vsp), oWall))
		y = y + sign(vsp);
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x, y + 1, oWall)){
	sprite_index = sEnemyAir;
	image_speed = 0;
	if (sign(vsp) > 0)
		image_index = 1;
	else
		image_index = 0;
} else {
	image_speed = 1;
	if (hsp == 0)
		sprite_index = sEnemy;
	else 
		sprite_index = sEnemyRun;
}

//Direction
if (hsp != 0)
	image_xscale = sign(hsp);