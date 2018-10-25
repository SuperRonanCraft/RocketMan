/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0773E785
/// @DnDArgument : "code" "var halfw = w * 0.5;$(13_10)$(13_10)//Draw box$(13_10)draw_set_colour(c_black);$(13_10)draw_set_alpha(0.5);$(13_10)draw_roundrect_ext(x - halfw - border, y - h - (border * 2), x + halfw + border, y, 15, 15, false);$(13_10)draw_sprite(sMarker, 0, x, y);$(13_10)draw_set_alpha(1);$(13_10)$(13_10)//Draw text$(13_10)DrawSetText(c_white, fSign, fa_center, fa_top);$(13_10)draw_text(x, y - h - border, text_current);"
var halfw = w * 0.5;

//Draw box
draw_set_colour(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x - halfw - border, y - h - (border * 2), x + halfw + border, y, 15, 15, false);
draw_sprite(sMarker, 0, x, y);
draw_set_alpha(1);

//Draw text
DrawSetText(c_white, fSign, fa_center, fa_top);
draw_text(x, y - h - border, text_current);