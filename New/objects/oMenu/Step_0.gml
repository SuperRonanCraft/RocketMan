/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66367A1E
/// @DnDArgument : "code" "/// @desc Control Menu$(13_10)$(13_10)//Item easi in$(13_10)menu_x += (menu_x_target - menu_x) / menu_speed;$(13_10)$(13_10)//Keyboard Controls$(13_10)if (menu_control){$(13_10)	if (keyboard_check_pressed(vk_up)){$(13_10)		menu_cursor++;$(13_10)		if (menu_cursor >= menu_items)$(13_10)			menu_cursor = 0;$(13_10)	} else if (keyboard_check_pressed(vk_down)){$(13_10)		menu_cursor--;$(13_10)		if (menu_cursor < 0)$(13_10)			menu_cursor = menu_items - 1;$(13_10)	} else if (keyboard_check_pressed(vk_enter)){$(13_10)		menu_x_target = gui_width + 200;$(13_10)		menu_committed = menu_cursor;$(13_10)		ScreenShake(4, 30);$(13_10)		menu_control = false;$(13_10)	}$(13_10)}"
/// @desc Control Menu

//Item easi in
menu_x += (menu_x_target - menu_x) / menu_speed;

//Keyboard Controls
if (menu_control){
	if (keyboard_check_pressed(vk_up)){
		menu_cursor++;
		if (menu_cursor >= menu_items)
			menu_cursor = 0;
	} else if (keyboard_check_pressed(vk_down)){
		menu_cursor--;
		if (menu_cursor < 0)
			menu_cursor = menu_items - 1;
	} else if (keyboard_check_pressed(vk_enter)){
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		ScreenShake(4, 30);
		menu_control = false;
	}
}