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

progress = min(progress_max, progress + increment_speed);

if(progress == progress_max){
	with(subject){
		if(object_index != obj_goblin_philosopher){
			instance_change(obj_goblin_philosopher,true);
		}else{
			//talking to each other just makes them more entrenched
			for(var i = 0; i < array_length(preferences); i++){
				preferences[i] = preferences[i]*2;
			}
		}
	}
}