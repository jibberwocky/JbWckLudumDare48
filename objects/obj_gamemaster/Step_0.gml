/// @description Insert description here
if(keyboard_check_pressed(global.key_pause)){
	global.paused = !global.paused;
}

if(keyboard_check_pressed(global.key_exit)){
	game_end();
}


if(keyboard_check_pressed(global.key_restart)){
	game_restart();
}