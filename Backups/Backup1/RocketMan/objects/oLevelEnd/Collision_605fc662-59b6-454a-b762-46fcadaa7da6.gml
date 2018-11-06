/// @desc Move to next room
if (can_progress)
	with (oPlayer)
		if (hascontrol) {
			hascontrol = false;
			SlideTransition(TRANS_MODE.NEXT);
			level = room;
		}