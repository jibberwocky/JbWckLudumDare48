/// @description Insert description here
function scr_create_popup(_x ,_y,_text, _emoticon){
	var _inst = instance_create_layer(_x,_y,"System",obj_popup);
	with(_inst){
		text_displayed =_text;
		emoticon =  _emoticon;
	}

}