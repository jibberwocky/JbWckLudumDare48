/// @description Insert description here
function scr_tile_collison(){
	var _collision = false
		//check horizontal tiles
	if(tilemap_get_at_pixel(global.collision_map, x+hSpeed, y)){
		//have we hit a tile -if there is one
		x += x mod TILE_SIZE;//put is to the very left of the tile we are colling with
		if(sign(hSpeed) == 1){
			x -= TILE_SIZE;//if we are moving to the right shift us to the border of the other tile
		}
		hSpeed = 0;
		_collision = true;
	
	}



	//vertical move check
	if(tilemap_get_at_pixel(global.collision_map, x, y+vSpeed)){
		//have we hit a tile -if there is one
		y += y mod TILE_SIZE;//put is to the very left of the tile we are colling with
		if(sign(vSpeed) == 1){
			y -= TILE_SIZE;//if we are moving to the down shift above the current tile?
		}
		vSpeed = 0;
		_collision = true;
		Echo("we hit something! verticall");
	
	}
	
	//move commit!
	x += hSpeed;
	y += vSpeed;
	
	//if the object is outside the room return it to the room
	x = Wrap(x, 0, room_width);
	y = Wrap(y, 0, room_height);
	
	return _collision;
}