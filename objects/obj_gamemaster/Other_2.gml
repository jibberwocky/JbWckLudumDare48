/// @description setup globals
global.paused = true;
global.game_started = false;
global.key_pause = vk_escape;
global.key_exit = vk_end;
global.key_restart = ord("R");

//create a single global camrea object
global.camera = instance_create_layer(0,0,"System",obj_camera);
global.collision_map = -1;
room_goto(Room_main_menu);

global.showing_menu = true;
global.menu = instance_create_layer(0,0,"System",obj_menu);

global.picked_up_object = -1;

global.textSpeed = 4;

