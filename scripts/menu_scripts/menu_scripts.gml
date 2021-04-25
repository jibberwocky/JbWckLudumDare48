function show_menu(){
	if(instance_exists(obj_gui_parent)){
		with(obj_gui_parent){
			instance_destroy();
		}
	}
	global.showingMenu = true;
	global.paused = true;
	scr_create_button( RESOLUTION_W*0.4,  RESOLUTION_H*0.8,  RESOLUTION_W*0.6, RESOLUTION_H*0.9, "Exit", scr_exit_game);
	scr_create_button( RESOLUTION_W*0.4, RESOLUTION_H*0.6,  RESOLUTION_W*0.6, RESOLUTION_H*0.7, "Play", scr_play_game);
}

function hide_menu(){
	global.showingMenu = false;
	global.paused = false;
	if(instance_exists(obj_gui_parent)){
		with(obj_gui_parent){
			instance_destroy();
		}
	}
	if(room == Room_tutorial){
		scr_create_text_box("GOBLIN PHILOSOPHER \nCreated for Ludum Dare 48 - 2021\n Pick up and move goblins using the mouse. Place goblins together and they will engage in deep discussions, when a discussion reaches a breakpoint choose a topic to convince the goblin. Goblins are more likely to talk about topics they enjoy. \n Scroll on the screen edge to take your deep ideas deeper into the goblin warren. \n Beware the dark wizard.\n Escape to pause. ");
	}
	
}


function scr_create_button(_x1, _y1, _x2, _y2, _text, _script){
	var _inst = instance_create_layer(_x1, _y1,"System", obj_button);
	with(_inst){
		width = _x2 - _x1;
		height = _y2 - _y1;
		text = _text;
		script = _script;
	}

}
function scr_create_text_box(){
	var _inst = instance_create_layer(0,0,"System",obj_text_box);
	
	with(_inst){
		message_text = argument[0];
		if(instance_exists(other)){
			originInstance = other.id;
		}else{
			originInstance = noone;
		}
		
	}
	

}


function scr_exit_game(){
	game_end();
}

function scr_play_game(){
		 global.game_started = true;
	 global.paused = false;
	 global.showing_menu = false;
	 with(obj_menu){
		 hide_menu();
	}
	if(room == Room_main_menu){
		room_goto(Room_tutorial);
	}


	 
}