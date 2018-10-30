/// @desc Draw on gui
/// @arg x
/// @arg y
/// @arg text
/// @arg speed
/// @arg border
/// @arg focus camera
/// @arg y offset
/// @arg remove on move
with (instance_create_layer(argument0, argument1 - argument6, layer, oTextGui)) {
		text = argument2;
		length = string_length(text);
		spd = argument3;
		border = argument4;
		focus_camera = argument5;
		remove_on_move = argument7;
	}