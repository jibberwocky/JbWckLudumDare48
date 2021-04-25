/// @description Insert description here
progress = 0;
progress_max = 100;
breakpoints = -1;

philosopher = -1;
subject = -1;

choices = -1;

hit_breakpoint = false;

bubble_one_frame = 0;
bubble_two_frame = 0;
bubble_offset = -(TILE_SIZE*0.75);
icon_offset_y = -TILE_SIZE*1.2;
icon_offset_x = 5;

bubble_one_option = -1;
bubble_two_option = -1;

next_breakpoint = 0;

big_bubble_frame = 0;

option_pos = [];
for(var i  = 0; i <= 3; i++){
	array_push(option_pos, new Vector(6+(11*i),-(TILE_SIZE+6)));
	option_icon = [1];
}
option_icon = [-1,-1,-1];

scr_play_sound(snd_chatter);