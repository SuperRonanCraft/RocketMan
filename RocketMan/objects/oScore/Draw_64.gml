/// @desc Score
if (!global.inmenu) {
	killtextscale = max(killtextscale * 0.95, 1);
	healthtextscale = max(healthtextscale * 0.95, 1);
	coinstextscale = max(coinstextscale * 0.95, 1);
	DrawSetText(c_black, fPixel, fa_right, fa_bottom);
	var hp = 0;
	if (instance_exists(oPlayer))
		hp = oPlayer.hp;
	draw_text_transformed(RES_W - 88, RES_H - 110, string(global.player_kills) + " Kills", killtextscale, killtextscale, 0);
	draw_text_transformed(RES_W - 88, RES_H - 80, string(hp) + " Health", healthtextscale, healthtextscale, 0);
	draw_text_transformed(RES_W - 88, RES_H - 50, string(global.player_coins) + " Coins", coinstextscale, coinstextscale, 0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W - 80, RES_H - 102, string(global.player_kills) + " Kills", killtextscale, killtextscale, 0);
	if (hp <= global.player_health_original * 0.25)
		draw_set_color(c_red);
	else if (hp <= global.player_health_original * 0.5)
		draw_set_color(make_color_rgb(255, 182, 193));
	draw_text_transformed(RES_W - 80, RES_H - 72, string(hp) + " Health", healthtextscale, healthtextscale, 0);
	draw_set_color(c_yellow);
	draw_text_transformed(RES_W - 80, RES_H - 42, string(global.player_coins) + " Coins", coinstextscale, coinstextscale, 0);
	/*
	var text = "Lives: " + string(oTransition.player_lives) + "\n" + "Level: " + string(oTransition.level);
	DrawOnGui(50, display_get_gui_height(), text, 0.5, 0, false, 35, false);
	*/
}