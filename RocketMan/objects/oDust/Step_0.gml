/// @description Slow to a halt
if (global.paused) {
	image_speed = 0;
	return;
} else
	image_speed = 1;
x += hsp;
y += vsp;
hsp *= 0.9;
vsp *= 0.9;