/// @desc flash an object white
/// @arg flash value;
draw_self();
if (argument0 > 0) {
	shader_set(shWhite);
	draw_self();
	shader_reset();
	return argument0 - 1;
} else
	return argument0;