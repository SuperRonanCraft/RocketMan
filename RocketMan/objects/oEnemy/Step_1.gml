if (hp <= 0) {
	if (instance_exists(oPlayer)) {
		global.player_kills++;
		global.player_kills_room++;
		with (oGame)
			killtextscale = 2;
	}
	with (mygun)
		DieDirection(sprite, other.hitfrom, 6, 10, true);
	HitEnemy();
}
event_inherited();

