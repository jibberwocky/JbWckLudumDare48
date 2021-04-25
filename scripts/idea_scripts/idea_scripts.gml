/// @description Insert description here
function scr_box_idle(){
		vSpeed += GRAV;
	if(scr_tile_collison()){
		//Echo("we hit something!");
	}
	
		if(mouse_check_button_pressed(mb_left))&&position_meeting(mouse_x, mouse_y, id){
		scr_pickup();
	}
	
	
	//collision with conversations
	collision_rectangle_list(x-detection_range, y-TILE_SIZE,x+detection_range, y+TILE_SIZE, obj_conversation,false,true,  inst_list, false);
		if(ds_list_size(inst_list) > 0){
			for(var i = 0; i < (ds_list_size(inst_list)); i++){
				var _inst = inst_list[| i];
				if(_inst != noone)&&(_inst.subject.object_index != obj_goblin_philosopher)
				&&(_inst.subject.object_index != obj_goblin_lib){
					//if we drop this into a conversation update the convo appropriately
					with(_inst){
						scr_progress_topic(other.idea);
					}
					instance_destroy();

					break;
				}
			}
			 
		}
		
	if(ds_exists(inst_list, ds_type_list)){
		ds_list_clear(inst_list);
	}
		
	
	
}


function create_idea(_x, _y, _idea){
	var _hspd = random_range(-10,10);
	var _vspd = random_range(-20,20);
	var _inst = instance_create_layer(_x, _y, "Instances", obj_idea_box);
	with(_inst){
		idea = _idea;
		vSpeed = _vspd;
		hSpeed = _hspd;
	}
}
