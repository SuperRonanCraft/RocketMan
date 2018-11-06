/// @desc Tile Collision
/// @arg grounded

//var bbox_side;
var tilemap = global.tilemap;
//var height = bbox_bottom - bbox_top;

//Vertical
if (vsp > 0) { //downwards
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_bottom & ~31) - 1) - sprite_bbox_bottom;
		vsp = 0;
	}
} else { //upwards
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	if (t1 != 0 || t2 != 0) {
		y = ((bbox_top + 32) & ~31) - sprite_bbox_top;
		vsp = 0;
	}
}

//Horizontal
if (hsp > 0) { //right
	var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom) & tile_index_mask;
	if (t1 != 0 || t2 != 0) {
		x = ((bbox_right & ~31) - 1) - sprite_bbox_right;
		hsp = 0;
	}
} else { //left
	var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top) & tile_index_mask;
	var t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom) & tile_index_mask;
	if (t1 != 0 || t2 != 0) {
		x = ((bbox_left + 32) & ~31) - sprite_bbox_left;
		hsp = 0;
	}
}

var t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom + 1) & tile_index_mask;
var t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom + 1) & tile_index_mask;
return (t1 != 0 || t2 != 0);

/*//Horizontal
if (hsp > 0)
	bbox_side = bbox_right;
else
	bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_bottom) != 0 || tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_top) != 0) {
	if (hsp > 0)
		x = x - (x mod height) + (height - 1) - (bbox_right - x);
	else 
		x = x - (x mod height) - (bbox_left - x);
	hsp = 0;
}

//Vertical
if (vsp > 0)
	bbox_side = bbox_bottom;
else
	bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + vsp) != 0 || tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + vsp) != 0) {
	if (vsp > 0)
		y = y - (y mod height) + (height - 1) - (bbox_bottom - y);
	else
		y = y - (y mod height) - (bbox_top - y);
	vsp = 0;
} else
	//Not on tile
	grounded = false;

return grounded;*/