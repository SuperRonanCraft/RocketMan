ghostjump = true;
hit_cooldown = 0;
if (global.player_health_original == 0)
	global.player_health_original = hp;
if (!global.newgame)
	if (global.player_health_room != 0)
		hp = global.player_health_room;
mygun = instance_create_depth(x, y, depth - 1, oWeapon)
with (mygun)
	owner = other.id;
event_inherited();