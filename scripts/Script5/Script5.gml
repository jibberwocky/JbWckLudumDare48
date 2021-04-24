/// @description Insert description here
function sc(){
		//if we click on this object - pick it up
		if(!picked_up)&&(global.picked_up_object == -1){
			state = picked_up_script;
			global.picked_up_object = id;
			sprite_index = sprite_picked_up;
			
		}
}