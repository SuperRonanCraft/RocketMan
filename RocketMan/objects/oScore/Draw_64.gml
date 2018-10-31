/// @desc Score
if (!global.inmenu) {
	killtextscale = max(killtextscale * 0.95, 1);
	//healthtextscale = max(healthtextscale * 0.95, 1);
	coinstextscale = max(coinstextscale * 0.95, 1);
	DrawSetText(c_black, fPixel, fa_right, fa_bottom);
	var text_kills = string(global.player_kills) + " Kills";
	var text_kills_length = string_length(text_kills);
	var text_coins = string(global.player_coins) + " Coins";
	var text_coins_length = string_length(text_coins);
	//Shadow
	draw_text_transformed(RES_W - 18, RES_H - 38, text_kills, killtextscale * 0.8, killtextscale * 0.8, 0);
	draw_text_transformed(RES_W - 18, RES_H - 18, text_coins, coinstextscale * 0.8, coinstextscale * 0.8, 0);
	//Main text
	draw_set_color(c_white);
	draw_text_transformed(RES_W - 20, RES_H - 40, text_kills, killtextscale * 0.8, killtextscale * 0.8, 0);
	draw_set_color(c_yellow);
	draw_text_transformed(RES_W - 20, RES_H - 20, text_coins, coinstextscale * 0.8, coinstextscale * 0.8, 0);
}