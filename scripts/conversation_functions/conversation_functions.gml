/// @description Insert description here
function scr_choose_new_bubble_option(_goblin){
	var _prefs = _goblin.preferences;
	var _rand = irandom_range(0,array_length(_prefs)-1);
	var _chance = random_range(30,0);
	if(_chance < _prefs[_rand]){
		return _rand;
	}else{
		Echo("check fail");
		return -1;
	}

}


