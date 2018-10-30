#macro RES_W 1024
#macro RES_H 768
//display_set_gui_size(RES_W, RES_H);
changeres = true;

//Declarations
global.inmenu = true;
global.newgame = false;

//Player specific
global.player_kills = 0;
global.player_kills_room = 0;
global.player_died = false;
global.player_health_room = 0;
global.player_coins = 0;
global.player_coins_room = 0;
global.player_health_original = 0;

//Keybinds
global.strafeleft = ord("A");
global.straferight = ord("D");
global.jump = vk_space;