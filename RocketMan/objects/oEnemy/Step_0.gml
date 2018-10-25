/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 65C28688
/// @DnDArgument : "code" "vsp = vsp + grv;$(13_10)//Dont walk off edge$(13_10)if (grounded && afraidOfHeights && !place_meeting(x + hsp, y + 1, oWall))$(13_10)	hsp = -hsp;$(13_10)$(13_10)//Gravity$(13_10)Gravity(-hsp);$(13_10)$(13_10)//Animation$(13_10)if (!place_meeting(x, y + 1, oWall)){$(13_10)	grounded = false;$(13_10)	sprite_index = sEnemyAir;$(13_10)	image_speed = 0;$(13_10)	if (sign(vsp) > 0)$(13_10)		image_index = 1;$(13_10)	else$(13_10)		image_index = 0;$(13_10)} else {$(13_10)	grounded = true;$(13_10)	image_speed = 1;$(13_10)	if (hsp == 0)$(13_10)		sprite_index = sEnemy;$(13_10)	else $(13_10)		sprite_index = sEnemyRun;$(13_10)}"
vsp = vsp + grv;
//Dont walk off edge
if (grounded && afraidOfHeights && !place_meeting(x + hsp, y + 1, oWall))
	hsp = -hsp;

//Gravity
Gravity(-hsp);

//Animation
if (!place_meeting(x, y + 1, oWall)){
	grounded = false;
	sprite_index = sEnemyAir;
	image_speed = 0;
	if (sign(vsp) > 0)
		image_index = 1;
	else
		image_index = 0;
} else {
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
		sprite_index = sEnemy;
	else 
		sprite_index = sEnemyRun;
}