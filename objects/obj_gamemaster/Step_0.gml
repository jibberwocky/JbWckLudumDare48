/// @description Insert description here
if(keyboard_check_pressed(global.key_pause)){
	global.paused = !global.paused;	
	if(global.game_started){
			global.showing_menu = !global.showing_menu;
			with(global.menu){
					if(global.showing_menu){
						show_menu();
					}else{
						hide_menu();
					}
				}
		}

}

if(keyboard_check_pressed(global.key_exit)){
	game_end();
}


if(keyboard_check_pressed(global.key_restart)){
	game_restart();
}

if(dark_wizard_timer -- <= 0){
	dark_wizard_timer = FRAME_RATE;
	scr_spawn_dark_wizard();
	dark_wizard_limit += 0.005;
}

if(room == Room_tutorial)&&(instance_number(obj_tutorial_goblin) < 1){
	room_goto(Room_game);
		if(instance_exists(obj_gui_parent)){
		with(obj_gui_parent){
			instance_destroy();
		}
	}
}