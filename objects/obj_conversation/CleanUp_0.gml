/// @description Insert description here
if(instance_exists(subject)){
	subject.in_conversation = false;
	with(subject){
		if(object_index == obj_dark_wizard){
			instance_destroy();
		}
	}
}

if(instance_exists(philosopher)){
	philosopher.in_conversation = false;
}