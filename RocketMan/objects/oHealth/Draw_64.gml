/// @desc Health
if (!global.inmenu && instance_exists(oPlayer)) {
	//for (var i = 0; i < global.player_health_original; i++) {
		//if (oPlayer.hp >= i)
		draw_healthbar(10, 10, 100, 20, oPlayer.hp, 0, 0, 0, 1, true, true);
			//draw_sprite(sprite_index, 0, x + (sprite_width * i), y);
		//else
			//draw_sprite(sprite_index, 1, x + (sprite_width * i), y);
	//}
}