/// @description Insert description here
function scr_goblin_state_idle(){
	vSpeed += GRAV;
	if(scr_tile_collison()){
		//Echo("we hit something!");
	}
	
	

}

/// @description Insert description here
function scr_goblin_phil_state_idle(){
	vSpeed += GRAV;
	if(scr_tile_collison()){
		//Echo("we hit something!");
	}
	
	if(mouse_check_button_pressed(mb_left))&&position_meeting(mouse_x, mouse_y, id){
		scr_pickup();
	}
	
	if(vSpeed = 0)&&(!in_conversation){
		//if we are flat on the ground
		var _inst = collision_rectangle(x-detection_range, y-TILE_SIZE,x+detection_range, y+TILE_SIZE, obj_goblin,false,true);
		
		if(_inst != noone)&&(!_inst.in_conversation){
			//if there is another goblin nearby and they are also not in conversation
			image_xscale = sign(_inst.x - x);
			in_conversation = true;
			with(_inst){
				image_xscale = sign(other.x - x);
				in_conversation = true;
			}
			
			scr_create_conversation(id, _inst)
		}
	}

}


function scr_goblin_phil_state_picked_up(){
	x = lerp(x, mouse_x, 0.4);
	y = lerp(y, mouse_y+16, 0.4);
	
	if(x != mouse_x){
		image_xscale = sign(mouse_x-x);
	}
	
	
	if(mouse_check_button_pressed(mb_left))||(mouse_check_button_released(mb_left)){
		scr_drop();
	}
	
} 