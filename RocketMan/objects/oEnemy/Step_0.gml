//Dont walk off edge
if (grounded && afraidOfHeights && !place_meeting(x + hsp, y + 1, pWall))
	hsp = -hsp;

//Hit cooldown
if (hit_cooldown > 0)
	hit_cooldown--;

//Animation
grounded = Jump(sEnemy, sEnemyRun, sEnemyAir, 1, 0, mygun.direction, sEnemyRun);

//Gravity
event_inherited();