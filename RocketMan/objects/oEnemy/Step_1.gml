if (hp <= 0) {
	with (mygun)
		DieDirection(oLauncherDead, other.hitfrom, 6, 10);
	if (instance_exists(oPlayer)) {
		global.player_kills++;
		global.player_kills_room++;
		with (oGame)
			killtextscale = 2;
	}
	HitEnemy();
}
event_inherited();

