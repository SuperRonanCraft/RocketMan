//Dont walk off edge
if (grounded && afraidOfHeights && !place_meeting(x + hsp, y + 1, pWall))
	hsp = -hsp;

//Hit cooldown
if (hit_cooldown > 0)
	hit_cooldown--;

//Animation
grounded = Jump(sEnemy, sEnemyRun, sEnemyAir, 1, 0, mygun.direction, sEnemyRun);


if (instance_exists(oPlayer)) 
	with (mygun) {
		if (!collision_line(x, y, oPlayer.x, oPlayer.y, pWall, false, false) && point_distance(oPlayer.x, oPlayer.y, x, y) < (RES_W / 2)) {
			xpoint = oPlayer.x;
			ypoint = oPlayer.y;
			if (current_cd == 0) {
				current_cd = cooldown;
				current_delay = startup;
			}
		}
	}

//Gravity
event_inherited();