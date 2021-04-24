/// @description Insert description here
function scr_pickup(){
		//if we click on this object - pick it up
		if(!picked_up)&&(global.picked_up_object == -1){
			state = picked_up_script;
			global.picked_up_object = id;
			sprite_index = sprite_picked_up;
			picked_up = true;
			
		}
}


function scr_drop(){
		//if we click on this object - pick it up
			state = idle_script;
			global.picked_up_object =-1;
			picked_up = false;
			sprite_index = sprite_idle;
			
}