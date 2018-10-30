/// @desc Flopping
if (doneFlopping == 0){
	doneFlopping = Flop();
	if (doneFlopping == 1) {
		image_index = 1;
		SetGameSpeed();
	}
} else {
	if (wait < 100)
		wait++;
	else 
		SlideTransition(TRANS_MODE.GOTO, room);
}