/// @description Insert description here

// Inherit the parent event
event_inherited();


sprite_idle = spr_goblin_philosopher;
sprite_picked_up = spr_goblin_phil_pickedup;

idle_script = scr_goblin_phil_state_idle;
picked_up_script = scr_goblin_phil_state_picked_up;

state = idle_script;

detection_range = 96; 

breakpoints = 0;

pickup_sound = snd_yelp;