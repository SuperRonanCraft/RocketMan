var width = sprite_get_width(sHealthBar);
var height = sprite_get_height(sHealthBar);
draw_sprite(sHealthBar, 0, x, y - 30);
draw_sprite_part(sHealthBar, 1, 0, 0, width * ((hp / hp_max) * 100), height, x - (width / 2), y - 30 - sprite_get_yoffset(sHealthBar));
//draw_sprite(sSliderButton, 0, x + sprite_width * hp - (sprite_width / 2), y);