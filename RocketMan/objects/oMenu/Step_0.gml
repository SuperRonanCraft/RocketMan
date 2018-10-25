/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66367A1E
/// @DnDArgument : "code" "/// @desc Control Menu$(13_10)$(13_10)//Item ease in$(13_10)menu_x += (menu_x_target - menu_x) / menu_speed;$(13_10)$(13_10)var current_mouse_y = device_mouse_y_to_gui(0)$(13_10)if (mouse_y_gui == current_mouse_y)$(13_10)	mouse_moving = 0;$(13_10)else {$(13_10)	mouse_y_gui = current_mouse_y;$(13_10)	mouse_moving = 1;$(13_10)}$(13_10)$(13_10)//Keyboard Controls$(13_10)if (mouse_moving){$(13_10)	if (mouse_y_gui < menu_y && mouse_y_gui > menu_top) {$(13_10)		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);$(13_10)	} else$(13_10)		menu_cursor = -1;$(13_10)} else if (menu_cursor >= 0 && mouse_check_button_pressed(mb_left)) {$(13_10)	menu_x_target = gui_width + 200;$(13_10)	menu_committed = menu_cursor;$(13_10)	ScreenShake(4, 30);$(13_10)	menu_control = false;$(13_10)	audio_play_sound(snDeath, 10, false);$(13_10)}$(13_10)$(13_10)if (menu_x > gui_width + 160 && menu_committed != -1 && !locked) {$(13_10)	switch (menu_committed) {$(13_10)		case 2: $(13_10)			SlideTransition(TRANS_MODE.NEXT); break;$(13_10)		case 1: {$(13_10)			if (!file_exists(SAVEFILE))$(13_10)				SlideTransition(TRANS_MODE.NEXT);$(13_10)			else {$(13_10)				var file = file_text_open_read(SAVEFILE);$(13_10)				var target = file_text_read_real(file);$(13_10)				file_text_close(file);$(13_10)				SlideTransition(TRANS_MODE.GOTO, target);$(13_10)			}$(13_10)			break;$(13_10)		}$(13_10)		case 0: $(13_10)			game_end();	break;$(13_10)	}$(13_10)	locked = true;$(13_10)}"
/// @desc Control Menu

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

var current_mouse_y = device_mouse_y_to_gui(0)
if (mouse_y_gui == current_mouse_y)
	mouse_moving = 0;
else {
	mouse_y_gui = current_mouse_y;
	mouse_moving = 1;
}

//Keyboard Controls
if (mouse_moving){
	if (mouse_y_gui < menu_y && mouse_y_gui > menu_top) {
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);
	} else
		menu_cursor = -1;
} else if (menu_cursor >= 0 && mouse_check_button_pressed(mb_left)) {
	menu_x_target = gui_width + 200;
	menu_committed = menu_cursor;
	ScreenShake(4, 30);
	menu_control = false;
	audio_play_sound(snDeath, 10, false);
}

if (menu_x > gui_width + 160 && menu_committed != -1 && !locked) {
	switch (menu_committed) {
		case 2: 
			SlideTransition(TRANS_MODE.NEXT); break;
		case 1: {
			if (!file_exists(SAVEFILE))
				SlideTransition(TRANS_MODE.NEXT);
			else {
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				SlideTransition(TRANS_MODE.GOTO, target);
			}
			break;
		}
		case 0: 
			game_end();	break;
	}
	locked = true;
}