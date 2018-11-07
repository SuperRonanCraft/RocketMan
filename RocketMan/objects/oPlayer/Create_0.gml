vsp = 0;
hsp = 0;
ghostjump = true;
hit_cooldown = 0;
canjump = 0;
controller = 0;
standing = true;
event_inherited();
if (global.player_health_original == 0)
	global.player_health_original = hp;
if (!global.newgame)
	if (global.player_health_room != 0)
		hp = global.player_health_room;
mygun = instance_create_depth(x, y, depth - 1, oWeapon)
with (mygun)
	owner = other.id;


sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);