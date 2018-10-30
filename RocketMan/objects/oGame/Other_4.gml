global.inmenu = room == rMenu;
if (global.player_died) {
	global.player_kills -= global.player_kills_room;
	global.player_coins -= global.player_coins_room;
}
global.player_kills_room = 0;
if (!global.inmenu) {
	instance_create_layer(0, 0, layer_create(1000, "Score"), oScore);
	instance_create_layer(0, 0, layer_create(1001, "Score"), oHealth);
}
if (global.newgame) {
	global.player_coins = 0;
	global.player_kills = 0;
	global.player_coins_room = 0;
	global.player_kills_room = 0;
	global.newgame = false;
}