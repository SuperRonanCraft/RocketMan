if (hp <= 0) {
	with (mygun)
		DieDirection(oLauncherDead, other.hitfrom, 6, 10);
	if (instance_exists(oPlayer)) {
		global.kills++;
		global.killsthisroom++;
		with (oGame)
			killtextscale = 2;
	}
}
event_inherited();

