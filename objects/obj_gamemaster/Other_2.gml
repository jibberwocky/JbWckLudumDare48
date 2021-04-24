/// @description setup globals
global.paused = false;
global.key_pause = ord("p");
global.key_exit = vk_escape;
global.key_restart = ord("r");

//create a single global camrea object
global.camera = instance_create_layer(0,0,"System",obj_camera);
global.collision_map = -1;
room_goto(Room_game);

global.picked_up_object = -1;