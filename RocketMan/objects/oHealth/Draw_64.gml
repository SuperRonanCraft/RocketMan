/// @desc Display Health
healthscale = max(healthscale * 0.95, 1);
if (instance_exists(oPlayer))
	hp = oPlayer.hp;
else
	hp = 0;
if (!global.inmenu) {
	var offset = 0;
	for (var i = 0; i < global.player_health_original; i++) {
		if (i mod 10 == 0)
			offset++;
		/*var xpos = (RES_W / 2) + ((sprite_width + 2) * (i - (global.player_health_original / 2))) - (healthscale / 2);*/
		var xpos = ((RES_W - 20) - (sprite_width * 10)) + (i mod 10) * (sprite_width + 2);
		var ypos = (offset * (sprite_height + 2)) - 8;
		if (hp > i)
			draw_sprite_ext(sprite_index, 0, xpos, ypos, healthscale, healthscale, 0, c_white, 1);
		else
			draw_sprite_ext(sprite_index, 1, xpos, ypos, healthscale, healthscale, 0, c_white, 1);
	}
}