/// @desc toogle-pause
global.paused = !global.paused;
if (global.paused) {
	SlideTransition(TRANS_MODE.PAUSE);
	cursor_sprite = -1;
	window_set_cursor(cr_default);
	paused = instance_create_layer(x, y, layer_create(depth, "Paused"), oPaused);
} else {
	SlideTransition(TRANS_MODE.UNPAUSE);
	cursor_sprite = sCursor;
	window_set_cursor(cr_none);
	with (paused)
		instance_destroy();
}