/// @description Insert description here

lerp_progress += (1- lerp_progress)/50;

x1 = lerp(x1, x1_target, lerp_progress);
x2 = lerp(x2, x2_target, lerp_progress);

//typerwriter text iterate
textProgress += global.textSpeed;

//has spacebar been pressed? then clear the object
if(keyboard_check_pressed(vk_space)){
	var _messageLen = string_length(message_text);
	if(textProgress >= _messageLen){
	}else{
		textProgress = _messageLen;
	}
	
	
}
