var enemy_dir = point_direction(other.x, other.y, x, y);
with (oPlayer) {
	hp--;
	//flash = Flash(flash);
	if (instance_exists(oHealth))
		with (oHealth)
			healthscale = 2;
	if (hp <= 0) {
		DieDirection(oPDead, enemy_dir, 6, 4);
		with (oGun) {
			newDir = enemy_dir;
			event_user(0);
		}
		global.player_died = true;
	}
}