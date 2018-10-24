/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EF2DC7E
/// @DnDArgument : "code" "//Update Camera$(13_10)$(13_10)//Update Destination$(13_10)if (instance_exists(follow)){$(13_10)	xTo = follow.x;$(13_10)	yTo = follow.y;$(13_10)}$(13_10)$(13_10)//Update object$(13_10)x += (xTo - x) / 25;$(13_10)y += (yTo - y) / 25;$(13_10)$(13_10)//Center inside room$(13_10)x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);$(13_10)y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);$(13_10)$(13_10)x += random_range(-shake_remain, shake_remain);$(13_10)y += random_range(-shake_remain, shake_remain);$(13_10)shake_remain = max(0, shake_remain - ((1 / shake_lenght) * shake_magnitude));$(13_10)$(13_10)//Update camera$(13_10)camera_set_view_pos(cam, x - view_w_half, y - view_h_half);$(13_10)$(13_10)if (layer_exists(mountainLayer)){$(13_10)	layer_x(mountainLayer, x / 1.1);$(13_10)}$(13_10)if (layer_exists(treesLayer)){$(13_10)	layer_x(treesLayer, x / 5);$(13_10)}"
//Update Camera

//Update Destination
if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//Update object
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//Center inside room
x = clamp(x, view_w_half + buff, room_width - view_w_half - buff);
y = clamp(y, view_h_half + buff, room_height - view_h_half - buff);

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_lenght) * shake_magnitude));

//Update camera
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if (layer_exists(mountainLayer)){
	layer_x(mountainLayer, x / 1.1);
}
if (layer_exists(treesLayer)){
	layer_x(treesLayer, x / 5);
}