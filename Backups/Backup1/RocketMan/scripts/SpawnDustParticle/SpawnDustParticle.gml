/// @desc Spawn particles
/// @arg repeats
/// @arg horizontal speed
/// @arg vertical speed
/// @arg mirrior horizontal
/// @arg mirrior vertical
/// @arg set horizontal
/// @arg set vertical

repeat (random_range(1, argument0))
	with (instance_create_layer(x, bbox_bottom, "Player", oDust)) {
		if (argument5)
			if(argument3)
				hsp = random_range(-argument1, argument1);
			else
				hsp = random_range(0, argument1);
		if (argument6)
			if(argument4)
				vsp = random_range(-argument2, argument2);
			else
				vsp = random_range(0, argument2);
	}