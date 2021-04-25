/// @description Insert description here

// Inherit the parent event
event_inherited();

if(convo_check -- <= 0){
	convo_check = FRAME_RATE*5;
	if(!in_conversation){instance_destroy()};
}