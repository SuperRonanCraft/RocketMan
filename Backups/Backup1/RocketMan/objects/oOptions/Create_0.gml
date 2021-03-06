/// @desc GUI/Vars/Menu setup
#macro SAVEFILE "Save.sav"

gui_width = RES_W;
gui_height = RES_H;
gui_margin = gui_width / 2;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin + 150;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fPixel;
menu_itemheight = font_get_size(menu_font);
menu_committed = -1;
menu_cursor_old = menu_cursor;
menu_control = true;

menu = 0;
menu[2] = "Fullscreen";
menu[1] = "Keybinds"
menu[0] = "Back";

obj[1] = oSliderEffects;
obj[0] = oSliderMusic;
obj_created = 0;

menu_items = array_length_1d(menu);
obj_items = array_length_1d(obj);
for (var i = 0; i < obj_items; i++)
	obj_created[i] = false;
menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items);
deleting = false;