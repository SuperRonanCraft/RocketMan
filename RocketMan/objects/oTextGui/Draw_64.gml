var halfw = w * 0.5;

//Draw box
if (border > 0) {
	draw_set_colour(c_black);
	draw_set_alpha(0.5);
	draw_roundrect_ext(x - halfw - border, y - h - (border * 2), x + halfw + border, y, 15, 15, false);
	draw_sprite(sMarker, 0, x, y);
	draw_set_alpha(1);
} else
	border = 0;

//Draw text
DrawSetText(c_white, font, fa_center, fa_top);
if (!instant)
	draw_text(x, y - h - border, text_current);
else
	draw_text(x, y - h - border, text);