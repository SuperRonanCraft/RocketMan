/// @desc Display Health
healthscale = max(healthscale * 0.95, 1);
if (instance_exists(oPlayer))
	hp = oPlayer.hp;
else
	hp = 0;
if (!global.inmenu)
	for (var i = 0; i < global.player_health_original; i++) {
		var xpos = (RES_W / 2) + ((sprite_width + 2) * (i - (global.player_health_original / 2))) - (healthscale / 2);
		if (hp > i)
			draw_sprite_ext(sprite_index, 0, xpos, RES_H - 50, healthscale, healthscale, 0, c_white, 1);
		else
			draw_sprite_ext(sprite_index, 1, xpos, RES_H - 50, healthscale, healthscale, 0, c_white, 1);
}