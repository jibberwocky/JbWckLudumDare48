/// @description Insert description here
function scr_goblin_state_idle(){
	vSpeed += GRAV;
	if(scr_tile_collison()){
		Echo("we hit something!");
	}

}

/// @description Insert description here
function scr_goblin_phil_state_idle(){
	vSpeed += GRAV;
	if(scr_tile_collison()){
		Echo("we hit something!");
	}
	
	if(mouse_check_button_pressed(mb_left))&&position_meeting(mouse_x, mouse_y, id){

	}
	

}


function scr_goblin_phil_state_picked_up(){
	x = lerp(x, mouse_x, 0.4);
	y = lerp(y, mouse_y+16, 0.4);
	
	if(x != mouse_x){
		image_xscale = sign(mouse_x-x);
	}
} 