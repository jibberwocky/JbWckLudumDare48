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

function scr_create_conversation(_phil, _subject){
	var _convo = instance_create_layer(x,y,"Instances",obj_conversation);
	with(_convo){
		philosopher = _phil;
		subject = _subject;
		progress_max= 	subject.progress_max;
		var _breaks = subject.breakpoints;
		//create breakpoints
		if(_breaks > 0){
			breakpoints = [];
			var _breakpoint_interval = (progress_max - 10) div _breaks;
			for(var i = 0; i < _breaks; i++){
				array_push(breakpoints, (i+1)*_breakpoint_interval);
			}
		}else{
			breakpoints = -1;
		}
	}
}


function scr_draw_icon (_icon, _pos, _x_scale){
	//draw an icon at the apropriate position and highlight if hovered
	var _hov = false;
	var xx = x+(_pos.xx*_x_scale);
	var yy =  y+_pos.yy;
	if(_x_scale < 0){
		xx -= 10;
	}
	
	if(point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+10,yy+10)){
		_hov = true;
	}
	//draw the box at the positon
	
	draw_sprite(spr_option_box, _hov,xx, yy)
	draw_sprite(spr_icons, _icon, xx+1,yy+1);
}


function scr_interact_icon (_icon, _pos, _x_scale){
	//draw an icon at the apropriate position and highlight if hovered
	var _chosen = false;
	var xx = x+(_pos.xx*_x_scale);
	var yy =  y+_pos.yy;
	if(_x_scale < 0){
		xx -= 10;
	}
	
	if(point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+10,yy+10)){
		if(global.picked_up_object == -1) &&(mouse_check_button_pressed(mb_left)){
			//if we click on this button
			//PLAY A SOUND
			var _emoticon;
			var _progress = subject.preferences[_icon];
			progress += _progress;
			if(_progress > 0){
				next_breakpoint += 1;
				_emoticon = 0;
			}else{
				_emoticon = 1;
			}
			_chosen = true;
			repeat(3){
				scr_create_popup(subject.x ,subject.y-(TILE_SIZE*0.5),-1, _emoticon);
			}
		} 
	}
	return _chosen;
}

function check_breakpoints(){
	var _check = false;
	if(breakpoints != -1){
		for(var i = 0; i < array_length(breakpoints); i++){
			_check = (floor(progress) == breakpoints[i])
			if(_check){return true;}
		}
	}
	return _check;
}