/// @desc Check if dead
if (hp <= 0) {
	with (mygun)
		DieDirection(sprite, other.hitfrom, 6, 10, true, 0, false);
	global.player_died = true;
	//DieDirection(death_sprite, hitfrom, death_hsp, death_vsp, fade);
	event_inherited();
}
