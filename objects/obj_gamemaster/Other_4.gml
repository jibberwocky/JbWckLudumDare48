/// @description Insert description here

//reset the collision map
global.collision_map  = layer_tilemap_get_id(layer_get_id("Tiles_col"));
Echo("Collison layers", layer_get_name(global.collision_map));


dark_wizard_timer = FRAME_RATE;

dark_wizard_limit = 1;


if(room == Room_game){
	repeat(15){
		var xx = random_range(TILE_SIZE, room_width-TILE_SIZE)
		var yy = random_range(500, room_height-TILE_SIZE)
			instance_create_layer(xx, yy, "Instances", obj_goblin);
	}
}