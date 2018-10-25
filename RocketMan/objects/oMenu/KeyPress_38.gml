/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7972B3E0
/// @DnDArgument : "code" "menu_cursor++;$(13_10)if (menu_cursor >= menu_items)$(13_10)	menu_cursor = 0;$(13_10)mouse_moving = 0;"
menu_cursor++;
if (menu_cursor >= menu_items)
	menu_cursor = 0;
mouse_moving = 0;