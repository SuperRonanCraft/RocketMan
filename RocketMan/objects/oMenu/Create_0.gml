/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 29EA678E
/// @DnDArgument : "code" "/// @desc GUI/Vars/Menu setup$(13_10)#macro SAVEFILE "Save.sav"$(13_10)$(13_10)gui_width = display_get_gui_width();$(13_10)gui_height = display_get_gui_height();$(13_10)gui_margin = 32;$(13_10)$(13_10)menu_x = gui_width + 200;$(13_10)menu_y = gui_height - gui_margin;$(13_10)menu_x_target = gui_width - gui_margin;$(13_10)menu_speed = 25; //lower is faster$(13_10)menu_font = fMenu;$(13_10)menu_itemheight = font_get_size(fMenu);$(13_10)menu_committed = -1;$(13_10)menu_control = true;$(13_10)$(13_10)menu[2] = "New Game";$(13_10)menu[1] = "Continue";$(13_10)menu[0] = "Quit";$(13_10)$(13_10)menu_items = array_length_1d(menu);$(13_10)menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items);$(13_10)$(13_10)menu_cursor = 2;"
/// @desc GUI/Vars/Menu setup
#macro SAVEFILE "Save.sav"

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items);

menu_cursor = 2;