/// @desc Draw on gui
/// @arg x
/// @arg y
/// @arg text
/// @arg speed
/// @arg border
/// @arg y-offset
/// @arg remove-on-move
/// @arg font
with (instance_create_layer(argument0, argument1 - argument5, layer, oTextGui)) {
		text = argument2;
		length = string_length(text);
		spd = argument3;
		border = argument4;
		remove_on_move = argument6;
		font = argument7;
	}