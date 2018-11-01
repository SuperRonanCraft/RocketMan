/// @desc add coins
/// @arg amount-of-coins
/// @arg text-scale
global.player_coins += argument0;
global.player_coins_room += argument0;
audio_play_sound(snCoinPickup, 1, false);
if (instance_exists(oScore))
	with (oScore)
		coinstextscale = argument1;