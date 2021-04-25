/// @description Insert description here
//check if everything is still in range
if(global.paused){exit};

if(!instance_exists(philosopher) || !instance_exists(subject))
	||(point_distance(x,y,philosopher.x,philosopher.y) > CONVO_RANGE)
	||(point_distance(x,y,subject.x,subject.y) > CONVO_RANGE)
{
	instance_destroy();
}


//increment_progess
if(breakpoints != -1) && (check_breakpoints()){//if we are at a breakpoint
	if(option_icon[0] == -1){//generate new options if there are none
		for(var i = 0; i <array_length(option_icon); i++){
				option_icon[i] = irandom_range(0,PREFS.HEIGHT-1);
		}
		
	}else{
	
		var _chosen = false;
		for(var i = 0; i <array_length(option_icon); i++){
			_chosen = scr_interact_icon(option_icon[i], option_pos[i], philosopher.image_xscale)
		}
		if(_chosen){
			for(var i = 0; i <array_length(option_icon); i++){
				option_icon[i] = -1;
			}
		}
	}
}else{
	progress = min(progress_max, progress + increment_speed);

	if(progress >= progress_max){
		with(subject){
			if(object_index == obj_goblin)||(object_index == obj_tutorial_goblin){
				instance_change(obj_goblin_philosopher,true);
			}if(object_index == obj_dark_wizard){
				with(other.philosopher){
					instance_change(obj_goblin,true);
				}
			}else{
				//talking to each other just makes them more entrenched
				for(var i = 0; i < array_length(preferences); i++){
					preferences[i] = preferences[i]*2;
				}
			}
		}
	
		instance_destroy();
}
}