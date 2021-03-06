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
menu[3] = "New Game";
menu[2] = "Continue";
menu[1] = "Options";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items);