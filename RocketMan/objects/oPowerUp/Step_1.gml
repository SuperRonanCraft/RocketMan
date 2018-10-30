/// @description Destroy wall
if (hp <= 0)
	with (mywall) 
		instance_destroy();
// Inherit the parent event
event_inherited();

