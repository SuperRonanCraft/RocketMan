global.player_coins++;
global.player_coins_room++;
audio_play_sound(snCoinPickup, 1, false);
if (instance_exists(oScore))
	with (oScore)
		coinstextscale = 2;