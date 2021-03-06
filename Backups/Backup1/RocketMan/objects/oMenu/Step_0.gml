/// @desc Control Menu

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//Mouse moving / selection
if (menu_control) { 
	var current_mouse_y = device_mouse_y_to_gui(0)
	if (mouse_y_gui == current_mouse_y)
		mouse_moving = 0;
	else {
		mouse_y_gui = current_mouse_y;
		mouse_moving = 1;
	}
//Keyboard Controls / selection
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
		audio_play_sound(snSelect, 10, false);
	}
//Committed a selection
} else if (menu_x > gui_width + 160 && menu_committed != -1)
	switch (menu_committed) {
		case 3:
			global.newgame = true;
			SlideTransition(TRANS_MODE.NEXT);
			break;
		case 2: {
			if (!file_exists(SAVEFILE))
				SlideTransition(TRANS_MODE.NEXT);
			else {
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				global.kills = file_text_read_real(file);
				file_text_close(file);
				SlideTransition(TRANS_MODE.GOTO, target);
			}
			break;
		}
		case 1:
			instance_change(oOptions, true);
			break;
		case 0: 
			game_end();
			break;
		default:
			SlideTransition(TRANS_MODE.RESTART);
			break;
	}
else if (oTransition.mode == TRANS_MODE.RESTART)
	menu_x_target = gui_width + 200;
//layer_x(oCamera.mountainLayer, 1);
//layer_x(oCamera.treesLayer, 4);