flash--;
if (flash < 30) {
	Flash(10);
	if (flash < 0)
		flash = 120;
} else
	draw_self();