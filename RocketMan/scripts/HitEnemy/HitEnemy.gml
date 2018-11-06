if (instance_exists(oPlayer)) {
	global.player_kills++;
	global.player_kills_room++;
}
if (instance_exists(oGame))
	with (oGame)
		killtextscale = 2;
if (instance_exists(oScore))
	with (oScore)
		killtextscale = 2;
//Death sound effect of enemy