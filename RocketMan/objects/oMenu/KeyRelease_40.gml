/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3D6EDA9F
/// @DnDArgument : "code" "menu_cursor--;$(13_10)if (menu_cursor < 0)$(13_10)	menu_cursor = menu_items - 1;$(13_10)mouse_moving = 0;"
menu_cursor--;
if (menu_cursor < 0)
	menu_cursor = menu_items - 1;
mouse_moving = 0;