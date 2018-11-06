//Dont walk off edge
grounded = scGravity();

if (grounded && afraidOfHeights && !place_meeting(x + hsp, y + 1, oWall))
	hsp = -hsp;

//Hit cooldown
if (hit_cooldown > 0)
	hit_cooldown--;

//Animation
Jump(sEnemy, sEnemyRun, sEnemyAir, 1, 0, direction, sEnemyRun, grounded);


if (instance_exists(oPlayer)) 
	with (mygun) {
		if (!collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, false) && point_distance(oPlayer.x, oPlayer.y, x, y) < (RES_W / 2)) {
			xpoint = oPlayer.x;
			ypoint = oPlayer.y;
			if (current_cd == 0) {
				current_cd = cooldown;
				current_delay = startup;
			}
		}// else {
		//	xpoint = other.hsp + other.x;
		//	ypoint = y;
		//}
	}
//else 
	//with (mygun) {
	//	xpoint = other.hsp + other.x;
	//	ypoint = other.y;
	//}