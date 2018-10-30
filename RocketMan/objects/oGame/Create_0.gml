#macro RES_W 1024
#macro RES_H 768
//display_set_gui_size(RES_W, RES_H);
changeres = true;
killtextscale = 1;

//Declarations
global.kills = 0;
global.killsthisroom = 0;
global.inmenu = true;
global.player_died = false;
global.player_last_health = 0;

//Keybinds
global.strafeleft = ord("A");
global.straferight = ord("D");
global.jump = vk_space;