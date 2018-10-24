/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5F04A41A
/// @DnDArgument : "code" "//Setup Camera$(13_10)cam = view_camera[0];$(13_10)follow = oPlayer;$(13_10)view_w_half = camera_get_view_width(cam) / 2;$(13_10)view_h_half = camera_get_view_height(cam) / 2;$(13_10)xto = xstart;$(13_10)yto = ystart;$(13_10)$(13_10)shake_lenght = 0;$(13_10)shake_magnitude = 0;$(13_10)shake_remain = 0;$(13_10)buff = 8;$(13_10)$(13_10)mountainLayer = layer_get_id("Mountains");$(13_10)treesLayer = layer_get_id("Trees");"
//Setup Camera
cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;
xto = xstart;
yto = ystart;

shake_lenght = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 8;

mountainLayer = layer_get_id("Mountains");
treesLayer = layer_get_id("Trees");