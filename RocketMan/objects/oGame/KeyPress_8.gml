/// @desc Restart game
if (fps < 60)
	SetGameSpeed(60);
SlideTransition(TRANS_MODE.RESTART);
with (oMusic)
	event_user(0);