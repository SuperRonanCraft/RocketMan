/// @desc Score
if (!global.inmenu) {
	killtextscale = max (killtextscale * 0.95, 1);
	DrawSetText(c_black, fMenu, fa_right, fa_bottom);
	var hp = 0;
	if (instance_exists(oPlayer))
		hp = oPlayer.hp;
	var str = string(global.kills) + " Kills\n" + string(hp) + " Health";
	draw_text_transformed(RES_W - 8, RES_H - 10, str, killtextscale, killtextscale, 0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W - 10, RES_H - 10, str, killtextscale, killtextscale, 0);
	/*
	var text = "Lives: " + string(oTransition.player_lives) + "\n" + "Level: " + string(oTransition.level);
	DrawOnGui(50, display_get_gui_height(), text, 0.5, 0, false, 35, false);
	*/
}