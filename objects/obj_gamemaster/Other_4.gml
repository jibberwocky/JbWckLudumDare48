/// @description Insert description here

//reset the collision map
global.collision_map  = layer_tilemap_get_id(layer_get_id("Tiles_col"));
Echo("Collison layers", layer_get_name(global.collision_map));