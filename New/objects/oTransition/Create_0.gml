/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 50DE1035
/// @DnDArgument : "code" "//Size Variables and Mode Setup$(13_10)$(13_10)w = display_get_gui_width();$(13_10)h = display_get_gui_height();$(13_10)h_half = w / 2;$(13_10)$(13_10)enum TRANS_MODE {$(13_10)	OFF, NEXT, GOTO, RESTART, INTRO$(13_10)}$(13_10)$(13_10)mode = TRANS_MODE.INTRO;$(13_10)percent = 1;$(13_10)target = room;"
//Size Variables and Mode Setup

w = display_get_gui_width();
h = display_get_gui_height();
h_half = w / 2;

enum TRANS_MODE {
	OFF, NEXT, GOTO, RESTART, INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;