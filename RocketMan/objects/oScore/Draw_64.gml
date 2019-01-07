/// @desc Score
if (!global.inmenu) {
	killtextscale = max(killtextscale * 0.95, 1);
	//healthtextscale = max(healthtextscale * 0.95, 1);
	coinstextscale = max(coinstextscale * 0.95, 1);
	var text_kills = string(global.player_kills) + " Kills";
	//var text_kills_length = string_length(text_kills);
	var text_coins = string(global.player_coins) + " Coins";
	//var text_coins_length = string_length(text_coins);
	if (instance_exists(oPlayer))
		cache[0] = string(oPlayer.ammo) + "/" + string(oPlayer.weapon_map[? ROCKET_MAP.CLIP]) + " Ammo";
	//var text_ammo_length = string_length(text_coins);
	//Shadow
	//draw_text_transformed(RES_W - 8, RES_H - 38, cache[0], coinstextscale * 0.8, coinstextscale * 0.8, 0);
	//draw_text_transformed(RES_W - 8, RES_H - 20, text_kills, killtextscale * 0.8, killtextscale * 0.8, 0);
	//draw_text_transformed(RES_W - 8, RES_H - 2, text_coins, coinstextscale * 0.8, coinstextscale * 0.8, 0);
	//Main text
	draw_set_color(c_white);
	scDrawText(RES_W - 10, RES_H - 40, cache[0], c_white, coinstextscale * 0.8, noone, noone, fa_right, fa_bottom);
	scDrawText(RES_W - 10, RES_H - 22, text_kills, c_white, killtextscale * 0.8, noone, noone, fa_right, fa_bottom);
	scDrawText(RES_W - 10, RES_H - 4, text_coins, c_yellow, coinstextscale * 0.8, noone, noone, fa_right, fa_bottom);
}