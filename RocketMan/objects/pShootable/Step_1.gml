if (hp <= 0) 
	DieDirection(death_sprite, hitfrom, death_hsp, death_vsp, fade, death_image_index, smoke);
	/*with (instance_create_layer(x, y, "Enemy", oEDead)) {
		direction = other.hitfrom;
		hsp = lengthdir_x(3, direction);
		vsp = lengthdir_y(3, direction) - 2;
		image_xscale = sign(hsp);
	}
	instance_destroy();*/